Passo a passo de como instalar o Django e acessar o projeto

Baixar e instalar o Django:

#wget "http://www.djangoproject.com/download/1.3/tarball/"
#tar xzvf Django-1.3.tar.gz
#cd Django-1.3
#sudo python setup.py install

Instalar o easy install e depois o django evolution:

#sudo apt-get install python-setuptools
#easy_install -U django_evolution

Acessar o diretório do projeto e executar o comando abaixo:
python manage.py runserver

Acessar o projeto no navegador:
http://localhost:8000/admin

Login: admin
Senha: admin