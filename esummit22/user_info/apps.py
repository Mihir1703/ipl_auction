from django.apps import AppConfig

class UserInfoConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'user_info'

    def ready(self):
        import user_info.signal
        from .models import Player_Owner
        Player_Owner.objects.raw('ALTER TABLE IF EXISTS public.user_info_player_ownerDROP CONSTRAINT user_info_player_owner_user_id_id_key;');
        print('ready')