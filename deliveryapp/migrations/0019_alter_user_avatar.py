# Generated by Django 3.2.8 on 2021-11-08 18:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0018_auto_20211108_2322'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='avatar',
            field=models.ImageField(upload_to='static/avatar/%Y/%m'),
        ),
    ]
