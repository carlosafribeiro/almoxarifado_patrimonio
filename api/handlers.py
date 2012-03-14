from piston.handler import BaseHandler
from aplicacao.models import Patrimonio, SaidaProduto, Produto

import json
import urllib2

class PatrimonioHandler (BaseHandler):
    allowed_methods = ('GET',)
    model = Patrimonio
    def read(self, request, patrimonio_id=None):
    
        base = Patrimonio.objects
    
        if patrimonio_id:
            return base.get(pk=patrimonio_id)
        else:    
            return base.all()
            
            
class SaidaProdutoHandler (BaseHandler):
    allowed_methods = ('GET',)
    model = SaidaProduto
    
    def read(self, request, saidaproduto_id=None):
    
        base = SaidaProduto.objects
    
        if saidaproduto_id:
            return base.get(pk=saidaproduto_id)
        else:
            return base.all()
        
        
class ProdutoHandler (BaseHandler):
    allowed_methods = ('GET', 'POST', 'DELETE', 'PUT')
    model = Produto.objects
    
    def read(self, request, produto_id=None):
        if produto_id:
            return self.model.get(pk=produto_id)
        else:
            return self.model.all()
    
    def create(self, request, **kwargs):
        if request.post:
            dados = request.dados
            
            produto_novo = self.model(nome=dados['nome'], quantidade=dados['quantidade'], qtd_minima=dados['qtd_minima'], data_compra=dados['data_compra'], data_validade=dados['data_validade'])
            produto_novo.save()
        
            return rc.CREATED
        return 'Nao foi possivel cadastrar o produto' 
        
        
    def delete(self, request, produto_id=None):
        
        produto = self.model.get(pk=produto_id)
        produto.delete()

        return rc.DELETED   
        
    
    def update(self, request):
        
        dados = request.dados
        
        produto = self.model.get(pk=dados['produto_id'])
        produto.nome=dados['nome']
        produto.quantidade=dados['quantidade']
        produto.qtd_minima=dados['qtd_minima']
        produto.data_compra=dados['data_compra']
        produto.data_validade=dados['data_validade']
        produto.save()
        
        return rc.ALL_OK 
        
        
        
class ConsultaFornecedorHandler(BaseHandler):
    allowed_methods = ("GET")

    def read(self, request, fornecedor_id=None):
        url = 'http://site' + str(fornecedor_id)
        dados = urllib2.urlopen(url)
        fornecedor = json.load(dados)
        
        return dados





