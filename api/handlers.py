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
    allowed_methods = ('GET',)
    model = Produto
    def read(self, request):
        quantidade = Produto.objects.get(quantidade)
        return quantidade
        


