# Generated by Django 4.0.2 on 2022-02-17 17:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user_info', '0006_alter_player_owner_player_id_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user_data',
            name='money',
            field=models.IntegerField(default=1000000000),
        ),
    ]
