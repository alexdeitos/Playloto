from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .models import Sorteio

# Create your views here.
def Index(request):
    return render(request, 'index.html')

@login_required
def TabelaMovimento(request):
    last = Sorteio.objects.all().latest()
    last_concurso = last.concurso
    query_set = Sorteio.objects.values_list('B1','B2','B3','B4','B5','B6','B7','B8','B9','B10','B11','B12','B13','B14','B15').order_by('-concurso')[:10]
    result = []
    # lista_games agora é uma lista de jogos de 15 dezenas cada jogo
    # contador = 0 
    
    for c in query_set:
        result.append(c)
    #        contador += 1
    #        if contador == 11: 
    #            break
    
    #result.reverse()

    #global i

    #letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
    #           'U', 'V', 'W','X','Y','Z', 'AA', 'AB', 'AC']
    vetJogo = ['x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x',
               'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x']

    vetJogos = list()
    for sorteio in result:
        for dezena in sorteio:
            vetJogo[dezena-1] = dezena
        vetJogos.append(vetJogo[:])
        vetJogo.clear()
        vetJogo = ['x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x',
                   'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x']
    
    context = {
        'vetJogos': vetJogos,
        'last_concurso' : last_concurso,
    }

    return render(request, 'TabelaMovimento.html',context)
