import json
from django.db import models
import datetime
from django.contrib.auth.models import User
from django.contrib.sessions.models import Session
from channels.layers import get_channel_layer
from asgiref.sync import async_to_sync
import time
import threading

timing = {
    "bid_time": 20,
    "cool_time": 15,
    "notify_time": 30
}


class Bidder(threading.Thread):
    timer = timing['bid_time']
    player_id = 0
    state = False
    on_bid = False

    def __int__(self):
        threading.Thread.__init__(self)

    def rest_timeout(self):
        while self.timer != 0:
            time.sleep(1)
            self.timer = self.timer - 1
            print(self.timer)
        self.on_bid = True
        self.timer = timing['bid_time']

    def process(self):
        channel_layer = get_channel_layer()
        data = {"is_active": True, "message": f"Get Ready!! {Player.objects.filter(id=self.player_id)[0].name} will "
                                              f"be auction in 30 seconds.", 'player_id': self.player_id}
        async_to_sync(channel_layer.group_send)('Bidding_grp',
                                                {'type': 'update', 'value': json.dumps(data)})
        time.sleep(timing['notify_time'])
        data = {"is_active": True, "message": f"Get Ready!! {Player.objects.filter(id=self.player_id)[0].name} is "
                                              f"under auction", 'player_id': self.player_id}
        async_to_sync(channel_layer.group_send)('Bidding_grp',
                                                {'type': 'update', 'value': json.dumps(data)})
        Player.objects.filter(id=self.player_id).update(active=True)
        while self.timer != 0:
            time.sleep(1)
            self.timer = self.timer - 1
            print(self.timer)
        Player.objects.filter(id=self.player_id).update(active=False)
        owner = Player_Owner.objects.filter(player_id__in=Player.objects.filter(id=self.player_id))
        if len(owner) != 0:
            inbuilt_user = User.objects.filter(username=owner[0].user_id.username)
            purchase = User_Data.objects.get(username__in=inbuilt_user)
            purchase.money = purchase.money - owner[0].price
            purchase.save(update_fields=['money'])
        else:
            pass
        data = {"is_active": False, "message": f"Cool Down!! {Player.objects.filter(id=self.player_id)[0].name} has "
                                               f"been sold out to {'Nobody' if len(owner) == 0 else owner[0].user_id.username}, next auction after 15 seconds",
                'player_id': Player.objects.filter(id=self.player_id)[0].id}
        if len(owner) == 0:
            Done.objects.create(player_id=Player.objects.filter(id=self.player_id)[0])
        async_to_sync(channel_layer.group_send)('Bidding_grp',
                                                {'type': 'update', 'value': json.dumps(data)})
        self.timer = timing['notify_time']
        self.on_bid = False
        self.player_id = 0

    def run(self):
        players = Player.objects.all().order_by('id')
        for player in players:
            print(player)
            if len(Player_Owner.objects.filter(player_id__in=Player.objects.filter(id=player.id))) != 0 or len(Done.objects.filter(player_id__in=Player.objects.filter(id=player.id))) != 0:
                continue
            self.on_bid = True
            self.player_id = player.id
            print("Bidding start", player.id)
            self.process()
            Player.objects.filter(id=player.id).update(active=False)
            print("Time out")
            self.rest_timeout()

bid = Bidder()

YEAR_CHOICES = [(r, r) for r in range(1984, datetime.date.today().year + 1)]


def current_year():
    return datetime.date.today().year


batting_style_option = (
    ('Right Handed Batsman', 'Right Handed Batsman'), ('Left Handed Batsman', 'Left Handed Batsman'))

types_of_player = (
    ('Batsman', 'Batsman'), ('Bowler', 'Bowler'), ('Wicket Keeper', 'Wicket Keeper'), ('All Rounder', 'All Rounder'))


class Player(models.Model):
    id = models.AutoField(primary_key=True)
    base_price = models.IntegerField(default=0)
    batting_style = models.CharField(max_length=100, default="", choices=batting_style_option)
    country = models.CharField(max_length=20, default="India")
    current_price = models.IntegerField(default=0)
    debut_year = models.IntegerField(choices=YEAR_CHOICES, default=current_year)
    profile = models.TextField(null=True)
    name = models.CharField(max_length=50, default=None)
    player_img = models.TextField(null=True)
    type = models.CharField(max_length=50, choices=types_of_player, default="")
    active = models.BooleanField(default=False)

    def save(self, *args, **kwargs):
        super(Player, self).save(*args, **kwargs)

    def __str__(self):
        return self.name


class User_Data(models.Model):
    id = models.AutoField(primary_key=True)
    username = models.OneToOneField(User, on_delete=models.CASCADE, null=False)
    status = models.BooleanField(default=True)
    money = models.IntegerField(default=1000000000)

    def __str__(self):
        return self.username.username


class Player_Owner(models.Model):
    id = models.AutoField(primary_key=True)
    player_id = models.OneToOneField(Player, on_delete=models.CASCADE, null=True)
    user_id = models.ForeignKey(User_Data, on_delete=models.CASCADE)
    price = models.IntegerField(default=0)

    def save(self, *args, **kwargs):
        super(Player_Owner, self).save(*args, **kwargs)
        pl = Player_Owner.objects.filter(id=self.id)
        increment = 500000
        if 10000000 <= self.price < 40000000:
            increment = 2000000
        elif 40000000 < self.price:
            increment = 2500000
        Player.objects.filter(id=pl[0].player_id.id).update(current_price=self.price + increment)
        player = Player.objects.filter(id=pl[0].player_id.id)[0]
        channel_layer = get_channel_layer()
        data = {"curr_price": self.price + increment, "base_price": self.price, "user": self.user_id.username.username}
        async_to_sync(channel_layer.group_send)('player_%s' % str(player.id),
                                                {'type': 'send_notification', 'value': json.dumps(data)})



class Start_Bidding(models.Model):
    bid = models.BooleanField(default=False)
    def save(self, *args, **kwargs):
        try:
            if self.bid:
                bid.start()
                print("Bidding started")
                bid.state = True
        except Exception as e:
            print(e)
        super(Start_Bidding, self).save()


class LoggedInUser(models.Model):
    user = models.OneToOneField(User, related_name='logged_in_user',on_delete=models.CASCADE)
    session_key = models.CharField(max_length=32, null=True, blank=True)

    def __str__(self):
        return self.user.username

class Done(models.Model):
    player_id = models.OneToOneField(Player, on_delete=models.CASCADE)