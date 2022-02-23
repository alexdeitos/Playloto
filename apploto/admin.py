from django.contrib import admin
from .models import Sorteio
from django.contrib.auth.models import Group


#Mudar header da página
admin.site.site_header = 'Playloto Admin Site'

#Remover o campo de adicionar grupo de usuários, remova essa linha para aparecer novamente
admin.site.unregister(Group)

# Register your models here.
# admin.site.register(Jogos)
@admin.register(Sorteio)
class JogosAdmin(admin.ModelAdmin):
    list_filter = ('data_sorteio',
        "B1",
        "B15",
    )
    list_display = (
        "concurso",
        "data_sorteio",
        "B1",
        "B2",
        "B3",
        "B4",
        "B5",
        "B6",
        "B7",
        "B8",
        "B9",
        "B10",
        "B11",
        "B12",
        "B13",
        "B14",
        "B15",
        "qtd_ganhadores_15",
    )
    

     
