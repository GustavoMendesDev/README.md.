-- é um comentário

/*
bloco 
de 
comentário
*/

-- modelo de dados do tipo realcional
-- Tabelas que se relacionam entra elas
-- Tabelas são compostas por colunas, linhas

-- Todos os comandos são em inglês
-- Todos os comandos terminam com Ponto e virgula(;)

-- Criar o banco de Dados ADSB

CREATE DATABASE adsb; 

-- ultilizar/selecionar/usar o Database criado
USE adsb;

-- Toda tabela tem uque ter um campo que torna aquela linha única
-- Essa coluna é chamada de Primaria - PRIMARY KEY - PK
-- Criar a tabela empresa
CREATE TABLE empresa (
id INT PRIMARY KEY,
nome VARCHAR(30),-- CHARCTER
responsavel VARCHAR (25)
);
-- DESCREVER O CAMPO DA TABELA
DESCRIBE empresa;
DESC empresa;

-- INSERIR AS EMPRESAS
INSERT INTO empresa VALUES
	(1, 'Accenture', 'Willian');
    
-- EXIBIR OS DADOS DAS EMPRESAS
SELECT id, nome, responsavel FROM empresa;
SELECT nome, responsavel FROM empresa;

-- INSERIR AS EMPRESAS
INSERT INTO empresa VALUES
	(2, 'Minsait', 'Yasmin'),
    (3, 'Stefanini', 'Ariel');
    
SELECT * FROM empresa;

-- EXIBIR APENAS OS S=DADOS DA EMPRESA STEFANINI
SELECT * FROM empresa
	WHERE nome = 'Stefanini';

-- EXIBIR AS EMPRESAS DIFERENTE DE STEFANINI
SELECT * FROM empresa
	WHERE nome != 'Stefanini';
    
-- EXIBIR AS EMPRESA QUE COMEÇAM COM A LETRA S
SELECT nome FROM empresa
	WHERE nome LIKE 'S%' OR nome LIKE 's%';
    
-- EXIBIR AS EMPRESAR QUE TERMINAM COM A LETRA I 
SELECT nome FROM empresa
	WHERE nome LIKE '%';

-- EXIBIR AS EMPRESAS QUE CONTEM A LETRA I 
SELECT nome FROM empresa
	WHERE nome LIKE '%i%';

-- EXIBIR AS EMPRESAS ONDE A SEGUNDA LETRA É D 
SELECT nome FROM empresa
	WHERE nome LIKE '_t%';

-- EXIBIR AS EMPRESAS ONDE A PENULTIMA LETRA É N
SELECT nome FROM empresa
	WHERE nome LIKE '%n_';

-- EXIBIR AS EMPRESA EM ORDEM CRESCENTE PELO NOME
SELECT * FROM empresa ORDER BY responsavel ASC; 

-- EXIBIR AS EMPRESAS EM ORDEM DESCRESCENTE PELO NOME
SELECT * FROM empresa ORDER BY responsavel DESC;

