from django import forms


class FixasForm(forms.Form):
    fixas = forms.CharField(max_length=60)

class Valida(forms.Form):
    jogo = forms.CharField(label='Digite os números do seu jogo (separados por vírgula)', max_length=100)
