# easy_shop/celery.py
import os
from celery import Celery

# Define o módulo de configurações padrão do Django para o programa 'celery'.
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'easy_shop.settings')

app = Celery('easy_shop')

# Lê as configurações do Django usando o prefixo CELERY_
app.config_from_object('django.conf:settings', namespace='CELERY')

# Descobre automaticamente arquivos tasks.py em todos os apps instalados no Django
app.autodiscover_tasks()