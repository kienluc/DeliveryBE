# Generated by Django 3.2.8 on 2021-11-01 08:31

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0006_orderpost_pickup_address'),
    ]

    operations = [
        migrations.AlterField(
            model_name='auction',
            name='shipper',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='auctions', to=settings.AUTH_USER_MODEL),
        ),
    ]
