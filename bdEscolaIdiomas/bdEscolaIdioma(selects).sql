use bdEscolaIdiomas2

----Exerc�cio 01
-- Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem;

	SELECT distinct nomeAluno AS Aluno, nomeCurso AS Curso FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
	INNER JOIN tbTurma ON tbTurma.codTurma = tbTurma.codTurma
	INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso

--Exerc�cio 02
-- Apresentar a quantidade de alunos matriculados por nome do curso
	
	SELECT nomeCurso, COUNT (tbAluno.nomeAluno) AS Alunos FROM tbCurso
	INNER JOIN tbTurma ON tbTurma.codCurso = tbCurso.codCurso
	INNER JOIN tbMatricula ON tbMatricula.codTurma = tbTurma.codTurma
	INNER JOIN tbAluno ON tbAluno.codAluno = tbMatricula.codAluno
	GROUP BY nomeCurso

-- Exerc�cio 03 
-- Apresentar a quantidade de alunos matriculados por nome da turma

	SELECT nomeTurma, COUNT (tbAluno.nomeAluno) AS Alunos FROM tbTurma
	INNER JOIN tbMatricula ON tbMatricula.codTurma = tbTurma.codTurma
	INNER JOIN tbAluno ON tbAluno.codAluno = tbMatricula.codAluno
	GROUP BY nomeTurma

-- Exerc�cio 04
-- Apresentar a quantidade de alunos que fizeram matricula em maio de 2016

	SELECT COUNT (tbAluno.nomeAluno) AS 'ALUNOS MATRICULADOS EM MAIO DE 2016' FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno 
	WHERE MONTH (dataMatricula) = 05 AND YEAR (dataMatricula) = 2016

-- Exerc�cio 05
-- Apresentar o nome dos alunos em ordem alfab�tica ao lado do nome das turmas em que est�o matriculados

	SELECT distinct nomeAluno, nomeTurma FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
	INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
	ORDER BY nomeAluno ASC 

-- Exerc�cio 06
-- Apresentar o nome dos cursos e os hor�rios em que eles s�o oferecidos

	SELECT nomeCurso, horarioTurma FROM tbCurso
	INNER JOIN tbTurma ON tbCurso.codCurso = tbTurma.codTurma

-- Exerc�cio 07
-- Apresentar a quantidade de alunos nascidos por estado

	SELECT natuAluno, COUNT(natuAluno)  AS 'Quantidade de alunos por estado' FROM tbAluno
	GROUP BY natuAluno

-- Exerc�cio 08
-- Apresentar o nome dos alunos ao lado da data de matr�cula no formato dd/mm/aaaa

	SELECT nomeAluno, CONVERT(varchar (15), dataMatricula, 103) AS 'Data da Matr�cula' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno

-- Exerc�cio 09
-- Apresentar os alunos cujo nome comece com A e que estejam matriculados no curso de ingl�ss

	SELECT nomeAluno, nomeCurso from tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codTurma
	INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
	INNER JOIN tbCurso ON  tbTurma.codCurso = tbCurso.codCurso
	WHERE nomeAluno LIKE 'M%' and tbCurso.codCurso = 1

-- Exerc�cio 10
-- Apresentar a quantidade de matriculas feitas no ano de 2016
	
	SELECT dataMatricula, COUNT(nomeAluno) FROM tbMatricula
	INNER JOIN tbAluno ON tbMatricula.codAluno = tbAluno.codAluno
	WHERE YEAR(dataMatricula) = 2016
	GROUP BY dataMatricula

-- Exerc�cio 11
-- Apresentar a quantidade de matriculas por nome do curso
	SELECT COUNT (dataMatricula) as 'Quantidades de Matriculas', (nomeCurso) as 'Nome Curso' FROM tbCurso
	INNER JOIN tbTurma ON tbCurso.codCurso = tbTurma.codCurso
	INNER JOIN tbMatricula ON tbTurma.codTurma = tbMatricula.codTurma
	WHERE tbCurso.nomeCurso IN ('ingl�s', 'alem�o', 'espanhol')
	GROUP BY nomeCurso;

-- Exerc�cio 12
-- Apresentar a quantidade de alunos que fazemos cursos que custam mais de R$300,00
	SELECT COUNT (nomeAluno) as 'Quantidade de alunos', (valorCurso) as 'valor curso' FROM tbCurso
	INNER JOIN tbTurma ON tbCurso.codCurso = tbTurma.codCurso
	INNER JOIN tbMatricula ON tbTurma.codTurma = tbMatricula.codTurma
	INNER JOIN tbAluno ON tbMatricula.codAluno = tbAluno.codAluno
	WHERE tbCurso.valorCurso  > 300.00
	GROUP BY valorCurso;

-- Exerc�cio 13
-- Apresentar os nomes dos alunos que fazem o curso de alem�o
	SELECT (nomeAluno) as 'Nome Alunos', (nomeCurso) as 'Curso de Alem�o' FROM tbCurso
	INNER JOIN tbTurma ON tbCurso.codCurso = tbTurma.codCurso
	INNER JOIN tbMatricula ON tbTurma.codTurma = tbMatricula.codTurma
	INNER JOIN tbAluno ON tbMatricula.codAluno = tbAluno.codAluno
	WHERE tbCurso.nomeCurso = 'alem�o'
	GROUP BY nomeAluno, nomeCurso

