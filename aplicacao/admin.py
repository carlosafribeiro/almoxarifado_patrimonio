from django.contrib import admin
from django.contrib.admin.options import ModelAdmin

from models import Produto, Setor, Funcionario, SaidaProduto, Patrimonio

class AdminProduto(ModelAdmin):
    list_display = ('nome', 'quantidade', 'qtd_minima', 'data_compra', 'data_validade',)
    
class AdminSetor(ModelAdmin):
    list_display = ('nome', 'sala', 'bloco', 'ramal', 'responsavel',)
    
class AdminFuncionario(ModelAdmin):
    list_display = ('nome', 'telefone',)
    
class AdminSaidaProduto(ModelAdmin):
    list_display = ('produto', 'quantidade', 'setor', 'data', 'funcionario',)
    
class AdminPatrimonio(ModelAdmin):
    list_display = ('id', 'descricao', 'setor', 'data',)

admin.site.register(Produto, AdminProduto)
admin.site.register(Setor, AdminSetor)
admin.site.register(Funcionario, AdminFuncionario)
admin.site.register(SaidaProduto, AdminSaidaProduto)
admin.site.register(Patrimonio, AdminPatrimonio)
