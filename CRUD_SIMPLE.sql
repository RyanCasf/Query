CREATE DATABASE Duozada;
USE Duozada;

CREATE TABLE pes01_usuario 
(
	chave int auto_increment primary key,
    nome varchar(255),
    nomeFantasia varchar(255),
    desativado tinyint(1) default(0),
    email text,
    dataCadastro date default(curdate())
);

ALTER TABLE pes01_usuario ADD cancelado boolean default(false);

SELECT * FROM pes01_usuario;
insert INTO pes01_usuario (nome, nomeFantasia, email) values ("Ryan", "RyanCasF", "r@gmail.com"), ("Felipe" , "Ryfer", "y@gmail.com");
DROP TABLE pes01_usuario;


SELECT IFNULL(CONCAT(u.nome, ' - ', u.nomeFantasia), u.nomeFantasia) AS Usuario 
FROM pes01_usuario u 
WHERE u.desativado = 0 AND u.nome LIKE '%%';


DELETE FROM duozada.mth01_match;
DROP DATABASE test;