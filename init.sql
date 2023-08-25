DROP DATABASE IF EXISTS DB_TESTE;
CREATE DATABASE DB_TESTE;
USE DB_TESTE;

CREATE TABLE usuario (
    chave INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    nomeFantasia TEXT,
    excluido tinyint(1) default(0)
);

INSERT INTO usuario (nome, nomeFantasia) VALUES ("Nome 00", "Fantansia 00"), ("Nome 01", "Fantasia 01");

CREATE TABLE prt01_produto (
    CHAVE INT AUTO_INCREMENT PRIMARY KEY,
    codigo TEXT,
    descricao TEXT,
    preco DECIMAL(19,6) default(0.0), 
    excluido tinyint(1) default(0)
);

CREATE TABLE pes01_usuario (
    CHAVE INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    excluido tinyint(1) default(0)
);

CREATE TABLE pes02_colaborador (
    CHAVE INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    excluido tinyint(1) default(0)
);

CREATE TABLE pes03_contribuinte (
    CHAVE INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    excluido tinyint(1) default(0)
);