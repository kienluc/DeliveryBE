# Generated by Django 3.2.8 on 2021-11-10 12:33

import deliveryapp.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0029_alter_user_phone'),
    ]

    operations = [
        migrations.AlterField(
            model_name='shipper',
            name='id_number',
            field=models.CharField(max_length=12, unique=True, validators=[deliveryapp.models.validate_id]),
        ),
    ]
