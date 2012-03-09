from piston.handler import BaseHandler
from aplicacao.models import Patrimonio, SaidaProduto, Produto

class PatrimonioHandler (BaseHandler):
    allowed_methods = ('GET',)
    model = Patrimonio
    def read(self, request):
        patrimonio = Patrimonio.objects.all()
        return patrimonio
            
            
class SaidaProdutoHandler (BaseHandler):
    allowed_methods = ('GET',)
    model = SaidaProduto
    def read(self, request, id):
        saida = SaidaProduto.objects.get(id=id)
        return saida
        
        
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
        


