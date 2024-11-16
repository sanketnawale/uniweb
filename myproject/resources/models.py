from django.db import models

class Subject(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField()

class Paper(models.Model):
    subject = models.ForeignKey(Subject, on_delete=models.CASCADE, related_name='papers')
    title = models.CharField(max_length=255)
    year = models.IntegerField()
    file_path = models.CharField(max_length=255)  # Change to FileField if you upload files

class Project(models.Model):
    subject = models.ForeignKey(Subject, on_delete=models.CASCADE, related_name='projects')
    title = models.CharField(max_length=255)
    description = models.TextField()
    file_path = models.CharField(max_length=255)

class Material(models.Model):
    subject = models.ForeignKey(Subject, on_delete=models.CASCADE, related_name='materials')
    title = models.CharField(max_length=255)
    description = models.TextField()
    file_path = models.CharField(max_length=255)

class Document(models.Model):
    default_subject_id = 1  # Replace with the ID of an actual subject
    subject = models.ForeignKey('resources.Subject', on_delete=models.CASCADE, default=default_subject_id, related_name="documents")
    title = models.CharField(max_length=255)
    file_path = models.CharField(max_length=255)

    def __str__(self):
        return self.title
