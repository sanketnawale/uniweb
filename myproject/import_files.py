import os
import django

# Set up Django environment
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "myproject.settings")
django.setup()  # Initialize Django

from resources.models import Document  # Import models after setup

# Define the directory containing the files
directory = os.path.join(os.path.dirname(__file__), 'MWN')

# Iterate through files in the directory
for filename in os.listdir(directory):
    if filename.endswith(".pdf"):
        # Create a new Document object for each file
        file_path = os.path.join('MWN', filename)  # relative path
        document, created = Document.objects.get_or_create(
            title=filename,
            file_path=file_path
        )
        if created:
            print(f"Added {filename} to database.")
        else:
            print(f"{filename} already exists in the database.")


