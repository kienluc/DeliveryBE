# Generated by Django 3.2.8 on 2021-11-08 18:50

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0020_auto_20211109_0140'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='choice',
            field=models.PositiveIntegerField(default=0, null=True, validators=[django.core.validators.MaxValueValidator(limit_value=2, message='Chọn 2 nếu bạn là shipper'), django.core.validators.MinValueValidator(limit_value=1, message='Chọn 1 nếu bạn là khách hàng')]),
        ),
    ]