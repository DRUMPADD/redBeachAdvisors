from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('register', views.register_page, name='register_page'),
    path('sign_up', views.sign_up_page, name='sign_up_page'),
    path('results', views.results_page, name='resutls_page'),
]