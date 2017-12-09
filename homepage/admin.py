from django.contrib import admin
from django import forms
from .models import *


class MarqueeAdmin(admin.ModelAdmin):
    list_display = ('welcome_text', 'headline_text', 'button_text', 'button_link', 'image', 'active')
    list_filter = ('welcome_text', 'headline_text', 'button_text')
    search_fields = ('welcome_text', 'headline_text', 'button_text')


class AboutAdmin(admin.ModelAdmin):
    list_display = ('about_headline_text', 'about_body', 'image', 'active')
    list_filter = ('about_headline_text', 'about_body')
    search_fields = ('about_headline_text', 'about_body')


class ServicesAdmin(admin.ModelAdmin):
    list_display = ('services_headline_text', 'services_body', 'glyph_icon', 'active')
    list_filter = ('services_headline_text', 'services_body', 'glyph_icon')
    search_fields = ('services_headline_text', 'services_body', 'glyph_icon')


class TeamAdmin(admin.ModelAdmin):
    list_display = ('name', 'person_title', 'bio', 'image', 'read_more_link_txt', 'active')
    list_filter = ('name', 'person_title', 'bio')
    search_fields = ('name', 'person_title', 'bio')


class SkillAdmin(admin.ModelAdmin):
    list_display = ('name', 'link', 'css_class', 'release_date', 'active')
    list_filter = ('name', 'link', 'css_class', 'release_date', 'active')
    search_fields = ('name', 'link', 'css_class', 'release_date', 'active')


class TestimonialAdmin(admin.ModelAdmin):
    list_display = ('name', 'title', 'image', 'testimonial_text', 'release_date', 'active')
    list_filter = ('name', 'title', 'image', 'testimonial_text', 'release_date', 'active')
    search_fields = ('name', 'title', 'image', 'testimonial_text', 'release_date', 'active')


class PartnerAdmin(admin.ModelAdmin):
    list_display = ('name', 'image', 'link', 'release_date', 'active')
    list_filter = ('name', 'image', 'link', 'release_date', 'active')
    search_fields = ('name', 'image', 'link', 'release_date', 'active')


class TitleAdmin(admin.ModelAdmin):
    list_display = ('section_number', 'name', 'release_date', 'active', 'color_class')
    list_filter = ('section_number', 'name', 'release_date', 'active', 'color_class')
    search_fields = ('section_number', 'name', 'release_date', 'active', 'color_class')
    ordering = ('section_number',)


class WhatWeDoAdmin(admin.ModelAdmin):
    list_display = ('whatwedo_body', 'release_date', 'active')
    list_filter = ('whatwedo_body', 'release_date', 'active')
    search_fields = ('whatwedo_body', 'release_date', 'active')
    ordering = ('whatwedo_body',)


class HowWeDoAdmin(admin.ModelAdmin):
    list_display = ('title', 'image', 'description', 'release_date', 'active')
    list_filter = ('title', 'image', 'description', 'release_date', 'active')
    search_fields = ('title', 'image', 'description', 'release_date', 'active')
    ordering = ('title',)

    class Meta:
        ordering = ('-release_date',)


class TestimonialAdmin(admin.ModelAdmin):
    list_display = ('name', 'title', 'image', 'testimonial_text', 'release_date', 'active')
    list_filter = ('name', 'title', 'image', 'testimonial_text', 'release_date', 'active')
    search_fields = ('name', 'title', 'image', 'testimonial_text', 'release_date', 'active')
    ordering = ('name',)

    class Meta:
        ordering = ('-release_date',)


admin.site.register(Marquee, MarqueeAdmin)
admin.site.register(About, AboutAdmin)
admin.site.register(Services, ServicesAdmin)
admin.site.register(Team, TeamAdmin)
admin.site.register(Skill, SkillAdmin)
admin.site.register(Partner, PartnerAdmin)
admin.site.register(Title, TitleAdmin)
admin.site.register(WhatWeDo, WhatWeDoAdmin)
admin.site.register(HowWeDo, HowWeDoAdmin)
admin.site.register(Testimonial, TestimonialAdmin)