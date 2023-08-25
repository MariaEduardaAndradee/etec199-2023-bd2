USE bdLivrariaBrasileira

---INSERINDO DADOS---
---TBGENERO---
INSERT INTO tbGenero (nomeGenero ) VALUES
	
	('Ficção')
	,('Romance')
	,('Tragédia')

---tbEditora---
INSERT INTO tbEditora (nomeEditora ) VALUES
	
	('Melhoramentos')
	,('Globo')
	,('Ática')
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
	,('Reinações de Narizinho',						143, 2, 2, 2)
	,('Romeu e Julieta',							421, 1, 3, 4)
	,('O irmão Alemão',								478, 1, 4, 1)
	,('A Terra do Sem-fim',							125, 1, 3, 2)
	,('Animais Fantásticos e Onde habitam',			267, 2, 4, 3)