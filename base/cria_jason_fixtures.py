import pandas as pd


def cria_jason():
    arquivo = pd.read_csv('base/resultados.csv')
    print(len(arquivo))
    lista_dados = []
    arq_json = open('apploto/fixtures/dados.json','w')
    for i in range(len(arquivo)):
        a = (arquivo.iloc[i,0]).split(';')
        lista_dados.append(a[:])
        a.clear()      
    arq_json.write("[\n")    
    for dado in lista_dados:
        arq_json.write("{\n"+f' "model": "apploto.Sorteio",\n "pk" : "{dado[0]}",\n "fields" : '+"{\n")
        arq_json.write(f'         "concurso": "{dado[0]}",\n')
        arq_json.write(f'         "B1": "{dado[1]}",\n')
        arq_json.write(f'         "B2": "{dado[2]}",\n')
        arq_json.write(f'         "B3": "{dado[3]}",\n')
        arq_json.write(f'         "B4": "{dado[4]}",\n')
        arq_json.write(f'         "B5": "{dado[5]}",\n')
        arq_json.write(f'         "B6": "{dado[6]}",\n')
        arq_json.write(f'         "B7": "{dado[7]}",\n')
        arq_json.write(f'         "B8": "{dado[8]}",\n')
        arq_json.write(f'         "B9": "{dado[9]}",\n')
        arq_json.write(f'         "B10": "{dado[10]}",\n')
        arq_json.write(f'         "B11": "{dado[11]}",\n')
        arq_json.write(f'         "B12": "{dado[12]}",\n')
        arq_json.write(f'         "B13": "{dado[13]}",\n')
        arq_json.write(f'         "B14": "{dado[14]}",\n')
        arq_json.write(f'         "B15": "{dado[15]}",\n')
        arq_json.write(f'         "qtd_ganhadores_15": "{dado[16]}"\n')
        if dado[0] !=  len(arquivo):
            arq_json.write("}\n},\n")
        else:
            arq_json.write("}\n}")
    arq_json.write(']')
    arq_json.close()        
    
cria_jason()
    
    
    
    
    
    