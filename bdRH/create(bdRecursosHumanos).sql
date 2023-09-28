
CREATE DATABASE bdRecursosHumanos
GO
USE bdRecursosHumanos

CREATE TABLE tbDepartamento (
	
	 codDepartamento	INT IDENTITY(1,1)	NOT NULL PRIMARY KEY
	,nomeDepartamento	VARCHAR(30)			NOT NULL
)

/*	CRIAÇÂO DE TABELAS	*/
CREATE TABLE tbFuncionario (

	 codFuncionario			INT IDENTITY(1,1)	NOT NULL PRIMARY KEY
	,nomeFuncionario		VARCHAR(30)			NOT NULL
	,cpfFuncionario			VARCHAR(14)			NOT NULL
	,sexoFuncionario		VARCHAR(1)			NOT NULL
	,dataNascFuncionario	SMALLDATETIME		NOT NULL
	,salarioFuncionario		MONEY				NOT NULL
	,codDepartamento		INT FOREIGN KEY REFERENCES tbDepartamento (codDepartamento)
)



CREATE TABLE tbDependente (
	
	 codDependete			INT IDENTITY(1,1)	NOT NULL
	,nomeDependente			VARCHAR(30)			NOT NULL
	,dataNascDependente		SMALLDATETIME		NOT NULL
	,sexoDependente			VARCHAR(1)			NOT NULL
	,codFuncionario			INT FOREIGN KEY (codFuncionario) REFERENCES tbFuncionario
)