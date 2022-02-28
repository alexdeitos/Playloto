from django import forms


class FixasForm(forms.Form):
    fixas = forms.CharField(max_length=60)

class Valida(forms.Form):
    jogo = forms.CharField(max_length=60)
    
