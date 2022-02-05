from asgiref.sync import sync_to_async
from channels.generic.websocket import AsyncJsonWebsocketConsumer
from .models import *
import os

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ipl_auction.settings')


class PlayerConsumer(AsyncJsonWebsocketConsumer):
    def __init__(self, *args, **kwargs):
        super().__init__(args, kwargs)
        self.room_group_name = None
        self.room_name = None

    async def connect(self, *args, **kwargs):
        self.room_name = str(self.scope['url_route']['kwargs']['id'])
        self.room_group_name = 'player_%s' % self.room_name
        print(self.room_group_name)
        await self.channel_layer.group_add(
            self.room_group_name, self.channel_name
        )
        await self.accept()

    async def receive(self, text_data=None, bytes_data=None):
        data = json.loads(text_data)
        await self.send(text_data=json.dumps(data))

    async def disconnect(self, code):
        return await super().disconnect(code)

    async def send_notification(self, event):
        data = json.loads(event.get('value'))
        await self.send(text_data=json.dumps(data))


class BiddingSignal(AsyncJsonWebsocketConsumer):
    def __init__(self, *args, **kwargs):
        super().__init__(args, kwargs)
        self.room_name = "Bidding_id"
        self.room_group_name = "Bidding_grp"

    async def connect(self, *args, **kwargs):
        await self.channel_layer.group_add(
            self.room_group_name, self.channel_name
        )
        await self.accept()

    async def receive(self, text_data=None, bytes_data=None):
        data = json.loads(text_data)
        await self.send(text_data=json.dumps(data))

    async def disconnect(self, code):
        return await super().disconnect(code)

    async def update(self, event):
        data = json.loads(event.get('value'))
        await self.send(text_data=json.dumps(data))
