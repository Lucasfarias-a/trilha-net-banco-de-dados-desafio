--1. Buscar o nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM
	Filmes


-- 2. Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
ORDER BY Ano ASC

-- 3. Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Id = 28

-- 4. Buscar os filmes lan�ados em 1997
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Ano = 1997

-- 5. Buscar os filmes lan�ados ap�s o ano 2000
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Ano > 2000

-- 6. Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Duracao > 100 AND Duracao < 150
ORDER BY 
	Duracao ASC

-- 7. Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
	Ano,
	COUNT(*) AS Quantidade_de_filmes
FROM
	Filmes
GROUP BY
	Ano
ORDER BY 
	Quantidade_de_filmes DESC

-- 8. Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM
	Atores
WHERE
	Genero = 'M'

-- 9. Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM
	Atores
WHERE
	Genero = 'F'
ORDER BY
	PrimeiroNome ASC

-- 10. Buscar o nome do filme e o g�nero
SELECT
    Filmes.Nome AS Nome_do_Filme,
    Generos.Genero AS Genero
FROM 
    Filmes
INNER JOIN 
    FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN 
    Generos ON FilmesGenero.IdGenero = Generos.Id;

-- 11. Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT
    Filmes.Nome AS Nome_do_Filme,
    Generos.Genero AS Genero
FROM 
    Filmes
INNER JOIN 
    FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN 
    Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE
	Genero = 'Mist�rio'

-- 12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
    Filmes.Nome AS Nome_do_Filme,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM 
    Filmes
INNER JOIN
    ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN
    Atores ON ElencoFilme.IdAtor = Atores.Id;
