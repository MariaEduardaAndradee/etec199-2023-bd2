
--EXERCICOS--
--a)A quantidade de livros agrupado pelo nome do g�nero--
SELECT tbGenero, COUNT(*) AS QuantidadeLivros FROM tbLivro
GROUP BY tbGenero;

--b)A soma das p�ginas agrupada pelo nome do autor--
SELECT tbAutor, SUM(Paginas) AS SomaPaginas FROM tbLivro
	GROUP BY tbAutor;

--c)A m�dia de p�ginas agrupada pelo nome do autorem ordem alfab�tica (de A a Z)--
SELECT tbAutor, AVG(Paginas) AS MediaPaginas FROM tbLivro
	GROUP BY tbAutor
	ORDER BY tbAutor ASC;

--d)A quantidade de livros agrupada pelo nome da editoraem ordem alfab�tica inversa (de Z a A)--
SELECT tbEditora, COUNT(*) AS QuantidadeLivros FROM tbLivros
	GROUP BY tbEditora
	ORDER BY tbEditora DESC;

--e)A soma de p�ginas doslivrosagrupados pelo nome doautor que sejam de autores cujo nome comece com a letra �C�--
SELECT tbAutor, SUM(Paginas) AS SomaPaginas FROM tbLivros
	WHERE tbAutor LIKE 'C%'
	GROUP BY tbAutor;

