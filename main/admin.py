from django.contrib import admin
from .models import User, Ipl_stat, Odi_stat, Test_stat, Player, Player_Owner, T20_stat
# Register your models here.
admin.site.register(User)
admin.site.register(Player_Owner)
admin.site.register(Player)
admin.site.register(Ipl_stat)
admin.site.register(Odi_stat)
admin.site.register(Test_stat)
admin.site.register(T20_stat)
