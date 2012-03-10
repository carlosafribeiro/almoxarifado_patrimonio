from django.conf.urls.defaults import *
from piston.resource import Resource
from almoxarifado.api.handlers import PatrimonioHandler, SaidaProdutoHandler, ProdutoHandler, ConsultaFornecedorHandler

patrimonio_resource = Resource(PatrimonioHandler)
saidaproduto_resource = Resource(SaidaProdutoHandler)
produto_resource = Resource(ProdutoHandler)
consulta_fornecedor_resource = Resource(ConsultaFornecedorHandler)

urlpatterns = patterns('',
    (r'^patrimonios/(?P<patrimonio_id>.+)/$', patrimonio_resource),
    (r'^saidaprodutos/(?P<saidaproduto_id>.+)/$', saidaproduto_resource),
    (r'^produtos/(?P<produto_id>.+)/$', produto_resource),
    (r'^fornecedores/(?P<fornecedor_id>.+)/$', consulta_fornecedor_resource),
)
