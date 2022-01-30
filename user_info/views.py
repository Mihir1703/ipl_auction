from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.http import JsonResponse

from .models import *


# Create your views here.


def login_user(request):
    if request.method == 'POST':
        username = request.POST['email']
        password = request.POST['pass']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('/')
        else:
            messages = "Try again with correct credentials"
            return render(request, "signin.html", {"message": messages})
    else:
        return render(request, 'signin.html')


@login_required(login_url='/login/')
def logout_user(request):
    logout(request)
    return redirect('/login')


def register_user(request):
    if request.method == 'POST':
        fname = request.POST['first_name']
        email = request.POST['email']
        username = request.POST['username']
        password1 = request.POST['password1']
        try:
            user = User.objects.create_user(username=username, password=password1, email=email, first_name=fname,
                                            last_name="")
            user.save()
            User_Data.objects.create(username=user).save()
            return redirect('/')
        except:
            return render(request, 'signup.html', {"message": "Username already taken"})
    else:
        return render(request, 'signup.html')


@login_required(login_url='/login/')
def index(request):
    data_bat = Player.objects.filter(active=True).filter(type='Batsman').order_by('-t20_ranking')[:3]
    data_bowl = Player.objects.filter(active=True).filter(type='Bowler').order_by('-t20_ranking')[:3]
    data_wc = Player.objects.filter(active=True).filter(type='Wicket Keeper').order_by('-t20_ranking')[:3]
    data_all = Player.objects.filter(active=True).filter(type='All Rounder').order_by('-t20_ranking')[:3]
    in_auction = Player_Owner.objects.all()
    in_auction = Player.objects.filter(id__in=in_auction).filter(active=True)[:1]
    print(request.user)
    return render(request, 'index.html',
                  {'username': request.user.get_full_name(), 'Batsman': data_bat, 'Bowler': data_bowl,
                   'WicketKeeper': data_wc, 'AllRounder': data_all, 'active': in_auction})


def api_bid(request, id):
    player = Player.objects.filter(id=id)
    us = User.objects.filter(username=request.user)
    user = User_Data.objects.filter(username__in=us)
    if request.method == 'POST':
        print(user[0].money, player[0].current_price, user[0].username)
        if player[0].current_price != int(request.POST['value']):
            return JsonResponse({"Status": "Failed", "code": 404}, status=404)
        elif int(user[0].money) < int(player[0].current_price):
            return JsonResponse({"Status": "Failed, Not enough currency left", "code": 404}, status=404)
        else:
            own = Player_Owner.objects.filter(player_id__in=player)
            if len(own) == 0:
                new_user = Player_Owner.objects.create(player_id=player[0], user_id=user[0],
                                                       price=int(request.POST['value']))
                new_user.save()
            else:
                prev = User_Data.objects.filter(username__in=User.objects.filter(username=own[0].user_id.username))
                if prev[0].id == user[0].id:
                    return JsonResponse({"Status": "You Already own this player", "code": 404})
                own[0].price = int(request.POST['value'])
                own[0].user_id = user[0]
                own[0].save(update_fields=['price', 'user_id'])
            return JsonResponse({"code": 200, "Status": "Success"})


@login_required(login_url='/login/')
def single(request, id):
    player = Player.objects.filter(id=id)
    us = User.objects.filter(username=request.user)
    ipl = Ipl_stat.objects.filter(id__in=player)
    odi = Odi_stat.objects.filter(id__in=player)
    test = Test_stat.objects.filter(id__in=player)
    t20 = T20_stat.objects.filter(id__in=player)
    curr_user = Player_Owner.objects.filter(player_id__in=player)
    username = User.objects.filter(username__in=curr_user)
    owner = Player_Owner.objects.filter(player_id__in=player)
    if len(owner) == 0:
        owner = ""
    else:
        owner = owner[0].user_id.username
    if len(username) == 0:
        username = False
    else:
        username = username[0].username
    return render(request, 'single_player.html',
                  {"player": player, "ipl": ipl, "odi": odi, "test": test, "t20": t20, "user": username,
                   "purchase": owner})


@login_required(login_url='/login/')
def user(request):
    user_info = User.objects.filter(username=request.user)
    us = User_Data.objects.filter(username__in=user_info)
    owned = Player_Owner.objects.filter(user_id__in=us)
    owned_players = Player.objects.filter(id__in=owned)
    return render(request, 'user.html', {'user': us, 'Player': owned_players, })


def skill(request, tag):
    player = None
    skill_player = None
    if 'bat' in tag:
        player = Player.objects.filter(type='Batsman')
        skill_player = "Batsman"
    elif 'bowl' in tag:
        player = Player.objects.filter(type='Bowler')
        skill_player = "Bowler"
    elif 'all' in tag:
        player = Player.objects.filter(type='All Rounder')
        skill_player = "All Rounder"
    else:
        player = Player.objects.filter(type='Wicket Keeper')
        skill_player = "Wicket Keeper"
    return render(request, 'skill.html', {
        "player": player,
        'skill_type': skill_player
    })
