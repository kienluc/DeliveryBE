# Generated by Django 3.2.8 on 2021-11-10 12:17

import deliveryapp.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0027_auto_20211110_1910'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='first_name',
            field=models.CharField(max_length=30, null=True, validators=[deliveryapp.models.validate_info]),
        ),
        migrations.AlterField(
            model_name='user',
            name='last_name',
            field=models.CharField(max_length=30, null=True, validators=[deliveryapp.models.validate_info]),
        ),
    ]
