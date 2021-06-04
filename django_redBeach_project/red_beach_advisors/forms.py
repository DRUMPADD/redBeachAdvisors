from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import Register

class signUpForm(UserCreationForm):
    email = forms.EmailField(max_length=200, widget=forms.EmailInput(attrs={
        'class': 'form_field',
        'placeholder': 'Email',
        'name':'emailUser',
        }
    ))
    password1 = forms.CharField(max_length=200, widget=forms.PasswordInput(attrs={
        'class': 'form_field',
        'placeholder': 'Password',
        'name':'passwordUser',
        }
    ))
    password2 = forms.CharField(max_length=200, widget=forms.PasswordInput(attrs={
        'class': 'form_field',
        'placeholder': 'Confirm password',
        'name':'confirmPass',
        }
    ))
    first_name = forms.CharField(max_length=200, widget=forms.TextInput(attrs={
        'class': 'form_field',
        'placeholder': 'First name',
        'name':'nameUser',
        }
    ))
    last_name = forms.CharField(max_length=200, widget=forms.TextInput(attrs={
        'class': 'form_field',
        'placeholder': 'Last name',
        'name':'lastNameUser',
        }
    ))
    
    state = forms.CharField(max_length=200, widget=forms.TextInput(attrs={
        'class': 'form_field',
        'placeholder': 'State',
        'name':'state',
        }
    ))
    birthday = forms.DateField(widget=forms.DateInput(attrs={
        'class': 'form_field',
        'placeholder': 'Birthday date',
        'name':'birthday',
        }
    ))

    class Meta:
        model = Register
        fields = ['email', 'password1', 'password2', 'first_name', 'last_name', 'state', 'birthday']