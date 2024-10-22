-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS SISTEMA_ACADEMICO;
USE SISTEMA_ACADEMICO;

-- Criação da tabela CURSO
CREATE TABLE `CURSO` (
  `curso_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `duracao` VARCHAR(4) NULL,
  PRIMARY KEY (`curso_id`)
);

-- Criação da tabela PROFESSOR
CREATE TABLE `PROFESSOR` (
  `professor_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL,
  `email` VARCHAR(60) NULL,
  `especialidade` VARCHAR(255) NULL,
  PRIMARY KEY (`professor_id`)
);

-- Criação da tabela DISCIPLINA
CREATE TABLE `DISCIPLINA` (
  `disciplina_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL,
  `CURSO_idCURSO` INT NOT NULL,
  `PROFESSOR_professor_id` INT NOT NULL,
  PRIMARY KEY (`disciplina_id`),
  INDEX `fk_DISCIPLINA_CURSO_idx` (`CURSO_idCURSO`),
  INDEX `fk_DISCIPLINA_PROFESSOR1_idx` (`PROFESSOR_professor_id`),
  FOREIGN KEY (`CURSO_idCURSO`) REFERENCES CURSO(`curso_id`),
  FOREIGN KEY (`PROFESSOR_professor_id`) REFERENCES PROFESSOR(`professor_id`)
);

-- Criação da tabela TURMA
CREATE TABLE `TURMA` (
  `turma_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL,
  `semestre` INT NULL,
  PRIMARY KEY (`turma_id`)
);

-- Criação da tabela ALUNO
CREATE TABLE `ALUNO` (
  `aluno_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `data_nascimento` DATE NULL,
  PRIMARY KEY (`aluno_id`)
);

-- Criação da tabela MATRICULA
CREATE TABLE `MATRICULA` (
  `matricula_id` INT NOT NULL AUTO_INCREMENT,
  `data_matricula` DATE NOT NULL,
  `ALUNO_aluno_id` INT NOT NULL,
  `TURMA_turma_id` INT NOT NULL,
  PRIMARY KEY (`matricula_id`),
  INDEX `fk_MATRICULA_ALUNO1_idx` (`ALUNO_aluno_id`),
  INDEX `fk_MATRICULA_TURMA1_idx` (`TURMA_turma_id`),
  FOREIGN KEY (`ALUNO_aluno_id`) REFERENCES ALUNO(`aluno_id`),
  FOREIGN KEY (`TURMA_turma_id`) REFERENCES TURMA(`turma_id`)
);

-- INSERINDO DADOS ALUNO
INSERT INTO ALUNO (nome, email, data_nascimento)
VALUES
  ('Leonardo de Brito', 'leonardobrito2707@gmail.com', '2006-07-27'),
  ('Carlos Anderson', 'carlosanderson@hotmail.com','1990-08-12'),
  ('Naiara Lionada','naiaralionada@gmail.com','2001-05-23'),
  ('Wendell Gabriel','wendelgabriel@yahoo.com','2016-11-06'),
  ('Magaret Kelvin','magaretkelvin@gmail.com','1956-01-30');

-- INSERINDO DADOS CURSO
INSERT INTO CURSO (nome, duracao)
VALUES
  ('Analise de IA','340h'),
  ('Engenharia Eletrica','560h'),
  ('Medicina','900h'),
  ('Defesa Virtual','200h'),
  ('Tarefas Gerais','120h');

-- INSERINDO DADOS PROFESSOR
INSERT INTO PROFESSOR (nome, email, especialidade)
VALUES 
  ('Jean Carlos dos Santos','jean2012carlos@gmail.com','Exatas'),
  ('Mariana Silva dos Santos','maririri10312@gmail.com','Algoritmos'),
  ('Marcelo Reis','marceloking21@hotmail.com','Matematica'),
  ('Fernanda Lima Barros','flbrwr@gmail.com','Historia'),
  ('Julina Abrantes','juju787@org.senai.br','Sociologia');

-- INSERINDO DADOS DISCIPLINA
INSERT INTO DISCIPLINA (nome, CURSO_idCURSO, PROFESSOR_professor_id)
VALUES
  ('Movimentação de Objetos', 1, 1),
  ('Fenômenos Físicos', 2, 2),
  ('Química Aplicada', 3, 3),
  ('Sistemas e Binários', 4, 4),
  ('Probabilidade e Combinação', 5, 5);

-- INSERINDO DADOS DA MATRICULA
INSERT INTO MATRICULA (data_matricula, ALUNO_aluno_id, TURMA_turma_id)
VALUES
  ('2018-09-11', 1, 1),
  ('2020-03-15', 2, 2),
  ('2019-06-05', 3, 3),
  ('2021-08-07', 4, 4),
  ('2023-01-25', 5, 5);

-- INSERINDO DADOS DA TURMA
INSERT INTO TURMA (nome, semestre)
VALUES
  ('G6120', 3),
  ('K2932', 2),
  ('P0812', 6),
  ('LOK19', 1),
  ('O08OL', 8);

-- CONSULTANDO DADOS DE TODAS AS TABELAS
SELECT * FROM ALUNO;
SELECT * FROM DISCIPLINA;
SELECT * FROM CURSO;
SELECT * FROM PROFESSOR;
SELECT * FROM MATRICULA;
SELECT * FROM TURMA;

-- DESATIVANDO O MÉTODO DE SEGURANÇA
SET SQL_SAFE_UPDATES 0;

-- EXCLUINDO DADOS DA TABELA ALUNO
DELETE FROM ALUNO WHERE data_nascimento < '1960-01-01';

-- EXCLUINDO DADOS DA TABELA DISCIPLINA
DELETE FROM DISCIPLINA WHERE nome = 'Fenômenos Físicos';

-- EXCLUINDO DADOS DA TABELA CURSO 
DELETE FROM CURSO WHERE curso_id > 5;
DELETE FROM CURSO WHERE nome = 'Medicina';

-- EXCLUINDO DADOS DA TABELA PROFESSOR
DELETE FROM PROFESSOR WHERE professor_id > 5;

-- EXCLUINDO DADOS DA TABELA TURMA 
DELETE FROM TURMA WHERE semestre <= 1;

-- EXCLUINDO DADOS DA TABELA MATRICULA
DELETE FROM MATRICULA WHERE data_matricula <= '2019-01-01';

-- ALTERANDO DADOS DA TABELA ALUNO
SELECT * FROM ALUNO;
UPDATE ALUNO 
SET nome = 'Carla Macedo Garvalho'
WHERE nome = 'Carlos Anderson';

-- ALTERANDO DADOS DA TABELA CURSO
SELECT * FROM CURSO;
UPDATE CURSO
SET duracao = '480h'
WHERE nome = 'Analise de IA';

-- ALTERANDO DADOS DA TABELA DISCIPLINA 
SELECT * FROM DISCIPLINA;
UPDATE DISCIPLINA 
SET nome = 'Criptografia de Dados'
WHERE nome = 'Tarefas Gerais';

-- ALTERANDO DADOS DA TABELA MATRICULA
SELECT * FROM MATRICULA;
UPDATE MATRICULA 
SET data_matricula = '2017-03-31'
WHERE matricula_id = 2;

-- ALTERANDO DADOS DA TABELA PROFESSOR 
SELECT * FROM PROFESSOR;
UPDATE PROFESSOR
SET email = 'fernandaLima2121@gmail.com'
WHERE nome = 'Fernanda Lima Barros';

-- ALTERANDO DADOS DA TABELA TURMA
SELECT * FROM TURMA;
UPDATE TURMA
SET nome = 'JHY37'
WHERE turma_id = 5;

-- FIM DO BANCO POR ENQUANTO
