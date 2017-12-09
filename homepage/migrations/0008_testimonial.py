# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-11-09 01:36
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0007_skill_css_class'),
    ]

    operations = [
        migrations.CreateModel(
            name='Testimonial',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
                ('title', models.CharField(max_length=250)),
                ('image', models.FileField(blank=True, null=True, upload_to='')),
                ('testimonial_text', models.TextField(default='Sample short description')),
                ('release_date', models.DateField(blank=True, default=django.utils.timezone.now)),
                ('active', models.BooleanField(default=True)),
            ],
            options={
                'ordering': ('-release_date',),
            },
        ),
    ]