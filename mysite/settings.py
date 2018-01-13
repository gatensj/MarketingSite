"""
Django settings for mysite project.

Generated by 'django-admin startproject' using Django 1.11.1.

For more information on this file, see
https://docs.djangoproject.com/en/1.11/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.11/ref/settings/

removed from requirements for local dev
#gunicorn==19.7.1

removed from the proc file for local dev
web: python manage.py runserver 0.0.0.0:$PORT
# SECURITY WARNING: don't run with debug turned on in production! # DEBUG = False
"""

import environ
import os

root = environ.Path(__file__) - 3 # three folder back (/a/b/c/ - 3 = /)
env = environ.Env(DEBUG=(bool, False),) # set default values and casting

SITE_ROOT = root()

if 'ENV' in os.environ and os.environ['ENV'] in ('dev', 'prod'):
    ENVIRONMENT = os.environ['ENV']
else:
    ENVIRONMENT = "dev"

environ.Env.read_env(
    '{0}/mysite/config/settings/{1}.env'.format(
        SITE_ROOT,
        ENVIRONMENT,
    )
)

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


####################################################################################
'''
with open('mysite/secrets/secret_key.txt') as a:
    SECRET_KEY = a.read().strip()

SECRET_KEY = env('SECRET_KEY', default='NOTASECRETKEY')
'''

with open('mysite/secrets/secret_key.txt') as a:
    SECRET_KEY = a.read().strip()
####################################################################################


DEBUG = False

ALLOWED_HOSTS = ['vagrant.wharton.upenn.edu', 'localhost', 'marketingbye.com', 'opoa7vxe2l.execute-api.us-east-1.amazonaws.com']

SITE_ID = 2

PREREQ_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'blog',
    'taggit',
    'django.contrib.sites',
    'django.contrib.sitemaps',
    'tinymce',
    'modelcluster',
    'redactor',
    'homepage',
    'photologue',
    'sortedm2m',
    'storages',
    'zappa_django_utils',
    'wagtail.wagtailcore',
    'wagtail.wagtailadmin',
    'wagtail.wagtaildocs',
    'wagtail.wagtailsnippets',
    'wagtail.wagtailusers',
    'wagtail.wagtailimages',
    'wagtail.wagtailembeds',
    'wagtail.wagtailsearch',
    'wagtail.wagtailsites',
    'wagtail.wagtailredirects',
    'wagtail.wagtailforms',
]

WAGTAIL_CONTRIB_APPS = [
    'wagtailcodeblock',
    'wagtailcontentstream',
    'wagtailemoji',
    'wagtailerrorpages',
    'wagtailfontawesome',
    'wagtailgridder',
    'wagtail.contrib.table_block',
    'wagtail.contrib.modeladmin',
    'wagtail.contrib.settings',
    'wagtailtinymce',
]

PROJECT_APPS = [
    'cms',
    'cms.home',
]

INSTALLED_APPS = PREREQ_APPS + WAGTAIL_CONTRIB_APPS + PROJECT_APPS

MIDDLEWARE_CLASSES = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.PersistentRemoteUserMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'wagtail.wagtailcore.middleware.SiteMiddleware',
    'wagtail.wagtailredirects.middleware.RedirectMiddleware',
]

ROOT_URLCONF = 'mysite.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'mysite.wsgi.application'

WAGTAIL_SITE_NAME = 'MarketingByE'


####################################################################################
#AWS settings
'''
with open('mysite/secrets/aws_region.txt') as b:
    AWS_REGION = b.read().strip()

with open('mysite/secrets/aws_access_key_id.txt') as c:
    AWS_ACCESS_KEY_ID = c.read().strip()

with open('mysite/secrets/aws_secret_access_key.txt') as d:
    AWS_SECRET_ACCESS_KEY = d.read().strip()

# The AWS region to connect to.
AWS_REGION = env('AWS_REGION', default='NOTAWS_REGION')

# The AWS access key to use.
AWS_ACCESS_KEY_ID = env('AWS_ACCESS_KEY_ID', default='NOTAWS_ACCESS_KEY_ID')

# The AWS secret access key to use.
AWS_SECRET_ACCESS_KEY = env('AWS_SECRET_ACCESS_KEY', default='NOTAWS_SECRET_ACCESS_KEY')
'''

with open('mysite/secrets/aws_region.txt') as b:
    AWS_REGION = b.read().strip()

with open('mysite/secrets/aws_access_key_id.txt') as c:
    AWS_ACCESS_KEY_ID = c.read().strip()

with open('mysite/secrets/aws_secret_access_key.txt') as d:
    AWS_SECRET_ACCESS_KEY = d.read().strip()
####################################################################################


AWS_S3_SECURE_URLS = False

AWS_STORAGE_BUCKET_NAME = 'marketingbye122222017'

AWS_S3_CUSTOM_DOMAIN = 'marketingbye122222017.s3-website-us-east-1.amazonaws.com/mysite'

AWS_S3_OBJECT_PARAMETERS = {
    'CacheControl': 'max-age=86400',
}
AWS_LOCATION = '/blog/static'

AWS_S3_FILE_OVERWRITE = False

STATIC_URL = 'http://%s/%s/' % (AWS_S3_CUSTOM_DOMAIN, AWS_LOCATION)

STATIC_ROOT = os.path.join(BASE_DIR, '/blog/static/')

STATICFILES_STORAGE = 'storages.backends.s3boto3.S3Boto3Storage'

STATICFILES_LOCATION = 'blog/static'

MEDIAFILES_LOCATION = 'mysite/uploads'

DEFAULT_FILE_STORAGE = 'mysite.custom_storages.MediaStorage'

MEDIA_URL = "http://marketingbye122222017.s3-website-us-east-1.amazonaws.com/mysite/uploads/"

MEDIA_ROOT = os.path.join(os.path.dirname(BASE_DIR), "uploads")


####################################################################################
'''
with open('mysite/secrets/db_name.txt') as e:
    DB_NAME_HEROKU = e.read().strip()

with open('mysite/secrets/db_user.txt') as f:
    DB_USER_HEROKU = f.read().strip()

with open('mysite/secrets/db_pw.txt') as g:
    DB_PW_HEROKU = g.read().strip()

with open('mysite/secrets/db_host.txt') as h:
    DB_HOST_HEROKU = h.read().strip()

DB_NAME_HEROKU = env('DB_NAME_HEROKU', default='NOTDB_NAME')
DB_USER_HEROKU = env('DB_USER_HEROKU', default='NOTDB_USER')
DB_PW_HEROKU = env('DB_PW_HEROKU', default='NOTDB_PW')
DB_HOST_HEROKU = env('DB_HOST_HEROKU', default='NOTDB_HOST')
'''

with open('mysite/secrets/db_name.txt') as e:
    DB_NAME_HEROKU = e.read().strip()

with open('mysite/secrets/db_user.txt') as f:
    DB_USER_HEROKU = f.read().strip()

with open('mysite/secrets/db_pw.txt') as g:
    DB_PW_HEROKU = g.read().strip()

with open('mysite/secrets/db_host.txt') as h:
    DB_HOST_HEROKU = h.read().strip()
####################################################################################


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': DB_NAME_HEROKU,
        'USER': DB_USER_HEROKU,
        'PASSWORD': DB_PW_HEROKU,
        'HOST': DB_HOST_HEROKU,
        'PORT': '5432',
    }
}


####################################################################################
'''
with open('mysite/secrets/email_host.txt') as i:
    EMAIL_HOST = i.read().strip()

with open('mysite/secrets/email_host_user.txt') as j:
    EMAIL_HOST_USER = j.read().strip()

with open('mysite/secrets/email_pw.txt') as k:
    EMAIL_HOST_PASSWORD = k.read().strip()

EMAIL_HOST = env('EMAIL_HOST', default='NOTEMAIL_HOST')

EMAIL_HOST_USER = env('EMAIL_HOST_USER', default='NOTEMAIL_HOST_USER')

EMAIL_HOST_PASSWORD = env('EMAIL_HOST_PASSWORD', default='NOTEMAIL_HOST_PASSWORD')
'''

with open('mysite/secrets/email_host.txt') as i:
    EMAIL_HOST = i.read().strip()

with open('mysite/secrets/email_host_user.txt') as j:
    EMAIL_HOST_USER = j.read().strip()

with open('mysite/secrets/email_pw.txt') as k:
    EMAIL_HOST_PASSWORD = k.read().strip()
####################################################################################


EMAIL_PORT = 587

EMAIL_USE_TLS = True

AUTH_PASSWORD_VALIDATORS = [
   {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True

TINYMCE_JS_ROOT = os.path.join(STATIC_ROOT, "tiny_mce")

TINYMCE_JS_URL = os.path.join(TINYMCE_JS_ROOT, "tiny_mce.js")

TINYMCE_DEFAULT_CONFIG = {
    'plugins': "table,spellchecker,paste,searchreplace",
    'theme': "advanced",
    'cleanup_on_startup': True,
    'custom_undo_redo_levels': 10,
}

TINYMCE_SPELLCHECKER = True

TINYMCE_COMPRESSOR = True

REDACTOR_OPTIONS = {'lang': 'en'}

REDACTOR_UPLOAD = MEDIA_ROOT

HAYSTACK_CONNECTIONS = {
    'default': {
        'ENGINE': 'haystack.backends.solr_backend.SolrEngine',
        'URL': 'http://vagrant.upenn.edu/solr/blog'
    },
}


# IF DEBUG IS TRUE Setup
if DEBUG is True:
    # For Wharton internal IPs
    INTERNAL_IPS = ('127.0.0.1', '192.168.99.1')

    def show_toolbar(request):
        return True

    DEBUG_TOOLBAR_CONFIG = {
        "SHOW_TOOLBAR_CALLBACK": show_toolbar,
    }

    INSTALLED_APPS += (
        'debug_toolbar',
    )

    MIDDLEWARE_CLASSES += [
        'debug_toolbar.middleware.DebugToolbarMiddleware',
    ]
