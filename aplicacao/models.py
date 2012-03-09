from django.db import models
from datetime import datetime

class Produto(models.Model):
    nome = models.CharField(max_length=100)
    quantidade = models.IntegerField()
    qtd_minima = models.IntegerField()
    data_compra = models.DateField(blank=True, default=datetime.today())
    data_validade = models.DateField(blank=True)
    
    def __unicode__(self):
        return self.nome
    
class Setor(models.Model):
    nome = models.CharField(max_length=100)
    sala = models.IntegerField()
    bloco = models.CharField(max_length=10)
    ramal = models.CharField(max_length=10)
    responsavel = models.CharField(max_length=100)
    
    def __unicode__(self):
        return self.nome
    
class Funcionario(models.Model):
    nome = models.CharField(max_length=100)
    telefone = models.CharField(max_length=10)
    
    def __unicode__(self):
        return self.nome
    
class SaidaProduto(models.Model):
    class Meta:
        ordering = ('-produto', '-setor', '-funcionario',)     
    produto = models.ForeignKey('Produto')
    quantidade = models.IntegerField()
    setor = models.ForeignKey('Setor')
    data = models.DateField(blank=True, default=datetime.today())
    funcionario = models.ForeignKey('Funcionario')
    
        
class Patrimonio(models.Model):
    class Meta:
        ordering = ('-setor',)
    descricao = models.CharField(max_length=100)
    setor = models.ForeignKey('Setor')
    data = models.DateField(blank=True, default=datetime.today())
