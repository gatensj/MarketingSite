# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-07-02 18:53
from __future__ import unicode_literals

from django.db import migrations, models
import redactor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0006_remove_post_content'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='post',
            name='short_text',
        ),
        migrations.AddField(
            model_name='post',
            name='short_description',
            field=models.TextField(default='Sample short description'),
        ),
        migrations.AlterField(
            model_name='post',
            name='body',
            field=redactor.fields.RedactorField(),
        ),
    ]
