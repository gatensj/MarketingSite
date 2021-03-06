# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-11-25 23:02
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0013_auto_20171118_0004'),
    ]

    operations = [
        migrations.CreateModel(
            name='WhatWeDo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('whatwedo_body', models.TextField(default='Sample short description')),
                ('release_date', models.DateField(blank=True, default=django.utils.timezone.now)),
                ('active', models.BooleanField(default=True)),
            ],
            options={
                'ordering': ('-whatwedo_body',),
            },
        ),
    ]
