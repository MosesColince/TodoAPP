from rest_framework import serializers 
from .models import Todowork

class TodoworkSerilizer( serializers.ModelSerializer):
    model = Todowork
    fields = '_all_'