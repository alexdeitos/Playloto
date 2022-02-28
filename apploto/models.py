from tkinter import CASCADE
from django.db import models
from datetime import date


# Create your models here.
# Campos da tabela sorteio 
# - Concurso;Data Sorteio;B1;B2;B3;B4;B5;B6;B7;B8;B9;B10;B11;B12;B13;B14;B15;Ganhadores_15_Números
class Sorteio(models.Model):
    concurso = models.BigIntegerField(primary_key=True)
    data_sorteio = models.DateField()
    B1 = models.SmallIntegerField()
    B2 = models.SmallIntegerField()
    B3 = models.SmallIntegerField()
    B4 = models.SmallIntegerField()
    B5 = models.SmallIntegerField()
    B6 = models.SmallIntegerField()
    B7 = models.SmallIntegerField()
    B8 = models.SmallIntegerField()
    B9 = models.SmallIntegerField()
    B10 = models.SmallIntegerField()
    B11 = models.SmallIntegerField()
    B12 = models.SmallIntegerField()
    B13 = models.SmallIntegerField()
    B14 = models.SmallIntegerField()
    B15 = models.SmallIntegerField()
    qtd_ganhadores_15 = models.TextField(max_length=30)

    class Meta:
        get_latest_by = ('concurso')

    def __str__(self):
        return str(self.concurso)
    
class MeusJogos(models.Model):
    id = models.BigIntegerField(primary_key=True)
    concurso = models.BigIntegerField()
    data_sorteio = models.DateField()
    B1 = models.SmallIntegerField()
    B2 = models.SmallIntegerField()
    B3 = models.SmallIntegerField()
    B4 = models.SmallIntegerField()
    B5 = models.SmallIntegerField()
    B6 = models.SmallIntegerField()
    B7 = models.SmallIntegerField()
    B8 = models.SmallIntegerField()
    B9 = models.SmallIntegerField()
    B10 = models.SmallIntegerField()
    B11 = models.SmallIntegerField()
    B12 = models.SmallIntegerField()
    B13 = models.SmallIntegerField()
    B14 = models.SmallIntegerField()
    B15 = models.SmallIntegerField()

    class Meta:
        get_latest_by = ('concurso')

    def __str__(self):
        return str(self.concurso)