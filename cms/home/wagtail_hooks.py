import json

from django.templatetags.static import static
from django.utils import translation
from django.utils.html import format_html
from django.utils.safestring import mark_safe
from wagtail.wagtailcore import hooks


@hooks.register('insert_tinymce_js')
def my_plugin_js():
    return format_html(
        """
        <script>
            registerMCEPlugin("myplugin", {}, 'en_US');
        </script>
        """,
        mark_safe(json.dumps(static('js/my-tinymce-plugin.js'))),
    )
