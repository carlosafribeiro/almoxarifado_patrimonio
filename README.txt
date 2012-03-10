Trabalho de Tópicos Avançados
Nomes: Carlos Alexandre Ferreira Ribeiro e Juliana Gonçalves Azevedo


>>>>>>> Passo a passo de como instalar o Django e acessar o projeto

1º Baixar o projeto pelo GitHub: https://github.com/carlosalefr/almoxarifado_patrimonio

2º Descompactar o arquivo e renomear a pasta para 'almoxarifado'

3º Acessar a pasta através do terminal e executar o comando: 
   
    #chmod a+x install.sh
   
4º Executar o comando:

    #./install.sh
    
    Siga as mensagens na tela e confirme a instalação quando necessário
    
5º Abra o navegador e acesse o endereço: 

    http:localhost:8000\admin

    Login: admin
    Senha: admin
    
    
>>>>>>> Serviços Oferecidos

- Lista com os patrimonios cadastrados

  curl -u usuário:senha -H 'Content-Type:application/json' -X GET http://localhost:8000/api/patrimonios
  
- Lista com os produtos que saíram do almoxarifado

  curl -u usuário:senha -H 'Content-Type:application/json' -X GET http://localhost:8000/api/saidaprodutos
  
- Cadastro de produto

  curl -u usuario:senha -H 'Content-Type:application/json' -X POST -d'{"nome":"nome", "quantidade":"quantidade", "qtd_minima":"qtd_minima", "data_compra":"data_compra", "data_validade":"data_validade"}' http://localhost:8000/api/produtos

