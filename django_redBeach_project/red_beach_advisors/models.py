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

# Tabla para los datos de las ciudades
class data(models.Model):
    id_city = models.IntegerField(primary_key=True)
    city = models.CharField(max_length=255)
    id_estate = models.IntegerField()
    state = models.CharField(max_length=255)
    zone = models.CharField(max_length=255)
    division = models.CharField(max_length=255)
    cost_living = models.FloatField()
    density = models.FloatField()
    gross_rent = models.FloatField()
    health_care = models.IntegerField()
    population = models.IntegerField()
    urban = models.FloatField()
    rural = models.FloatField()
    price_hou = models.IntegerField()
    sector_1 = models.TextField()
    sector_2 = models.TextField()
    sector_3 = models.TextField()
    sector_4 = models.TextField()
    sector_5 = models.TextField()
    sector_6 = models.TextField()
    sector_7 = models.TextField()
    cluster1 = models.IntegerField()
    cluster2 = models.IntegerField()