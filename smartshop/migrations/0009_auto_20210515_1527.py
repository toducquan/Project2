# Generated by Django 3.1.7 on 2021-05-15 08:27

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('smartshop', '0008_auto_20210503_1253'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orderitem',
            name='Customer',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL),
        ),
        migrations.DeleteModel(
            name='Customer',
        ),
    ]
