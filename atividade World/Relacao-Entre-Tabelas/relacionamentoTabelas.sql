-- Pesquisas com relacionamento entre tabelas
select
	city.*,
    country.Name as 'Country Name'
    from city, country
    where city.CountryCode = country.code;

-- JOIN: INNER, LEFT, RIGHT
select
	c.*,
    P.Name as 'Country Name' from city c INNER JOIN country p on c.CountryCode = p.code;
    
-- LEFT OU RIGHT
select
	c.*,
    P.Name as 'Country Name' from city c left JOIN country p on c.CountryCode = p.code;

select produto.*, categoria.nome from produto inner join categoria on produto.categoriaId = categoria.Id;

select itemvenda.*, produto.nome as 'Produto', categoria.nome as 'Categoria' from itemvenda inner join produto on itemvenda.ProdutoId = produto.Id
	inner join categoria on produto.categoriaId = categoria.Id;



