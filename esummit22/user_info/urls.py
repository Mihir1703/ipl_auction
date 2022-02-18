from django.urls import path
from . import views

urlpatterns = [
    path('login/', views.login_user),
    path('logout/', views.logout_user),
    path('', views.index),
    path('player/<int:id>/', views.single),
    path('player/<str:tag>/', views.skill),
    path('user/', views.user),
    path('bid/<int:id>', views.api_bid)
]
