SELECT 
M.Title AS 'TITULO',
M.Duration AS 'DURAÇÃO EM MINUTOS',
M.Duration / 60 AS 'DURAÇÃO EM HORAS',
M.MovieYear AS 'ANO DE ESTREIA'
FROM Movie M
WHERE M.MovieYear BETWEEN 1990 and 2010;

-- Funções Agregadas

-- Exibir a quantidade de filmes que estreiaram entre 1990 e 2010

SELECT 
	Count(*) AS 'Quantidade de filmes entre 1990 e 2010'
FROM Movie M
WHERE M.MovieYear BETWEEN 1990 and 2010;

-- Exibir a quantidade de filmes com duração maior que 150 minutos.

SELECT 
	Count(*) AS 'Quantidade de filmes entre 1990 e 2010'
FROM Movie M
WHERE M.Duration >= 150;

-- Exibir a maior duração existente entre os filmes cadastrados

SELECT 
	Max(Duration) AS 'Duração Maxima'
FROM Movie M;

-- Exibir a menor duração existente entre os filmes cadastrados

SELECT 
	Min(Duration) AS 'Duração Minima'
FROM Movie M;

-- Exibir ano do filme mais recente

SELECT 
	Max(MovieYear) AS 'Ano mais recente'
FROM Movie M;

-- Exibir ano do filme mais velho

SELECT 
	Min(MovieYear) AS 'Ano mais recente'
FROM Movie M;

-- Exibir o total de tempo necessario para assistir os filmes que estreiaram entre 1990 e 2010

SELECT 
	Sum(Duration) AS 'Tempo necessario para assistir os filmes'
FROM Movie M
WHERE M.MovieYear BETWEEN 1990 and 2010;

-- Exibir a media de tempo necessario para assistir os filmes que estreiaram entre 1990 e 2010

SELECT 
	AVG(Duration) AS 'Tempo necessario para assistir os filmes'
FROM Movie M
WHERE M.MovieYear BETWEEN 1990 and 2010;
