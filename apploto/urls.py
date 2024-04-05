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
    path('exportar-tabela-excel/', views.exportar_tabela_excel, name='exportar_tabela_excel'),
    path('importar-sorteios/', views.importar_sorteios, name='importar_sorteios'),
]



# Redirecionamento da URL raiz para a view index
urlpatterns += [
    path("", views.index, name="redirect-to-index"),
]