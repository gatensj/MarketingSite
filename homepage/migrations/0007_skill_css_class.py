# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-11-09 01:26
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0006_skill'),
    ]

    operations = [
        migrations.AddField(
            model_name='skill',
            name='css_class',
            field=models.CharField(blank=True, max_length=50),
        ),
    ]