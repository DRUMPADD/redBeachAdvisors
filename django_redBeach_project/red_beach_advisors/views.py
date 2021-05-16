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
        return redirect('/')
    else:
        return render(request, 'signUp.html')

def results_page(request):
    return render(request, 'results.html')

def create_account_page(request):
    return render(request, 'create_ac.html')