from atexit import register
from django.urls import path, include
from django.conf.urls.static import static
from . import views

urlpatterns = [
    path('login/', views.login_user),
    path('logout/', views.logout_user),
    path('signup/', views.register_user),
    path('', views.index),
    path('player/<int:id>/', views.single)
]
