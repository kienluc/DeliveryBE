# Generated by Django 3.2.8 on 2021-10-27 08:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='pickup_address',
            field=models.CharField(blank=True, max_length=250, null=True),
        ),
    ]
