-- Comandos DQL - Data Query Language
-- SELECT
-- SINTAXE:
--   SELECT <COLUNAS QUE VOCÊ QUER EXIBIR AO USUÁRIO> FROM <NOME TABELA>

-- Exibir todos os Tipos de pokemons existentes
select Id, Name, Color from Types;
select * from Types;

-- Exibir todos os campos dos pokemons ordenados por Número
-- ORDER BY Campo <ASC, DESC>, ordem crescente é o padrão
SELECT * FROM Pokemons ORDER BY Number;

-- Exibir todos os campos dos pokemos ordenador por peso, do mais pesado para o leve
SELECT Number, Name, Weight, Height FROM Pokemons ORDER BY Weight DESC;

-- Filtrar os dados - WHERE campo numérico
SELECT * FROM Types WHERE Id = 7;

/* Exibir os Pokemons com Altura igual ou maior a 1.5 */
SELECT * FROM Pokemons WHERE Height >= 1.5;

/* Exibir os Pokemons com Peso menor que 10 */
SELECT Number, Name, Weight FROM Pokemons WHERE Weight < 10;

/* Exibir os Pokemons com Altura igual ou maior a 1.5 e Peso menor que 10 */
SELECT Number, Name, Weight, Height FROM Pokemons WHERE Height >= 1.5 and Weight < 10;

/* Exibir os Tipos com Id = 10 e 17 */
SELECT * FROM Types WHERE Id = 10 or Id = 17;

/* Exibir os Tipos onde o Id não for 7 */
SELECT * FROM Types WHERE Id <> 7;

-- Filtrar os dados - WHERE campo texto -> USAR O LIKE
/* Nome = Elétrico */
SELECT * FROM Types WHERE Name = 'Eletrico';
SELECT * FROM Types WHERE Name Like 'Eletrico';

/* % ao Final de um texto, pesquisar todos os valores daquele campo que comecem o texto informado */
SELECT * FROM Pokemons WHERE Name = 'F%';

-- % no ínicio de um texto
SELECT * FROM Pokemons WHERE Name = '%o';

-- % no meio de um texto


-- Filtrando por Gênero
-- Exibir pokemons que podem ser encontrados em ambos os gêneros
-- GenderId 3 -> Masculino e Feminino


-- GenderId 1 -> Masculino


-- GenderId 2 -> Feminino


-- GenderId 4 -> Desconhecido

