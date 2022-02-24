from unicodedata import name
from django.urls import path, include
from . import views

app_name = "apploto"

urlpatterns = [
    path("",views.Index,name="index"),
    path("mov", views.TabelaMovimento, name="mov"),
    path("sorteia", views.Sorteia, name="sorteia"),
    path("planilha", views.Planilha, name="planilha"),
]

