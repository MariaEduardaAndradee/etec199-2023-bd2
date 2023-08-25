
--EXERCICOS--
--a)A quantidade de livros agrupado pelo nome do gênero--
SELECT tbGenero, COUNT(*) AS QuantidadeLivros FROM tbLivro
GROUP BY tbGenero;

--b)A soma das páginas agrupada pelo nome do autor--
SELECT tbAutor, SUM(Paginas) AS SomaPaginas FROM tbLivro
	GROUP BY tbAutor;

--c)A média de páginas agrupada pelo nome do autorem ordem alfabética (de A a Z)--
SELECT tbAutor, AVG(Paginas) AS MediaPaginas FROM tbLivro
	GROUP BY tbAutor
	ORDER BY tbAutor ASC;

--d)A quantidade de livros agrupada pelo nome da editoraem ordem alfabética inversa (de Z a A)--
SELECT tbEditora, COUNT(*) AS QuantidadeLivros FROM tbLivros
	GROUP BY tbEditora
	ORDER BY tbEditora DESC;

--e)A soma de páginas doslivrosagrupados pelo nome doautor que sejam de autores cujo nome comece com a letra “C”--
SELECT tbAutor, SUM(Paginas) AS SomaPaginas FROM tbLivros
	WHERE tbAutor LIKE 'C%'
	GROUP BY tbAutor;

