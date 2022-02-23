from unicodedata import name
from django.urls import path, include
from . import views

app_name = "apploto"

urlpatterns = [
    path("",views.Index,name="index")
]

#Add Django site authentication urls (for login, logout, password management)

urlpatterns += [
    path('accounts/', include('django.contrib.auth.urls')),
]
