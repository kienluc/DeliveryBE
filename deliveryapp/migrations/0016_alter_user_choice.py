# Generated by Django 3.2.8 on 2021-11-06 06:39

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0015_alter_user_choice'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='choice',
            field=models.PositiveIntegerField(default=0, validators=[django.core.validators.MaxValueValidator(limit_value=2, message='Chọn nếu bạn là shipper'), django.core.validators.MinValueValidator(limit_value=1, message='Chọn nếu bạn là khách hàng')]),
        ),
    ]
