USE bdLivrariaBrasileira

---INSERINDO DADOS---
---TBGENERO---
INSERT INTO tbGenero (nomeGenero ) VALUES
	
	('Fic��o')
	,('Romance')
	,('Trag�dia')

---tbEditora---
INSERT INTO tbEditora (nomeEditora ) VALUES
	
	('Melhoramentos')
	,('Globo')
	,('�tica')
	,('Companhia das Letras')
	,('Abril')


---tbAutor---
INSERT INTO tbAutor (nomeAutor ) VALUES
	
	('Chico Buarque')
	,('Jorge Amado')
	,('J.K Rowlling')
	,('William Sharkpears')
	,('Monteiro Lobato')
	,('Cora Coralina')
	,('Clarice Lispector')


---tbAutor---
INSERT INTO tbLivro (nomeLivro, numPaginas, codGenero, codAutor, codEditora ) VALUES
	
	('Budapeste',									176, 2, 4, 1)
	,('O bicho-da-seda',							454, 2, 5, 3)
	,('Gabriel, O cravo e Canela',					214, 1, 2, 2)
	,('Reina��es de Narizinho',						143, 2, 2, 2)
	,('Romeu e Julieta',							421, 1, 3, 4)
	,('O irm�o Alem�o',								478, 1, 4, 1)
	,('A Terra do Sem-fim',							125, 1, 3, 2)
	,('Animais Fant�sticos e Onde habitam',			267, 2, 4, 3)