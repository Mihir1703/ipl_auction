from ipl_auction.admin import admin_site
from .models import *
# Register your models here.
admin_site.register(User_Data)
admin_site.register(Player_Owner)
admin_site.register(Player)
admin_site.register(Start_Bidding)
admin_site.register(User)
admin_site.register(Done)