from django.urls import path
from . import views

urlpatterns = [
    path('', views.subject_list, name='subject_list'),  # Existing path for subjects
    path('<int:subject_id>/', views.subject_detail, name='subject_detail'),  # Existing detail view
    #path('documents/', views.document_list, name='document_list'),  # New path for documents
]