-- CRIANDO BASE DE DADOS
CREATE DATABASE aulaTest;

-- USANDO A TABELA ATUAL
USE aulaTest;

/*CRIANDO TABELA*/
CREATE TABLE aluno(
id integer primary key, 
nome varchar (255),
endereco varchar(255)
);

-- INSERINDO REGISTRO
INSERT INTO aluno(id, nome, endereco)values(1,'Leonardo', 'Rua A');
INSERT INTO aluno(id, nome, endereco)values(2,'Alexsandre', 'Rua B');
INSERT INTO aluno(id, nome, endereco)values(3,'Gustavo', 'Rua C');
INSERT INTO aluno(id, nome, endereco)values(4,'Matheus', 'Rua D');

-- CONSULTANDO INFORMAÇÕES
SELECT nome FROM aluno
where id=1;

-- ALTERANDO REGISTRO
update aluno
set nome='carlos'
where id = 1;

-- EXCLUINDO REGISTRO
DELETE from aluno
where id=4;