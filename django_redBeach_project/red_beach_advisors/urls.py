from django.urls import path
from . import views
from django.contrib.auth import views as view_auth

urlpatterns = [
    path('', views.index, name='index'),
    path('register', views.register_page, name='register_page'),
    path('sign_up', views.sign_up_page, name='sign_up_page'),
    path('results', views.results_page, name='results'),
    path('create_account', views.create_account_page, name='create_account'),
    path('login', views.login_page, name='login'),
    path('logout', view_auth.LogoutView.as_view(template_name='create_ac.html'), name='logout'),
]