from django.http.response import HttpResponse
from django.shortcuts import redirect, render
from .models import Answers, Register, Questions
from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import AuthenticationForm
from .forms import signUpForm
from django.contrib.auth.decorators import login_required
# Create your views here.

@login_required(login_url='login')
def index(request):
    username = None
    if request.user.is_authenticated:
        username = request.user.username
        
    if request.method == 'POST':
        saveDataVeteran = Answers(txtanswer= request.POST['discharge_type'], id_question=Questions.objects.get(id_question=1), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['amount_retire'], id_question=Questions.objects.get(id_question=2), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['location'], id_question=Questions.objects.get(id_question=3), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['level_education'], id_question=Questions.objects.get(id_question=4), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['career'], id_question=Questions.objects.get(id_question=5), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['years_career'], id_question=Questions.objects.get(id_question=6), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['job_role'], id_question=Questions.objects.get(id_question=7), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['married'], id_question=Questions.objects.get(id_question=8), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['members_family'], id_question=Questions.objects.get(id_question=9), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['work'], id_question=Questions.objects.get(id_question=10), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['select_place'], id_question=Questions.objects.get(id_question=11), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['family'], id_question=Questions.objects.get(id_question=12), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['cities'], id_question=Questions.objects.get(id_question=13), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['sizeC'], id_question=Questions.objects.get(id_question=14), email_register=username)
        saveDataVeteran.save()
        saveDataVeteran = Answers(txtanswer= request.POST['buy_home'], id_question=Questions.objects.get(id_question=15), email_register=username)
        saveDataVeteran.save()
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