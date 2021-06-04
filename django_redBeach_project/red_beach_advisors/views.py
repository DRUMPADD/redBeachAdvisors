from django.http.response import HttpResponse
from django.shortcuts import redirect, render
from .models import Register
from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import AuthenticationForm
from .forms import signUpForm
from django.contrib.auth.decorators import login_required
# Create your views here.

@login_required(login_url='login')
def index(request):
    if request.method == 'POST':
        return redirect('results')
    else:
        return render(request, 'questions.html')

def register_page(request):
    return render(request, 'register.html')

def sign_up_page(request):
    if request.method == 'POST':
        form = signUpForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('create_account')
        else:
            return HttpResponse('<h1>Something went wrong</h1>')
    else:
        form = signUpForm()
    return render(request, 'signUp.html', {'form': form})

@login_required(login_url='login')
def results_page(request):
    return render(request, 'results.html')

def create_account_page(request):
    if request.method == 'POST':
        email = request.POST.get('emailUser')
        pwd = request.POST.get('pwdUser')

        print(f'Email: {email}\nPassword: {pwd}')
        return redirect('home')
    else:
        return render(request, 'create_ac.html')

def login_page(request):
    if request.method == 'POST':
        username = request.POST['emailUser']
        password = request.POST['pwdUser']
        user = authenticate(request, email=username, password=password)
        if user is not None:
            form = login(request, user)
            return redirect('home')
    form = AuthenticationForm()
    return render(request, 'create_ac.html', {'form':form})