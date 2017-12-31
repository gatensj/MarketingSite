from django.shortcuts import render, get_object_or_404
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.views.generic import ListView
from django.core.mail import send_mail
from .models import Post, Comment
from taggit.models import Tag
from django.db.models import Count
from .forms import EmailPostForm, CommentForm, SearchForm
from haystack.query import SearchQuerySet
from cms.models import Page
from homepage.models import About, Marquee, Services, Team, Skill, Testimonial, Partner, Title, WhatWeDo, HowWeDo
from photologue.models import Gallery, Photo
from mysite.settings import MEDIA_URL


def post_list(request, tag_slug=None):
    object_list = Post.objects.all()
    tag = None
    page_list = Page.objects.all()
    marquee = Marquee.objects.get(active='True')
    services = Services.objects.all().filter(active='True').order_by('-release_date')[:3]
    abouts = About.objects.all().filter(active='True')[:1]
    teams = Team.objects.all().filter(active='True').order_by('-release_date')[:4]
    gallerys = Gallery.objects.on_site().is_public()[:1]
    skill_title = Skill.objects.get(css_class='logo')
    skills = Skill.objects.all().filter(active='True').exclude(css_class='logo').order_by('-release_date')[:9]
    testimonials = Testimonial.objects.all().filter(active='True').order_by('-release_date')
    partners = Partner.objects.all().filter(active='True').order_by('-release_date')[:4]
    titles = Title.objects.all().filter(active='True').order_by('-section_number')
    whatwedos = WhatWeDo.objects.get(active='True')
    howwedos = HowWeDo.objects.all().filter(active='True').order_by('-release_date')[:4]
    media_url = MEDIA_URL

    if tag_slug:
        tag = get_object_or_404(Tag, slug=tag_slug)
        object_list = object_list.filter(tags__in=[tag])

    paginator = Paginator(object_list, 3)
    page = request.GET.get('page')
    try:
        posts = paginator.page(page)
    except PageNotAnInteger:
        # If page is not an integer deliver the first page
        posts = paginator.page(1)
    except EmptyPage:
        # If page is out of range deliver last page of results
        posts = paginator.page(paginator.num_pages)
    return render(request, 'blog/post/list.html', {'page': page, 'posts': posts, 'tag': tag, 'page_list': page_list, 'marquee': marquee, 'services': services, 'abouts': abouts, 'teams': teams, 'gallerys': gallerys, 'skills': skills, 'skill_title': skill_title, 'testimonials': testimonials, 'partners': partners, 'titles': titles, 'whatwedos': whatwedos, 'howwedos': howwedos, 'media_url': media_url,})


class PostListView(ListView):
    queryset = Post.objects.all()
    # queryset = Post.published.all()
    template_name = 'blog/post/list.html'
    context_object_name = 'posts'
    paginate_by = 3

    def get_context_data(self, **kwargs):
        # Call the base implementation first to get a context
        c = super(PostListView, self).get_context_data(**kwargs)
        # add the request to the context
        c.update({'request': self.request})
        # print(c)
        return c
        queryset = Post.objects.all()
        paginator = Paginator(queryset, 3)
        page = c.GET.get('page')

        try:
            posts = paginator.page(page)
        except PageNotAnInteger:
            # If page is not an integer deliver the first page
            posts = paginator.page(1)
        except EmptyPage:
            # If page is out of range deliver last page of results
            posts = paginator.page(paginator.num_pages)
        return render(c, 'blog/post/list.html', {'page': page, 'posts': posts})

def post_detail(request, year, month, day, post):
    post = get_object_or_404(Post, slug=post, publish__year=year, publish__month=month, publish__day=day)
    media_url = MEDIA_URL

    # List of active comments for this post
    comments = post.comments.filter(active=True)
    if request.method == 'POST':
        # A comment was posted
        comment_form = CommentForm(data=request.POST)

        if comment_form.is_valid():
            # Create Comment object but don't save to database yet
            new_comment = comment_form.save(commit=False)
            # Assign the current post to the comment linking via the foreign key
            new_comment.post = post
            # Save the comment to the database
            new_comment.save()
    else:
        comment_form = CommentForm()

    post_tags_ids = post.tags.values_list('id', flat=True)
    similar_posts = Post.published.filter(tags__in=post_tags_ids).exclude(id=post.id)
    similar_posts = similar_posts.annotate(same_tags=Count('tags')).order_by('-same_tags', '-publish')[:4]

    return render(request, 'blog/post/detail.html', {'post': post, 'comments': comments, 'comment_form': comment_form, 'similar_posts': similar_posts, 'media_url': media_url,})


def post_share(request, post_id):
    # Retrieve post by id
    # post = get_object_or_404(Post, id=post_id, status='published')
    post = get_object_or_404(Post, id=post_id)
    sent = False

    if request.method == 'POST':
        # Form was submitted
        form = EmailPostForm(request.POST)
        if form.is_valid():
            # Form fields passed validation
            cd = form.cleaned_data
            post_url = request.build_absolute_uri(post.get_absolute_url())
            subject = '{} ({}) recommends you reading "{}"'.format(cd['name'], cd['email'], post.title)
            message = 'Read "{}" at {}\n\n{}\'s comments: {}'.format(post.title, post_url, cd['name'], cd['comments'])
            send_mail(subject, message, 'admin@myblog.com', [cd['to']])
            sent = True
    else:
        form = EmailPostForm()
    return render(request, 'blog/post/share.html', {'post': post, 'form': form, 'sent': sent})


def post_search(request):
    form = SearchForm()
    if 'query' in request.GET:
        form = SearchForm(request.GET)
        if form.is_valid():
            cd = form.cleaned_data
            # results = SearchQuerySet().models(Post).filter(content=cd['query']).load()
            results = SearchQuerySet().models(Post).filter(content=cd['query'])
            # count total results
            total_results = results.count()
        return render(request, 'blog/post/search.html', {'form': form, 'cd': cd, 'results': results, 'total_results': total_results})

    return render(request, 'blog/post/search.html', {'form': form, })
