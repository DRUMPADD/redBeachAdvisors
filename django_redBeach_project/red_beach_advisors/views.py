from django.http.response import HttpResponse, HttpResponseBadRequest, HttpResponseRedirect
from django.shortcuts import redirect, render
from .models import Register
from django import forms
# Create your views here.
def index(request):
    if request.method == 'POST':
        return redirect('results')
    else:
        return render(request, 'questions.html')

def register_page(request):
    return render(request, 'register.html')

def sign_up_page(request):
    
    if request.method == 'POST':
        user_email = request.POST.get('emailUser')
        user_pwd = request.POST.get('passwordUser')
        user_pwd2 = request.POST.get('confirmPass')
        user_name = request.POST.get('nameUser')
        user_lastN = request.POST.get('lastNameUser')
        user_sta = request.POST.get('state')
        user_bth = request.POST.get('birthday')
        checkemail = Register.objects.filter(email = user_email)
        if not checkemail:
            if user_pwd2 == user_pwd:
                try:
                    registerUser = Register(email=user_email, password=user_pwd, f_name=user_name, l_name=user_lastN, state=user_sta, birthday=user_bth)
                    registerUser.save()
                    print(f'{user_email}\n{user_pwd}\n{user_name}\n{user_lastN}\n{user_sta}\n{user_bth}')
                    return HttpResponseRedirect('/create_account')
                except:
                    return HttpResponseBadRequest('<h1>Error al crear el usuario</h1>')
            else:
                return HttpResponse('<h1>Las contraseñas no coinciden</h1>')
        else:
            return HttpResponse('<h1>Email ya registrado</h1>')
    else:
        return render(request, 'signUp.html')

def results_page(request):
    return render(request, 'results.html')

def create_account_page(request):
    if request.method == 'POST':
        email = request.POST.get('emailUser')
        pwd = request.POST.get('pwdUser')

        print(f'Email: {email}\nPassword: {pwd}')
        return redirect('/')
    else:
        return render(request, 'create_ac.html')