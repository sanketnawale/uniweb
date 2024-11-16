from django.shortcuts import render
from .models import Subject
from .models import Document
from django.shortcuts import render, get_object_or_404
from .models import Subject
from django.conf import settings 
def subject_list(request):
    subjects = Subject.objects.all()
    return render(request, 'subject_list.html', {'subjects': subjects})

def subject_detail(request, subject_id):
    subject = get_object_or_404(Subject, id=subject_id)
    documents = subject.documents.all()  # Retrieve related documents
    return render(request, 'subject_detail.html', {
        'subject': subject,
        'documents': documents,
        'MEDIA_URL': settings.MEDIA_URL  # Pass MEDIA_URL to template
    })
def document_list(request):
    documents = Document.objects.all()
    return render(request, 'document_list.html', {'documents': documents})