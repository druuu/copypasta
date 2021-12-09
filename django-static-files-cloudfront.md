# install packages
```sh
pip install django-compressor django-storages boto3
```

# CachedS3Boto3Storage
```py
# mysite/storage.py
from django.core.files.storage import get_storage_class
from storages.backends.s3boto3 import S3Boto3Storage


class CachedS3Boto3Storage(S3Boto3Storage):
    """
    S3 storage backend that saves the files locally, too.
    """
    def __init__(self, *args, **kwargs):
        super(CachedS3Boto3Storage, self).__init__(*args, **kwargs)
        self.local_storage = get_storage_class(
            "compressor.storage.CompressorFileStorage")()

    def save(self, name, content):
        self.local_storage._save(name, content)
        super(CachedS3Boto3Storage, self).save(name, self.local_storage._open(name))
        return name
```

# settings.py
```py
# compressed static files served from cloudfront
STATICFILES_FINDERS = [
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
    'compressor.finders.CompressorFinder'
]
COMPRESS_ENABLED = True
STATIC_ROOT = BASE_DIR / "static"
COMPRESS_ROOT = STATIC_ROOT
COMPRESS_OFFLINE = True
AWS_ACCESS_KEY_ID = 'xxxxx'
AWS_SECRET_ACCESS_KEY = 'xxxxxx'
AWS_S3_CUSTOM_DOMAIN = "xxxxxxxx.cloudfront.net"
AWS_S3_SECURE_URLS = True
AWS_STORAGE_BUCKET_NAME = 'xxxx'
STATICFILES_STORAGE = 'mysite.storage.CachedS3Boto3Storage'
COMPRESS_STORAGE = STATICFILES_STORAGE
AWS_IS_GZIPPED = True
STATIC_URL = 'https://xxxxx.cloudfront.net/'
COMPRESS_URL = STATIC_URL
# AWS_QUERYSTRING_AUTH = False
AWS_DEFAULT_ACL = 'public-read'
```
