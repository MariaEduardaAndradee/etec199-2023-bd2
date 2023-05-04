USE bdEstoque2
------------------------------------------
INSERT INTO tbCliente (nomeCliente,cpfCliente,emailCliente,sexoCliente,dataNascimentoCliente)
VALUES
	 ('Armando José Santana',	'12345678900',	'armandojsantana@outlook.com',	'M', '21/01/1961')
	,('Sheila Carvalho Leal',	'45678909823' ,	'scarvalho@g.com.br',			'F', '13/09/1979')
	,('Carlos Henrique Souza',	'76598278299' ,	'chenrique@g.com.br',			'M', '08/09/1981')
	,('Maria Aparecida Souza',	'87365309889' ,	'mapdasouza@outlook.com',		'F', '07/07/1962')
	,('Adriana Nogueira Silva', '76354309388' ,	'drica1977@g.com.br',			'F', '09/04/1977')
	,('Paulo Henrique Silva',	'87390123111' ,	'phsilva80@hotmail.com',		'M', '02/02/1987')


INSERT INTO tbFabricante (nomeFabricante)
VALUES
	 ('Unilever')
	,('P&G')
	,('bunge')

	

INSERT INTO tbFornecedor(nomeFornecedor, contatoFornecedor)
VALUES
	  ('Atacadão',	'Carlos Santos')
	 ,('Assai',		'Maria Stella')
	 ,('Roldão',	'Paulo César')


INSERT INTO tbProduto(descricaoProduto, valorProduto, quantidadeProduto,codFabricante, codFornecedor)
VALUES
	  ('Amaciante Downy',			5.76,  1500, 2, 1)
	 ,('Amaciante Confort',			5.45,  2300, 1, 1)
	 ,('Sabão em pó OMO',			5.99,  1280, 1, 2)
	 ,('Margarina Qualy',			4.76,  2500, 3, 1)
	 ,('Salsicha hot dog Sadia',	6.78,  2900, 3, 2)
	 ,('Mortadela Perdigão',		2.50,  1200, 3, 3)
	 ,('Hamburger Sadia',			9.89,  1600, 3, 1)
	 ,('Fralda Pampers',			36.00,  340, 2, 3)
	 ,('Xampu Seda',				5.89,   800, 1, 2)
	 ,('Condicionador Seda',		6.50,   700, 1, 3)

INSERT INTO tbVenda(dataVenda, valorTotalVenda,codCliente)
VALUES
	   ('01/02/2014', 4500, 1)
	  ,('03/02/2014', 3400, 1)
	  ,('10/02/2014', 2100, 2)
	  ,('15/02/2014', 2700, 3)
	  ,('17/03/2014',  560,	3)
	  ,('09/04/2014', 1200, 4)
	  ,('07/05/2014', 3500, 5)
	  ,('07/05/2014', 3400, 1)
	  ,('05/05/2014', 4000, 2)
	  ,('06/06/2014', 3000, 2)

INSERT INTO tbItensVenda(codVenda, codProduto,quantidadeItensVenda, subTotalItensVenda)
VALUES
	    (1,	1,	200,	1500)
	   ,(1,	2,	300,	3000)
	   ,(2,	4,	120,	1400)
	   ,(2,	2,	200,	1000)
	   ,(3,	5,	200,	2100)
	   ,(4,	4,	120,	1000)
	   ,(4,	5,	450,	 700)
	   ,(5,	5,	200,	 560)
	   ,(6,	7,	200,	 600)
	   ,(6,	6,	300,	 600)
	   ,(8,	1,	300,	2500)
	   ,(8,	2,	200,	1000)
	   ,(9,	6,	250,	1700)
	   ,(9,	5,	200,	1900)
	   ,(10,4,	1000,	4000)