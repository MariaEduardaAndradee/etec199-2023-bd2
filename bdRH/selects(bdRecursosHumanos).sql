USE bdRecursosHumanos

/*------SELECT DAS VIEWS------*/
--Criar uma viewpara exibir a quantidade de funcionários por nome de departamento--
CREATE VIEW vwFuncionarios SELECT codfuncionario, nomeDepartamento FROM tbFuncionario
	WHERE nomeDepartamento