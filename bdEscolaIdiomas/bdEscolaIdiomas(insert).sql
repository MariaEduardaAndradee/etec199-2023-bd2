use bdEscolaIdiomas


--Aluno
insert into tbAluno(nomeAluno, dataNascimento,rgAluno, naturalidadeAluno)
values 
		('Paulo Santos', '03/10/2000', '82.292.122-0', 'SP')
		,('Maria Da Gloria', '10/03/1996', '45.233.123-0', 'SP')
		,('Perla Nogueira Silva', '04/04/1998', '23.533.211-9', 'SP')
		,('Gilson Barros Silva', '09/09/1995', '34.221.111-x', 'PE')
		,('Mariana Barbosa Santos', '10/10/2001', '54.222.122-9', 'RJ')
		,('Alessandro Pereira', '2003/10/11', '24.402.454-9', 'ES')
		,('Aline Melo', '2001/10/08', '88.365.012-3', 'RJ')

select * from tbAluno


--Curso
insert into tbCurso (nomeCurso, cargaHorariaCurso, valorCurso)
values 
		('inglês', 2000, '356.00')
		,('Alemão',3000, '478.00')
		,('Espanhol', 4000, '500.00')
select * from tbCurso


--Turma
insert into tbTurma (nomeTurma, codCurso, horarioTurma)
values 

		('1IA', 1, '01/01/1900 12:00:00')
		,('1IC', 3, '01/01/1900 18:00:00')
		,('1IB', 1, '01/01/1900 18:00:00')
		,('1AA', 2, '01/01/1900 19:00:00')
select * from tbTurma


--Matricula
insert into tbMatricula (dataMatricula, codAluno, codTurma)
values 
		('10/03/2015', 1, 1)
		,('04/05/2014', 2, 1)
		,('05/03/2012', 2, 4)
		,('03/03/2016', 3, 2)
		,('05/07/2015', 1, 3)
		,('07/05/2015', 4, 2)
		,('06/06/2015', 4, 3)
select * from tbMatricula