from django.contrib import admin
from django.urls import path, include
from django.shortcuts import redirect
from resources import views as resources_views  # Import views from resources for direct URLs
from django.conf.urls.static import static
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('subjects/', include('resources.urls')),  # Other resources URLs, excluding documents
    path('documents/', resources_views.document_list, name='document_list'),  # Direct path for documents
    path('', lambda request: redirect('subjects/')),  # Redirect root URL to subjects page
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
