# Generated by Django 3.2.8 on 2021-11-08 16:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0017_alter_user_choice'),
    ]

    operations = [
        migrations.AddField(
            model_name='orderpost',
            name='customer_received',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='orderpost',
            name='phone',
            field=models.CharField(max_length=10, null=True),
        ),
    ]
