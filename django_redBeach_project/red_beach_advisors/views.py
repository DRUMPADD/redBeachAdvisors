from django.shortcuts import redirect, render

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
        user_name = request.POST.get('nameUser')
        user_lastN = request.POST.get('lastNameUser')
        user_sta = request.POST.get('state')
        user_bth = request.POST.get('birthday')
        print(f'{user_email}\n{user_pwd}\n{user_name}\n{user_lastN}\n{user_sta}\n{user_bth}')
        return redirect('/create_account')
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