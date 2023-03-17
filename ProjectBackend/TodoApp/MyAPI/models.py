from django.db import models

# Create your models here.
class Todowork(models.Model):
    date = models.DateTimeField(auto_now_add= True)
    isDone = models.BooleanField(default=False)
    desc = models.CharField(max_length= 220)
    title = models.CharField(max_length= 60)
    
def __str__(self):
    return self.title[:17]
   