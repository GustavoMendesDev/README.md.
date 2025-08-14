SHOW DATABASES; 

CREATE DATABASE adsb;

USE adsb;

CREATE TABLE aluno (
ra CHAR(8) PRIMARY KEY,
nome VARCHAR(50) NOT NULL, 
Email VARCHAR(60) UNIQUE,
dtNasc DATE -- EXEMPLO = 'YYYY-MM-DD' '1983-10-13'
);

INSERT INTO aluno VALUES 
    ('01252888', 'Cascuda','cascuda@gmail.com','2007-09-22') ;

 SELECT * FROM aluno;

INSERT INTO aluno (ra, nome) VALUES
     ('01234876', 'anderson'),
     ('01234875', 'vinicius');
     

-- ATUALIZAR EMAIL ANDERSON

UPDATE aluno SET email = 'andersonmendes@email.com',
 dtNasc = '2005-09-30'
 WHERE ra = '01234876';
 
 INSERT INTO aluno VALUES
  ('04567488','Aluno de CCO') ;
  
  DELETE FROM aluno
    WHERE ra = '04567488';
    
-- DROP TABLE DESTROI A TABELA E DELETE A INFORMAÇÃO DE DENTRO
-- OU SEJA, OS DOIS DESTROEM TUDO 

DESCRIBE aluno;

-- ALTERAR A TABELA, RENOMEANDO O NOME DO CAMPO DTNASC
ALTER TABLE aluno RENAME column dtNasc TO dataNascimento;

DESCRIBE aluno;
-- MODIFICAR O CAMPO DE EMAIL

ALTER TABLE aluno MODIFY COLUMN email VARCHAR(80); 

-- ADICIONAR UMA COLUNA 
ALTER TABLE aluno ADD COLUMN bairro VARCHAR(99);

SELECT * FROM aluno;

-- EXCLUIR UMA COLUNA DA TABELA
ALTER TABLE aluno DROP COLUMN bairro;

-- ADICIONAR COLUNA GENERO 
ALTER TABLE aluno ADD COLUMN genero CHAR(1);

-- CONSTRAINT = REGRA/CONFIGURAÇÃO/RESTRIÇÃO
-- CONSTRAINT TIPO CHECK 

/*ALTER TABLE aluno ADD CONSTRAINT chkGenero
CHECK(genero = 'f' OR genero = 'm' OR genero = 'n');
*/

ALTER TABLE aluno ADD CONSTRAINT chkGenero
CHECK(genero IN('f','m','n'));



 SELECT * FROM aluno ;

UPDATE aluno SET genero = 'm' 
WHERE ra = '01234875';

UPDATE aluno SET genero = 'n' 
WHERE ra = '01234876';

/* 
alter table 
 add comun 
 drop column 
  rename column 
  modify column 
  add constraint check 
  */
  DROP TABLE aluno;
  
  CREATE TABLE empresa (
id INT PRIMARY KEY auto_increment,
nome VARCHAR(50),
responsavel VARCHAR(45)
);

INSERT INTO empresa(nome,responsavel) VALUES
 ('Gustavo','Vanessa');
 
SELECT * FROM empresa; 

ALTER TABLE empresa auto_increment = 2000;

INSERT INTO empresa VALUES 
 (default, 'sou foda', null);
 
 -- LIMPAR OS DADOS DA TABELA 
TRUNCATE TABLE empresa;

SELECT * FROM empresa


 
  