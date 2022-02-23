from unicodedata import name
from django.urls import path
from . import views

app_name = "apploto"

urlpatterns = [
    path("",views.Index,name="index")
]
