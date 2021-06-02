from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import Register

class signUpForm(UserCreationForm):
    email = forms.EmailField(max_length=200, widget=forms.EmailInput(attrs={
        'class': 'form-control',
        'placeholder': 'User name',
        }
    ))
    password1 = forms.CharField(max_length=200, widget=forms.PasswordInput(attrs={
        'class': 'form-control',
        'placeholder': 'Password',
        }
    ))
    password2 = forms.CharField(max_length=200, widget=forms.PasswordInput(attrs={
        'class': 'form-control',
        'placeholder': 'Confirm password',
        }
    ))
    first_name = forms.CharField(max_length=200, widget=forms.TextInput(attrs={
        'class': 'form-control',
        'placeholder': 'First name',
        }
    ))
    last_name = forms.CharField(max_length=200, widget=forms.TextInput(attrs={
        'class': 'form-control',
        'placeholder': 'Last name',
        }
    ))
    
    state = forms.CharField(max_length=200, widget=forms.TextInput(attrs={
        'class': 'form-control',
        'placeholder': 'User name',
        }
    ))
    birthday = forms.DateField(max_length=200, widget=forms.DateInput(attrs={
        'class': 'form-control',
        'placeholder': 'User name',
        }
    ))