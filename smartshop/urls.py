from django.conf.urls import url
from django.urls import include, re_path
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    re_path(r'^product/(?P<item_type>\w+)$', views.getTechItem, name="view_item"),
    url(r'^products/(?P<item_id>[0-9]+)$', views.getDetail, name="view_detail"),
    url(r'^cart$', views.cart, name = "cart"),
    url(r'^pay$', views.pay, name = "pay"),
    url(r'^$', views.HomePage, name="home_page"),
    url(r'^login$', views.LoginUser, name = "loginUser"),
    url(r'^infor$', views.UserInfor, name = "UserInfor"),
    url(r'^logout$', auth_views.LogoutView.as_view(next_page = '/'), name = "logout"),
    url(r'^register$', views.RegisterUser, name = "RegisterUser")
]