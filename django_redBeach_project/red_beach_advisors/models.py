from django.db import models

# Create your models here.
class Register(models.Model):
    email = models.CharField(max_length=100, primary_key=True)
    password = models.CharField(max_length=100)
    f_name = models.CharField(max_length=100)
    l_name = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    birthday = models.DateField()