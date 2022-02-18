from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.shortcuts import render, redirect

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
    data_all = Player.objects.all()[:3]
    in_auction = Player_Owner.objects.all()
    in_auction = Player.objects.filter(id__in=in_auction).filter(active=True)[:1]
    print(request.user)
    return render(request, 'index.html',
                  {'username': request.user.get_full_name(), 'Players': data_all, 'active': in_auction})


def api_bid(request, id):
    print(request.user)
    if not request.user.is_authenticated:
        return JsonResponse({"Status": "Please login to take part in auction", "code": 201})
    player = Player.objects.filter(id=id)
    print(player,request.user)
    us = User.objects.filter(username=request.user)
    user = User_Data.objects.filter(username__in=us)
    print(user)
    if request.method == 'POST':
        if not player[0].active:    
            return JsonResponse({"Status": "Sorry, the player is not currently available for bidding", "code": 404})
        elif player[0].current_price != int(request.POST['value']):
            return JsonResponse({"Status": "Someone Already have bidden on the price you have bidden.", "code": 404})
        elif int(user[0].money) < int(player[0].current_price):
            return JsonResponse({"Status": "Failed, Not enough currency left", "code": 404})
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
            bid.timer = timing['bid_time']
            return JsonResponse({"code": 200, "Status": "Success"})


@login_required(login_url='/login/')
def single(request, id):
    player = Player.objects.filter(id=id)
    curr_user = Player_Owner.objects.filter(player_id__in=player)
    user_data = User_Data.objects.filter(id__in=curr_user)
    username = User.objects.filter(pk__in=user_data)
    owner = Player_Owner.objects.filter(player_id__in=player)
    print(owner)
    if len(owner) == 0:
        owner = ""
    else:
        owner = owner[0].user_id.username
    if len(username) == 0:
        username = False
    else:
        username = username[0].username
    return render(request, 'single_player.html',
                  {"player": player, "user": username,
                   "purchase": owner})


@login_required(login_url='/login/')
def user(request):
    user_info = User.objects.filter(username=request.user)
    us = User_Data.objects.filter(username__in=user_info)
    owned = Player_Owner.objects.raw("select * from public.user_info_player_owner JOIN public.user_info_player on public.user_info_player_owner.player_id_id = public.user_info_player.id where user_id_id = '%s'", [us[0].id])
    return render(request, 'user.html', {'user': us, 'Player': owned, })


def skill(request, tag):
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
