from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import Register

class signUpForm(UserCreationForm):
    email = forms.EmailField(max_length=200, widget=forms.EmailInput(attrs={
        'class': 'form_field',
        'placeholder': 'Email',
        'name':'emailUser',
        'autocomplete': 'off',
        }
    ))
    password1 = forms.CharField(max_length=200, widget=forms.PasswordInput(attrs={
        'class': 'form_field',
        'placeholder': 'Password',
        'name':'passwordUser',
        'autocomplete': 'off',
        }
    ))
    password2 = forms.CharField(max_length=200, widget=forms.PasswordInput(attrs={
        'class': 'form_field',
        'placeholder': 'Confirm password',
        'name':'confirmPass',
        'autocomplete': 'off',
        }
    ))
    first_name = forms.CharField(max_length=200, widget=forms.TextInput(attrs={
        'class': 'form_field',
        'placeholder': 'First name',
        'name':'nameUser',
        'autocomplete': 'off',
        }
    ))
    last_name = forms.CharField(max_length=200, widget=forms.TextInput(attrs={
        'class': 'form_field',
        'placeholder': 'Last name',
        'name':'lastNameUser',
        'autocomplete': 'off',
        }
    ))
    
    state = forms.CharField(max_length=200, widget=forms.TextInput(attrs={
        'class': 'form_field',
        'placeholder': 'State',
        'name':'state',
        'autocomplete': 'off',
        }
    ))
    birthday = forms.DateField(widget=forms.DateInput(attrs={
        'class': 'form_field',
        'placeholder': 'Birthday date YYYY-MM-DD',
        'name':'birthday',
        'autocomplete': 'off',
        }
    ))

    class Meta:
        model = Register
        fields = ['email', 'password1', 'password2', 'first_name', 'last_name', 'state', 'birthday']