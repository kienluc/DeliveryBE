# Generated by Django 3.2.8 on 2021-10-27 08:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('deliveryapp', '0003_productcategory'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='product_cate',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.PROTECT, to='deliveryapp.productcategory'),
        ),
    ]
