from django.urls import path
from . import views
from django.contrib.auth import views as view_auth

# Se establecen las direcciones donde el usuario al acceder a alguna de ellas, será llevado a cierta página,
# también se establecen las direcciones en caso de que el usuario inicie o cierre sesión
urlpatterns = [
    path('home', views.index, name='home'),
    path('register_page', views.register_page, name='register'),
    path('sign_up', views.sign_up_page, name='sign_up_page'),
    path('results', views.results_page, name='results'),
    path('create_account', views.create_account_page, name='create_account'),
    path('login', views.login_page, name='login'),
    path('logout/', view_auth.LogoutView.as_view(), name='logout'),
]