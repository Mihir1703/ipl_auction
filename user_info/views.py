from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required

# Create your views here.


def login_user(request):
    if request.method == 'POST':
        print(request.POST)
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


@login_required()
def logout_user(request):
    logout(request)
    return redirect('/user/login')


def register_user(request):
    if request.method == 'POST':
        fname = request.POST['first_name']
        email = request.POST['email']
        username = request.POST['username']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        if password1 != password2:
            return render(request, 'signup.html', {
                "message": "Passwords Do not match"
            })
        else:
            try:
                user = User.objects.create_user(
                    username=username, password=password1, email=email, first_name=fname)
                user.save()
                return redirect('/')
            except:
                return render(request, 'signup.html', {
                    "message": "Username already taken"
                })
    else:
        return render(request, 'signup.html')
