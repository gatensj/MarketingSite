# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-09-03 21:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0004_about_color'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='about',
            name='color',
        ),
        migrations.AddField(
            model_name='marquee',
            name='color',
            field=models.CharField(blank=True, default='FFFFFF', max_length=10),
        ),
    ]
