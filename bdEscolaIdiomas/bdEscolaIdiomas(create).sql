create database bdEscolaIdiomas
go

use bdEscolaIdiomas
create table tbAluno(
	codAluno int primary key identity (1,1)
	,nomeAluno varchar (40) not null
	,dataNascimento smalldatetime not null
	,rgAluno varchar (40) not null
	,naturalidadeAluno varchar (20) not null
	)

create table tbCurso(
	codCurso int primary key identity (1,1)
	,nomeCurso varchar (20) not null
	,cargaHorariaCurso int not null
	,valorCurso smallmoney not null
	)

create table tbTurma(
	codTurma int primary key identity (1,1)
	,nomeTurma varchar (20) not null
	,codCurso int foreign key references tbCurso (codCurso)
	,horarioTurma smalldatetime not null
	)

create table tbMatricula(
	codMatricula int primary key identity (1,1)
	,dataMatricula smalldatetime not null
	,codAluno int foreign key references tbAluno (codAluno)
	,codTurma int foreign key references tbTurma (codTurma)
	)