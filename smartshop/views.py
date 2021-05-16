from django.contrib.auth.signals import user_logged_in, user_logged_out
from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.contrib.auth import login, authenticate
from .models import *
from .forms import *


def HomePage(request):
    techList = Product.objects.filter(item_type = 'tech')
    return render(
        request = request,
        template_name = "homepage.html",
        context= {
            'techList': techList
        }
    )

def getTechItem(request,item_type):
    techList = Product.objects.filter(item_type = item_type)
    name = request.GET.get('name')
    if name:
        techList = techList.filter(item_name__contains = name)
    return render(
        request = request,
        template_name = "test.html",
        context= {
            'techList': techList
        }
    )

def getDetail(request,item_id):
    items = Product.objects.filter(id = item_id)
    if request.method == "POST":
        customer = request.user
        id = request.POST.get('id')
        OrderItem.objects.create(
            product_id = id,
            Customer_id = customer.id,
            quantity = 1
        )
        return redirect('/cart')
    return render(
        request = request,
        template_name = "detail.html",
        context= {
            'items': items
        }
    )

def cart(request):
    if not request.user.is_authenticated:
        return redirect('/login')
    if request.method == "POST":
        customer = request.user
        items = OrderItem.objects.filter(Customer_id = customer.id)
        items_not_pay = items.filter(pay= 0)
        for item in items_not_pay:
            item.pay = 1
            item.save()
        return redirect('/pay')
    if request.user.is_authenticated:
        customer = request.user
        items = OrderItem.objects.filter(Customer_id = customer.id)
        items_not_pay = items.filter(pay= 0)
        total = sum([item.get_total for item in items_not_pay])
    else:
        items = []
    return render(
        request = request,
        template_name = "cart.html",
        context= {
            'items': items_not_pay,
            'total': total
        }
    )

def pay(request):
    if request.user.is_authenticated:
        customer = request.user
        items = OrderItem.objects.filter(Customer_id = customer.id)
        items_pay = items.filter(pay= 1)
    else:
        items = []
    return render(
        request = request,
        template_name = "pay.html",
        context= {
            'items': items_pay
        }
    )

def RegisterUser(request):
    form = RegisterForm()
    if(request.method == "POST"):
        form = RegisterForm(request.POST)
        if form.is_valid():
            form.save_user()
            return HttpResponseRedirect('/login')
    return render(
        request = request,
        template_name='register.html',
        context={
            'form': form
        }
    )

def LoginUser(request):
    mess = ""
    form = LoginForm()
    if request.method == "POST":
        form = LoginForm(request.POST)
        if form.is_valid():
            user = authenticate(
                username = form.cleaned_data.get('username'),
                password = form.cleaned_data.get('password')
            )
            if user:
                mess ="Đăng nhập thành công"
                login(request, user)
                if request.GET.get('next'):
                    return HttpResponseRedirect(request.GET.get('next'))
                return HttpResponseRedirect('/product/tech')
            else:
                mess = "Vui lòng kiểm tra lại username/password"
    return render(
        request = request,
        template_name='login.html',
        context={
            'form': form,
            'mess': mess
        }
    )

def UserInfor(request):
    if request.user.is_authenticated:
        customer = request.user
        return render(
            request = request,
            template_name='Infor.html',
            context={
                'customer': customer
            }
        )


