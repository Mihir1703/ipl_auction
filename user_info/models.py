import json

from django.db import models
import datetime
import os
from django.contrib.auth.models import User
from channels.layers import get_channel_layer
from asgiref.sync import async_to_sync

YEAR_CHOICES = [(r, r) for r in range(1984, datetime.date.today().year + 1)]


def current_year():
    return datetime.date.today().year


batting_style_option = (
    ('Right Handed Batsman', 'Right Handed Batsman'),
    ('Left Handed Batsman', 'Left Handed Batsman')
)

types_of_player = (
    ('Batsman', 'Batsman'),
    ('Bowler', 'Bowler'),
    ('Wicket Keeper', 'Wicket Keeper'),
    ('All Rounder', 'All Rounder')
)


class Player(models.Model):
    id = models.AutoField(primary_key=True)
    base_price = models.IntegerField(default=0)
    batting_style = models.CharField(
        max_length=100, default="", choices=batting_style_option)
    country = models.CharField(max_length=20, default="India")
    current_price = models.IntegerField(default=0)
    debut_year = models.IntegerField(
        choices=YEAR_CHOICES, default=current_year)
    profile = models.TextField(null=True)
    name = models.CharField(max_length=50, default=None)
    odi_ranking = models.IntegerField(default=0, unique=True)
    player_img = models.ImageField(upload_to='players/')
    type = models.CharField(max_length=50, choices=types_of_player, default="")
    t20_ranking = models.IntegerField(default=0, unique=True)
    test_ranking = models.IntegerField(default=0, unique=True)
    active = models.BooleanField(default=True)

    def save(self, *args, **kwargs):
        super(Player, self).save(*args, **kwargs)
        if len(Ipl_stat.objects.filter(id=self)) != 0:
            return
        Ipl_stat.objects.create(id=self)
        Odi_stat.objects.create(id=self)
        T20_stat.objects.create(id=self)
        Test_stat.objects.create(id=self)

    def __str__(self):
        return self.name


class User_Data(models.Model):
    id = models.AutoField(primary_key=True)
    username = models.ForeignKey(User, on_delete=models.CASCADE, null=False)
    status = models.BooleanField(default=True)
    money = models.IntegerField(default=5000000)

    def __str__(self):
        return self.username.username


class Player_Owner(models.Model):
    id = models.AutoField(primary_key=True)
    player_id = models.OneToOneField(
        Player, on_delete=models.CASCADE, null=False)
    user_id = models.ForeignKey(User_Data, on_delete=models.CASCADE, null=False)
    price = models.IntegerField(default=0)

    def save(self, *args, **kwargs):
        super(Player_Owner, self).save(*args, **kwargs)
        pl = Player_Owner.objects.filter(id=self.id)
        Player.objects.filter(id=pl[0].player_id.id).update(current_price=self.price + 10000)
        player = Player.objects.filter(id=pl[0].player_id.id)[0]
        channel_layer = get_channel_layer()
        data = {
            "curr_price": self.price + 10000,
            "base_price": self.price,
            "user": self.user_id.username.username
        }
        async_to_sync(channel_layer.group_send)(
            'player_%s' % str(player.id), {
                'type': 'send_notification',
                'value': json.dumps(data)
            }
        )


class Ipl_stat(models.Model):
    id = models.OneToOneField(
        Player, on_delete=models.CASCADE, primary_key=True)
    ipl_3w = models.IntegerField(default=0)
    ipl_balls = models.IntegerField(default=0)
    ipl_ducks = models.IntegerField(default=0)
    ipl_economy = models.IntegerField(default=0)
    ipl_fours = models.IntegerField(default=0)
    ipl_six = models.IntegerField(default=0)
    ipl_runs = models.IntegerField(default=0)
    ipl_matches = models.IntegerField(default=0)
    ipl_wickets = models.IntegerField(default=0)

    def __str__(self):
        return self.id.name


class Odi_stat(models.Model):
    id = models.OneToOneField(
        Player, on_delete=models.CASCADE, primary_key=True)
    odi_5w = models.IntegerField(default=0)
    odi_balls = models.IntegerField(default=0)
    odi_ducks = models.IntegerField(default=0)
    odi_economy = models.IntegerField(default=0)
    odi_fours = models.IntegerField(default=0)
    odi_six = models.IntegerField(default=0)
    odi_runs = models.IntegerField(default=0)
    odi_matches = models.IntegerField(default=0)
    odi_wickets = models.IntegerField(default=0)

    def __str__(self):
        return self.id.name


class T20_stat(models.Model):
    id = models.OneToOneField(
        Player, on_delete=models.CASCADE, primary_key=True)
    t20_3w = models.IntegerField(default=0)
    t20_balls = models.IntegerField(default=0)
    t20_ducks = models.IntegerField(default=0)
    t20_economy = models.IntegerField(default=0)
    t20_fours = models.IntegerField(default=0)
    t20_six = models.IntegerField(default=0)
    t20_runs = models.IntegerField(default=0)
    t20_matches = models.IntegerField(default=0)
    t20_wickets = models.IntegerField(default=0)

    def __str__(self):
        return self.id.name


class Test_stat(models.Model):
    id = models.ForeignKey(Player, on_delete=models.CASCADE, primary_key=True)
    test_5w = models.IntegerField(default=0)
    test_balls = models.IntegerField(default=0)
    test_ducks = models.IntegerField(default=0)
    test_economy = models.IntegerField(default=0)
    test_fours = models.IntegerField(default=0)
    test_six = models.IntegerField(default=0)
    test_runs = models.IntegerField(default=0)
    test_matches = models.IntegerField(default=0)
    test_wickets = models.IntegerField(default=0)

    def __str__(self):
        return self.id.name
