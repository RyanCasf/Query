CREATE DATABASE Duozada;
use Duozada;

create table pes01_usuario 
(
	chave int auto_increment primary key,
    nome varchar(255),
    nomeFantasia varchar(255),
    desativado tinyint(1) default(0),
    email text
);

SELECT * FROM pes01_usuario;
insert INTO pes01_usuario (nome, nomeFantasia, email) values ("Ryan", "RyanCasF", "r@gmail.com"), ("Felipe" , "Ryfer", "y@gmail.com");
drop table pes01_usuario;


SELECT IFNULL(CONCAT(u.nome, ' - ', u.nomeFantasia), u.nomeFantasia) AS Usuario 
FROM pes01_usuario u 
WHERE u.desativado = 0 AND u.nome LIKE '%%';




