from django.conf.urls import url
from . import views
from .feeds import LatestPostsFeed
from django.conf import settings
from django.conf.urls.static import static

# from . import forms


urlpatterns = [
    url(r'^$', views.post_list, name='post_list'),
    url(r'^tag/(?P<tag_slug>[-\w]+)/$', views.post_list, name='post_list_by_tag'),
    url(r'^new/$', views.PostListView.as_view(), name='post_list'),
    url(r'^(?P<year>\d{4})/(?P<month>\d{2})/(?P<day>\d{2})/(?P<post>[-\w]+)/$', views.post_detail, name='post_detail'),
    url(r'^(?P<post_id>\d+)/share/$', views.post_share, name='post_share'),
    url(r'^feed/$', LatestPostsFeed(), name='post_feed'),
    url(r'^search/$', views.post_search, name='post_search'),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
