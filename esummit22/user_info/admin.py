from ipl_auction.admin import admin_site
from .models import *
# Register your models here.
admin_site.register(User_Data)
admin_site.register(Player_Owner)
admin_site.register(Player)
admin_site.register(Ipl_stat)
admin_site.register(Odi_stat)
admin_site.register(Test_stat)
admin_site.register(T20_stat)
admin_site.register(Start_Bidding)