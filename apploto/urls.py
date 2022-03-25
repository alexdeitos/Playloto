from django.urls import path
from . import views
from django.views.generic import RedirectView


app_name = "apploto"

urlpatterns = [
    path("",views.index,name="index"),
    path("mov", views.tabelaMovimento, name="mov"),
    path("sorteia", views.sorteia, name="sorteia"),
    path("planilha", views.planilha, name="planilha"),
    path("descubra", views.descubra, name="descubra"),
    path("scrapping", views.scrapping, name="scrapping"),

]

urlpatterns += [
    path("", RedirectView.as_view(url='index', permanent=True)),
]

