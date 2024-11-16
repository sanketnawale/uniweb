import os
import django

# Set up Django environment
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "myproject.settings")  # Replace `myproject` with your project name
django.setup()

from resources.models import Subject, Document

# Define repositories and their respective folder names in the media directory
repositories = [
    ("SEO", "SEO"),
    ("Internet And Networking", "Internet-And-Networking"),
    ("Internet Via Satellite", "Internet-Via-Satellite"),
    ("Internet Technology Protocol", "Internet_technology_protocol"),
    ("Digital Communication", "Digital-communication"),
    ("Model Based Software Engineering", "Model-based-software-enggineering"),
]

# Base path where the repositories were cloned
base_path = "media"

for subject_name, folder_name in repositories:
    # Create or retrieve the subject
    subject, created = Subject.objects.get_or_create(
        name=subject_name,
        description=f"{subject_name} Subject Content"
    )

    # Directory path for each repository
    directory_path = os.path.join(base_path, folder_name)

    # Iterate over all files in the directory and add them as documents
    for filename in os.listdir(directory_path):
        file_path = os.path.join(folder_name, filename)  # Relative path for Document.file_path

        # Create Document entry
        Document.objects.get_or_create(
            subject=subject,
            title=filename,
            file_path=file_path
        )
        print(f"Added document: {filename} to subject: {subject_name}")
