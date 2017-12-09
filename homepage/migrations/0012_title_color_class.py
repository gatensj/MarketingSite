# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-11-18 00:03
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0011_title'),
    ]

    operations = [
        migrations.AddField(
            model_name='title',
            name='color_class',
            field=models.CharField(choices=[('BK', 'blackTxt'), ('WT', 'whiteTxt')], default='blackTxt', max_length=8),
        ),
    ]