USE bdRecursosHumanos

/*	INSERT DE TABELAS	*/
INSERT INTO tbDepartamento (nomeDepartamento) VALUES
	
	 ('compras')
	,('vendas')
	,('TI')
	,('Marketing')


INSERT INTO tbFuncionario (nomeFuncionario, cpfFuncionario, sexoFuncionario, dataNascFuncionario, salarioFuncionario) VALUES

	 ('Maria Luisa Moura', 12345678900, 'F', 10/02/1990, 3400)
	,('Mariana Goulart', 45678909299, 'F', 08/04/1991, 2800)
	,('Pedro Paulo Vidigal', 645872223388, 'M', 07/05/1994, 5400)
	,('Carlos Calixto', 83738232233, 'M', 03/03/1965, 8900)
	,('Viviane Martins', 778322333399, 'F', 06/06/1976, 4300)
	,('Analice Mendes', 83703383493, 'F', 09/09/1981, 6800)
	,('Patricia Ishikawa', 43356609300, 'F', 05/05/1978, 4900)


INSERT INTO tbDependente (nomeDependente, dataNascDependente, sexoDependente) VALUES

	 ('Lucas Moura', 10/01/2015, 'M')
	,('Carlos Calixto JR', 08/06/200, 'M')
	,('Michele Costa Calixto', 09/09/2003, 'F')
	,('Silvana Costa Calixto', 04/04/2006, 'F')
	,('Arthur Mendes Silva', 07/07/2010, 'M')