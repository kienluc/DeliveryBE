# Generated by Django 3.2.8 on 2021-11-01 07:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0005_orderdetail'),
    ]

    operations = [
        migrations.AddField(
            model_name='orderpost',
            name='pickup_address',
            field=models.CharField(blank=True, max_length=250),
        ),
    ]
