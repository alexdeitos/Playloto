from django.urls import path, include
from . import views

app_name = "apploto"

urlpatterns = [
    path("",views.Index,name="index")
]

