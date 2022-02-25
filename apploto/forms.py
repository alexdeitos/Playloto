from django import forms


class FixasForm(forms.Form):
    fixas = forms.CharField(max_length=60)
    
