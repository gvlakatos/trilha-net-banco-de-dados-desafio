SELECT * FROM Atores

SELECT * FROM ElencoFilme

SELECT * FROM Filmes

SELECT * FROM FilmesGenero

SELECT * FROM Generos

-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome LIKE '%De Volta para o Futuro%'

-- 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = '1997'

-- 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > '2000'

-- 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao BETWEEN 100 AND 150 ORDER BY Duracao

-- 7
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8
SELECT * FROM Atores WHERE Genero = 'M'
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

-- 9
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10
SELECT Nome, Genero
FROM Filmes 
INNER JOIN FilmesGenero ON IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = IdGenero

-- 11
SELECT Nome, Genero
FROM Filmes 
INNER JOIN FilmesGenero ON IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = IdGenero
WHERE Generos.Genero = 'Mistério'

-- 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM Filmes 
INNER JOIN ElencoFilme ON IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = IdAtor