# Math - Numéricas
SELECT 
    AVG(p.preco) AS Media,
    AVG(ROUND(p.preco, 0)) AS MediaPonderada,
    MAX(ROUND(p.preco, 2)) AS MaiorPreco,
	MIN(p.preco) AS MenorPreco,
    SUM(ROUND(p.preco, 0)) AS SomatóraiGeral
FROM prt01_produto p;

INSERT INTO prt01_produto (preco, descricao) VALUES (12, "D");

CREATE TABLE prt01_produto 
(
	chave int auto_increment primary key,
    preco double,
    descricao varchar(255)
);

# relatório produtos maiores que a média
SELECT p.* FROM prt01_produto p
 WHERE p.preco > (SELECT AVG(p.preco) FROM prt01_produto p);

SELECT * FROM pes01_usuario u
WHERE u.chave IN ();