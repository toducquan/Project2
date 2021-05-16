from django import forms
from django.core.exceptions import ValidationError
from .models import User


class RegisterForm(forms.Form):
    username =  forms.CharField(label="Tài khoản", max_length=20, widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(label="Mật khẩu", max_length=20, widget=forms.TextInput(attrs={'class': 'form-control'}))
    email = forms.CharField(label="Email", max_length=20, widget=forms.TextInput(attrs={'class': 'form-control'}))
    first_name = forms.CharField(label="Họ", max_length=20, widget=forms.TextInput(attrs={'class': 'form-control'}))
    last_name = forms.CharField(label="Tên", max_length=20, widget=forms.TextInput(attrs={'class': 'form-control'}))

    def clean_username(self):
        new_username = self.cleaned_data['username']
        try:
            User.objects.get(username = new_username)
        except User.DoesNotExist:
            return new_username
        raise ValidationError(f"'{new_username}' đã tồn tại. Vui lòng chọn tên khác")

    def clean_email(self):
        new_email = self.cleaned_data['email']
        try:
            User.objects.get(email = new_email)
        except User.DoesNotExist:
            return new_email
        raise ValidationError(f"'{new_email}' đã tồn tại. Vui lòng chọn email khác")

    def save_user(self):
        User.objects.create_user(
            username = self.cleaned_data['username'],
            password = self.cleaned_data['password'],
            email = self.cleaned_data['email'],
            first_name = self.cleaned_data['first_name'],
            last_name = self.cleaned_data['last_name']
        )

class LoginForm(forms.Form):
    username =  forms.CharField(label="Tài khoản", max_length=20, widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(label="Mật khẩu", max_length=20, widget=forms.TextInput(attrs={'class': 'form-control'}))


