"""
ASGI config for ipl_auction project.

It exposes the ASGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/4.0/howto/deployment/asgi/
"""

import os

from django.core.asgi import get_asgi_application
from django.urls import path
from channels.routing import ProtocolTypeRouter, URLRouter
from user_info.consumers import *

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ipl_auction.settings')

application = get_asgi_application()

pattern_url = [
    path('player/<int:id>', PlayerConsumer.as_asgi())
]

application = ProtocolTypeRouter({
    'websocket': URLRouter(pattern_url)
})
