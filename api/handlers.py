from piston.handler import BaseHandler
from aplicacao.models import Patrimonio, SaidaProduto, Produto

import json
import urllib2

class PatrimonioHandler (BaseHandler):
    allowed_methods = ('GET',)
    model = Patrimonio
    def read(self, request):
        patrimonio = Patrimonio.objects.all()
        return patrimonio
            
            
class SaidaProdutoHandler (BaseHandler):
    allowed_methods = ('GET',)
    model = SaidaProduto.objects
    def read(self, request, saidaproduto_id=None):
        if saidaproduto_id:
            return self.model.get(pk=saidaproduto_id)
        else:
            return self.model.all()
        

class ConsultaFornecedorHandler(BaseHandler):
    allowed_methods = ("GET")

    def read(self, request, fornecedor_id=None):
        url = 'http://site' + str(fornecedor_id)
        dados = urllib2.urlopen(url)
        fornecedor = json.load(dados)
        
        return dados
        
        
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





