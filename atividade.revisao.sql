CREATE DATABASE LOJA;
USE loja;

CREATE TABLE CLIENTE (
  codigo_cliente INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CPF CHAR(14)  NULL  ,
  nome VARCHAR(255)  NULL  ,
  sexo CHAR(1)  NULL  ,
  data_nascimento DATE  NULL    ,
PRIMARY KEY(codigo_cliente));

CREATE TABLE COMPRA (
  codigo_compra INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CLIENTE_codigo_cliente INTEGER UNSIGNED  NOT NULL  ,
  PRODUTO_codigo_produto INTEGER UNSIGNED  NOT NULL  ,
  total_unidades INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(codigo_compra)  ,
INDEX COMPRA_FKIndex1(CLIENTE_codigo_cliente)  ,
INDEX COMPRA_FKIndex2(PRODUTO_codigo_produto));


CREATE TABLE PRODUTO (
  codigo_produto INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(255)  NULL  ,
  marca VARCHAR(45)  NULL  ,
  preco FLOAT  NULL    ,
PRIMARY KEY(codigo_produto));

INSERT INTO CLIENTE (cpf,nome,sexo,data_nascimento)
VALUES
('111.111.111-11', 'Andreia Gabrielle', 'F', '2001-01-01'),
('222.222.222-22', 'Fernando Assis', 'M', '2018-12-03'),
('333.333.333-33', 'Kelly Amada', 'F', '1982-09-15'),
('444.444.444-44', 'Carla Francine', 'M', '2001-09-11'),
('555.555.555-55', 'Douglas Rafael', 'M', '2014-07-20');


INSERT INTO PRODUTO (nome,marca,preco)
VALUES 
('Luminaria', 'FrontLeds', ' 499.99'),
('Cadeira', 'FlexForm', '667.99'),
('Geladeira', 'Panasonic', '2799.99'),
('Fogão','Consul','1199.99'),
('Televisão', 'SAMSUNG', '3800.00');


SELECT * FROM PRODUTO;