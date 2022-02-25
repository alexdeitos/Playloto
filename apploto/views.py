from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from .models import Sorteio
from django.core.paginator import Paginator
from datetime import date, timedelta
from random import randint
from openpyxl import Workbook
from .cores_celulas import *
from .forms import FixasForm

# Create your views here.
def Index(request):
    last = Sorteio.objects.all().latest()
    return render(request, 'index.html', {'last' : last})

@login_required
def TabelaMovimento(request):
    today_date = date.today()
    td = timedelta(15)
    data =  today_date - td
    last = Sorteio.objects.all().latest()
    last_concurso = last.concurso
    
    query_set = Sorteio.objects.values_list('B1','B2','B3','B4','B5','B6','B7','B8','B9','B10','B11','B12','B13','B14','B15').filter(data_sorteio__gte=data).order_by('concurso')
    query_set1 = Sorteio.objects.values_list('B1','B2','B3','B4','B5','B6','B7','B8','B9','B10','B11','B12','B13','B14','B15').filter(data_sorteio__gte=data).order_by('-concurso')
    result = []
    result1 = []
    # lista_games agora é uma lista de jogos de 15 dezenas cada jogo
    # contador = 0 
    
    for c in query_set:
        result.append(c)
    for c in query_set1:
        result1.append(c)
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
    vetJogos1 = list()
    for sorteio in result:
        for dezena in sorteio:
            vetJogo[dezena-1] = dezena
        vetJogos.append(vetJogo[:])
        vetJogo.clear()
        vetJogo = ['x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x',
                   'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x']
    for sorteio in result1:
        for dezena in sorteio:
            vetJogo[dezena-1] = dezena
        vetJogos1.append(vetJogo[:])
        vetJogo.clear()
        vetJogo = ['x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x',
                   'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x']
    
    context = {
        'vetJogos': vetJogos,
        'vetJogos1' : vetJogos1,
        'last_concurso' : last_concurso, 
    }

    return render(request, 'TabelaMovimento.html',context)

@login_required
def Sorteia(request):
    
    while True:
        #variáveis de validação
        countRepetidas = 0
        impar = fibo = primo = multiplo = moldura = soma = countfixas = 0
        vetorPrimos = [2, 3, 5, 7, 11, 13, 17, 19, 23]
        vetorMoldura = [1, 2, 3, 4, 5, 6, 10, 11, 15, 16, 20, 21, 22, 23, 24, 25]
        vetorMultiplos = [3, 6, 9, 12, 15, 18, 21, 24]
        vetorFibonacci = [2, 3, 5, 8, 13, 21]
        last_game = list()
        novo_sorteio = list()
        form = FixasForm()
        fixas = ''
        lista_fixas =[]
        #adiciona o último sorteio ao last
        last = Sorteio.objects.all().latest()
        
        # adiciona os valores de last a lista last_games
        last_game.append(last.B1)
        last_game.append(last.B2)
        last_game.append(last.B3)
        last_game.append(last.B4)
        last_game.append(last.B5)
        last_game.append(last.B6)
        last_game.append(last.B7)
        last_game.append(last.B8)
        last_game.append(last.B9)
        last_game.append(last.B10)
        last_game.append(last.B11)
        last_game.append(last.B12)
        last_game.append(last.B13)
        last_game.append(last.B14)
        last_game.append(last.B15)
        
        while True:
            aleatorio = randint(1,25)
            if aleatorio not in novo_sorteio:
                novo_sorteio.append(aleatorio)
                if len(novo_sorteio) == 15:
                    break
        
        if request.method == 'POST':
            # Create a form instance and populate it with data from the request (binding):
            form = FixasForm(request.POST)
            # Check if the form is valid:
            if form.is_valid():
                # process the data in form.cleaned_data as required (here we just write it to the model due_back field)
                fixas = form.cleaned_data['fixas']
                fixas = fixas.split(',')
                for f in fixas:
                    lista_fixas.append(int(f))
        
        # realiza um count das variáveis para retornar para o usuário 
        for n in novo_sorteio:
            
            soma += n
            
            if n in last_game:
                countRepetidas += 1
            if n % 2 == 1:
                impar += 1
            if n in vetorPrimos:
                primo += 1
            if n in vetorFibonacci:
                fibo += 1
            if n in vetorMoldura:
                moldura += 1
            if n in vetorMultiplos:
                multiplo += 1
            if n in lista_fixas:
                countfixas += 1
                
        if soma > 160 and soma < 210 and countRepetidas > 7 and countRepetidas < 10 and fibo < 4 and fibo > 1 and countfixas == len(lista_fixas):
            break
        # adiciona o resultados das variáveis a uma variável que será enviada ao cliente

    context = {
        "novo_sorteio" : novo_sorteio,
        'impar': impar,
        'fibo': fibo,
        'primo': primo,
        'moldura': moldura,
        'multiplo': multiplo,
        'countRepetidas': countRepetidas,
        'soma' : soma,
        'form' : form,
        'fixas': fixas,
        'lista_fixas' : lista_fixas,
    }
    
    return render(request, 'sorteia.html', context)

@login_required
def Planilha(request):
    wb = Workbook()
    ws = wb.active

    query_set = Sorteio.objects.values_list('B1','B2','B3','B4','B5','B6','B7','B8','B9','B10','B11','B12','B13','B14','B15')
    result = []
   
   # lista_games agora é uma lista de jogos de 15 dezenas cada jogo
   # contador = 0 
    
    for c in query_set:
        result.append(c)
    
    # contador += 1
    # if contador == 11: 
    # break
    
    #result.reverse()

    #global i

    letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
               'U', 'V', 'W','X','Y','Z', 'AA', 'AB', 'AC']
    vetJogo = ['x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x',
               'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x']
    sep = [5, 10, 15, 20]
    vetJogos = list()
    vetJogosFinal = list()
    ciclo = list()
    contCiclo = 0
    cont2 = 0
    vetTemp = list()
    lista_gameslist = []
    for vet in result:
        for num in vet:
            vetJogo[num-1] = num
        vetJogos.append(vetJogo[:])
        vetJogo.clear()
        vetJogo = ['x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x',
                   'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x']

    for jogo in vetJogos:
        for j in jogo:
            if cont2 in sep:
                vetTemp.append('||')
            vetTemp.append(j)
            cont2 += 1
        cont2 = 0
        vetJogosFinal.append(vetTemp[:])
        vetTemp.clear()
    
    for line in range(0, len(vetJogosFinal)):  
        cont1 = 0
        for n in vetJogosFinal[line]:
            cont1 += 1
            celula = ws.cell(row=line+1, column=cont1)
            if n == 'x':
                celula.fill = black1()
            elif n == '||':
                celula.fill = black1()
            else:
                celula.fill = white()
                if n not in ciclo:
                    ciclo.append(n)
            celula.value = n
            celula.border = thin_border1()
            celula.font = fonte1()
            celula.alignment = alinhamento1()
        for letra in letters:
            ws.column_dimensions[str(letra)].width = 4
        if len(ciclo) == 25:
            contCiclo += 1
            for i in range(1,30):
                if ws.cell(row=line + 1, column=i).value == '||':
                    ws.cell(row=line + 1, column=i).fill = black1()
                else:
                    ws.cell(row=line + 1, column=i).fill = red1()
            ws.cell(row=line + 1, column=i + 1).value = f'Ciclo: {contCiclo}'
            ws.cell(row=line + 1, column=i + 1).font = fonte1()
            ciclo.clear()
        
            

    response = HttpResponse(content_type="application/ms-excel")
    response['Content-Disposition'] = 'attachment; filename=planilha.xls'
    wb.save(response) 

    return response    
    