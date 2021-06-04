from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.
class Register(AbstractUser):
    email = models.CharField(max_length=100, primary_key=True)
    password = models.CharField(max_length=100)
    f_name = models.CharField(max_length=100)
    l_name = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    birthday = models.DateField()
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []