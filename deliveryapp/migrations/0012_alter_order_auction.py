# Generated by Django 3.2.8 on 2021-11-02 04:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0011_auto_20211102_1059'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='auction',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='deliveryapp.auction'),
        ),
    ]
