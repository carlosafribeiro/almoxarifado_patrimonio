from django.conf.urls.defaults import *
from piston.resource import Resource
from almoxarifado.api.handlers import PatrimonioHandler, SaidaProdutoHandler, ProdutoHandler

patrimonio_resource = Resource(PatrimonioHandler)
saidaproduto_resource = Resource(SaidaProdutoHandler)
produto_resource = Resource(ProdutoHandler)

urlpatterns = patterns('',
    (r'^patrimonios/', patrimonio_resource),
    (r'^saidaprodutos/', saidaproduto_resource),
    (r'^produtos/', produto_resource),
)
