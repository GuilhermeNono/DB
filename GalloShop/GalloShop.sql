-- Criar o Banco de Dados
CREATE DATABASE IF NOT EXISTS GalloShop;

-- Exibir os Bancos de Dados do Servidor
-- SHOW DATABASES

-- Colocar o banco de dados em uso
USE GalloShop;

-- Excluir um banco de dados
-- DROP DATABASE IF EXISTS GalloShop;

-- Criar a tabela de Categorias
CREATE TABLE IF NOT EXISTS Category
(
	Id		SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name	VARCHAR(30),
    CONSTRAINT PK_Category PRIMARY KEY(Id)
);

-- Criar a tabela de Marcas
CREATE TABLE IF NOT EXISTS Brand
(
	Id		SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name	VARCHAR(30) NOT NULL
);
    
-- Alterar uma tabela adicionar uma constraint
ALTER TABLE Brand ADD  CONSTRAINT PK_Brand PRIMARY KEY(Id);

-- Criar tablea de Produtos
CREATE TABLE IF NOT EXISTS Product 
(
	Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(70) NOT NULL,
    Description VARCHAR(8000),
    Storage    INT UNSIGNED NOT NULL DEFAULT 0,
    StorageMin INT UNSIGNED NOT NULL DEFAULT 0,
    Cost DECIMAL(10,2) NOT NULL DEFAULT 0,
	Price DECIMAL(10,2) NOT NULL DEFAULT 0,
    CategoryId SMALLINT UNSIGNED NOT NULL
    
);


