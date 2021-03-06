# Joins Diagram - Sets
CREATE TABLE gam01_jogo
(
	chave int auto_increment primary key,
    nome varchar(255),
    usuario_chave int
);

INSERT INTO gam01_jogo (nome, usuario_chave) VALUES ("DOTA", 1), ("LOL", 3), ("LOL", 1), ("HS", 2);

SELECT IFNULL(u.nome, u.nomeFantasia) AS 'Usuario', GROUP_CONCAT(DISTINCT(j.nome)) AS 'Game'
FROM duozada.pes01_usuario u
LEFT OUTER JOIN duozada.gam01_jogo j ON j.usuario_chave = u.chave 
WHERE u.desativado = 0 
GROUP BY u.chave;

# games mais jogados
SELECT j.nome AS 'Game' FROM gam01_jogo j
GROUP BY j.nome 
ORDER BY COUNT(j.usuario_chave) DESC;

SELECT * FROM gam01_jogo;

# SELF 
SELECT u.nome AS Nome, u.dataCadastro As data
FROM pes01_usuario u, pes01_usuario uu  
WHERE YEAR(u.dataCadastro) = YEAR(uu.dataCadastro) AND uu.chave != u.chave;