#coding: utf-8

import urllib, json

patrimonio = urllib.urlopen("http://localhost:8000/api/patrimonios/1")
patrimonio_load = json.load(patrimonio)

if patrimonio_load[0] == 'Cadeira giratória':
	print "OK"
else:
	print "Erro"
