from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.

# Se crea la clase Register para establecer los campos en la base de datos para el registro del usuario
class Register(AbstractUser):
    email = models.CharField(max_length=100, primary_key=True)
    password = models.CharField(max_length=100)
    f_name = models.CharField(max_length=100)
    l_name = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    birthday = models.DateField()
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']

# Se crea la tabla Preguntas que contendrá todas las preguntas para el usuario
class Questions(models.Model):
    id_question = models.IntegerField(primary_key=True)
    txtquestion = models.CharField(max_length=255, null=False, blank=False)

# Se crea la tabla Respuestas para insertar las respuestas que dé el usuario
class Answers(models.Model):
    id_answer = models.AutoField(primary_key=True)
    txtanswer = models.CharField(max_length=255)
    id_question = models.ForeignKey(Questions, on_delete=models.CASCADE)
    email_register = models.ForeignKey(Register, on_delete=models.CASCADE, default='')