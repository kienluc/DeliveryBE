# Generated by Django 3.2.8 on 2021-11-06 08:59

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0016_alter_user_choice'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='choice',
            field=models.PositiveIntegerField(default=0, validators=[django.core.validators.MaxValueValidator(limit_value=2, message='Chọn 2 nếu bạn là shipper'), django.core.validators.MinValueValidator(limit_value=1, message='Chọn 1 nếu bạn là khách hàng')]),
        ),
    ]
