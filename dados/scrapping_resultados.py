from zipfile import ZipFile, is_zipfile
from requests import get
from io import BytesIO
from pandas import read_html


#URL = 'http://127.0.0.1:8000/scrapping'
URL = 'https://loterias.caixa.gov.br/Paginas/Download-Resultados.aspx'

html = get(URL).content

dados = read_html(html)
#print(type(dados))
#print(dados[0])
#pd = dados[0].iloc[:10,[*[i for i in range(17)],18]]
pd = dados[0].iloc[:10,[*[i for i in range(17)],18]]
pd.drop_duplicates('Concurso')
print(pd.dtypes)
#print(pd['Concurso'])
#print(pd.columns)
"""
def html_resultados(url):
	""
	Obtém os dados de todos os sorteios da lotofácil.
	
	:param url: Endereço para obter o arquivo ZIP
	com os dados dos sorteios da lotofácil
	
	:returns: Conteúdo HTML do arquivo ZIP

	""
	resposta = get(url, stream = True)
	verifica_zip = is_zipfile(BytesIO(resposta.content))

	if verifica_zip:
		arquivo = ZipFile(BytesIO(resposta.content))
		
		with arquivo as zip:
			dados = zip.read('d_lotfac.htm')
		zip.close

		return dados


html = get(URL).content

# Cria uma lista a partir da variável (html)
dados = read_html(html)
# dados -> <class 'list'>

# Obtém os dados de todos os sorteios
# dados[0] -> <class 'pandas.core.frame.DataFrame'>
# base     -> <class 'pandas.core.frame.DataFrame'>
base = dados[0].iloc[:, [*[i for i in range(17)], 18]]
print(base)

# Remove dados duplicados
base = base.drop_duplicates('Concurso')

# Renomeia as colunas do DataFrame
colunas = {'Bola1': 'B1', 'Bola2': 'B2', 'Bola3': 'B3', 'Bola4': 'B4', 'Bola5': 'B5',
		   'Bola6': 'B6', 'Bola7': 'B7', 'Bola8': 'B8', 'Bola9': 'B9', 'Bola10': 'B10',
		   'Bola11': 'B11', 'Bola12': 'B12', 'Bola13': 'B13', 'Bola14': 'B14', 'Bola15': 'B15',
		   'Ganhadores_15_Números': 'Ganhou'}

base.rename(columns=colunas, inplace=True)

# Exporta os dados em arquivo CSV
base.to_csv('resultados.csv', sep=';', encoding='utf8', index=False)

if __name__ == '__main__':

	# Informações
	concurso = base['Concurso'].max()
	data = str(base[base['Concurso'] == concurso]['Data Sorteio'])[8:18]

	print(f'\n\033[1;32mTODOS OS RESULTADOS DOS CONCURSOS DA LOTOFÁCIL FORAM BAIXADOS COM SUCESSO!\033[m')
	print(f'\n\n\033[1;36mÚltimo sorteio:\033[m {data}\n\033[1;36mConcurso:\033[m {concurso}')

	print(f'\n\n\033[1;35mArquivo salvo em:\033[m \033[1;33m..resultados.csv\033[m')"""
