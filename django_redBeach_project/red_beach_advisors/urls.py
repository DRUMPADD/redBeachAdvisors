from django.urls import path
from . import views
from django.contrib.auth import views as view_auth

urlpatterns = [
    path('home', views.index, name='home'),
    path('register_page', views.register_page, name='register'),
    path('sign_up', views.sign_up_page, name='sign_up_page'),
    path('results', views.results_page, name='results'),
    path('create_account', views.create_account_page, name='create_account'),
    path('login', views.login_page, name='login'),
    path('logout/', view_auth.LogoutView.as_view(), name='logout'),
]