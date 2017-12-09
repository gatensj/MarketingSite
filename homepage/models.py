from django.db import models
from django.utils import timezone
from wagtail.wagtailcore.fields import RichTextField


class Marquee(models.Model):
    welcome_text = models.CharField(max_length=250)
    headline_text = models.TextField(default="Sample short description")
    button_text = models.CharField(max_length=50)
    button_link = models.CharField(max_length=150)
    image = models.FileField(null=True, blank=True)
    release_date = models.DateField(default=timezone.now, blank=True)
    active = models.BooleanField(default=True)
    color = models.CharField(default="FFFFFF", blank=True, max_length=10)

    class Meta:
        ordering = ('-release_date',)


class About(models.Model):
    about_headline_text = models.CharField(max_length=250)
    about_body = RichTextField()
    image = models.FileField(null=True, blank=True)
    release_date = models.DateField(default=timezone.now, blank=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('-about_headline_text',)


class Services(models.Model):
    services_headline_text = models.CharField(max_length=250)
    services_body = models.TextField(default="Sample short description")
    glyph_icon = models.CharField(max_length=250, default="glyphicon glyphicon-heart")
    release_date = models.DateField(default=timezone.now, blank=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('-services_headline_text',)


class Team(models.Model):
    name = models.CharField(max_length=250)
    person_title = models.CharField(max_length=250)
    bio = models.TextField(default="Sample short description")
    image = models.FileField(null=True, blank=True)
    read_more_link_txt = models.CharField(max_length=100, default="Read More")
    release_date = models.DateField(default=timezone.now, blank=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('-name',)


class Skill(models.Model):
    name = models.CharField(max_length=250)
    link = models.CharField(max_length=250, blank=True)
    css_class = models.CharField(max_length=50, blank=True)
    release_date = models.DateField(default=timezone.now, blank=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('-release_date',)


class Testimonial(models.Model):
    name = models.CharField(max_length=250)
    title = models.CharField(max_length=250)
    image = models.FileField(null=True, blank=True)
    testimonial_text = models.TextField(default="Sample short description")
    release_date = models.DateField(default=timezone.now, blank=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('-release_date',)


class Partner(models.Model):
    name = models.CharField(max_length=250)
    image = models.FileField(null=False, blank=False)
    link = models.CharField(max_length=250, default="www.marketingbye.com")
    link_txt = models.CharField(max_length=100, default="Learn More")
    release_date = models.DateField(default=timezone.now, blank=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('-name',)


class Title(models.Model):
    BLACK = 'blackTxt'
    WHITE = 'whiteTxt'

    COLOR_CHOICES = (
        (BLACK, 'blackTxt'),
        (WHITE, 'whiteTxt'),
    )

    name = models.CharField(max_length=250)
    section_number = models.PositiveIntegerField(blank=True, unique=True)
    color_class = models.CharField(max_length=8, choices=COLOR_CHOICES, default="blackTxt")
    release_date = models.DateField(default=timezone.now, blank=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('-name',)

class WhatWeDo(models.Model):
    whatwedo_body = models.TextField(default="Sample short description")
    release_date = models.DateField(default=timezone.now, blank=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('-whatwedo_body',)


class HowWeDo(models.Model):
    title = models.CharField(max_length=250)
    image = models.FileField(null=True, blank=True)
    description = models.TextField(default="Sample short description")
    release_date = models.DateField(default=timezone.now, blank=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('-release_date',)
