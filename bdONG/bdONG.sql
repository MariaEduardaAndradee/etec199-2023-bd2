--CRAÇÃO DO BANCO--
CREATE DATABASE bdONG
GO

USE bdONG

	--CRIAÇÃO DE TABELAS--
	CREATE TABLE tbGenitor (
		codGenitor		INT PRIMARY KEY IDENTITY(1,1)
		,nomeGenitor	VARCHAR(100) NOT NULL
		,cpfGenitor		CHAR(11)
	)

	CREATE TABLE tbPadrinho (
		codPadrinho		INT PRIMARY KEY IDENTITY(1,1)
		,nomePadrinho	VARCHAR(100) NOT NULL
		,cpfPadrinho		CHAR(11)
	)

	CREATE TABLE tbStatus (
		 codStatus		INT PRIMARY KEY IDENTITY(1,1)
		,descStatus		VARCHAR(30) NOT NULL
	)

	CREATE TABLE tbSexo (
		 codSexo		INT PRIMARY KEY IDENTITY(1,1)
		,descSexo		VARCHAR(30) NOT NULL
	)

	CREATE TABLE tbCrianca (
		codCrianca		INT PRIMARY KEY IDENTITY(1,1)
		,nomeCrianca	VARCHAR(100) NOT NULL
		,dtNascCrianca  SMALLDATETIME 
		,codSexo		INT FOREIGN KEY REFERENCES tbSexo (codSexo)
		,codStatus		INT FOREIGN KEY REFERENCES tbStatus (codStatus)
	)

	CREATE TABLE tbFiliacao (
		codFiliacao		INT PRIMARY KEY IDENTITY(1,1) 
		,codCrianca		INT FOREIGN KEY REFERENCES tbCrianca (codCrianca)
		,codGenitor		INT FOREIGN KEY REFERENCES tbGenitor (codGenitor)
	)

	CREATE TABLE tbApradrinhamento (
		codApradrinhamento	INT PRIMARY KEY IDENTITY(1,1) 
		,dtApradrinhamento	DATE
		,codCrianca			INT FOREIGN KEY REFERENCES tbCrianca (codCrianca)
		,codPadrinho		INT FOREIGN KEY REFERENCES tbPadrinho (codPadrinho)
	)

	CREATE TABLE tbObservacaoCriaCa (
		 codObservacaoCrianco	INT PRIMARY KEY IDENTITY(1,1) 
		,codCrianca				INT FOREIGN KEY REFERENCES tbCrianca (codCrianca)
		,observacaoCrianca		VARCHAR(200) NOT NULL
		,dtObservacao			SMALLDATETIME NOT NULL
	)

	CREATE TABLE tbDoencas (
		 codDoencas	 INT PRIMARY KEY IDENTITY(1,1) 
		,nomeDoencas  VARCHAR(50) NOT NULL
		,cid		 VARCHAR(10) NOT NULL
	)

	CREATE TABLE tbProntuario (
		 codProntuario			INT PRIMARY KEY IDENTITY(1,1) 
		,codCrianca				INT FOREIGN KEY REFERENCES tbCrianca (codCrianca) UNIQUE
		,observacaoProntuario	VARCHAR(300) NOT NULL
		,dtObservacao			SMALLDATETIME NOT NULL
	)

--EXECUTADO ATÉ AQUI--
	
	CREATE TABLE tbProntuarioDoecas (
		 codProntuarioDoecas	INT PRIMARY KEY IDENTITY(1,1) 
		,codDoecas				INT FOREIGN KEY REFERENCES tbDoencas (codDoencas)
		,codProntuario			INT FOREIGN KEY REFERENCES tbProntuario (codProntuario)
		,dtAcontecimento		SMALLDATETIME NOT NULL
	)