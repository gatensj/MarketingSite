# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-07-02 21:03
from __future__ import unicode_literals

from django.db import migrations
import tinymce.models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0011_post_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='content',
            field=tinymce.models.HTMLField(default=''),
        ),
    ]