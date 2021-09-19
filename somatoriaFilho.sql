CREATE DATABASE ficha;
USE ficha;

CREATE TABLE prt01_produto
(
	chave INT AUTO_INCREMENT,
    codigo VARCHAR(6),
    descricao VARCHAR(255),
    filho_chave INT,
    preco DECIMAL(19,2),
    PRIMARY KEY(chave)
);

CREATE TABLE prt02_produto_ficha
(
	chave INT AUTO_INCREMENT,
    codigo VARCHAR(6),
    descricao VARCHAR(255),
    pai_chave INT,
	preco DECIMAL(19,2),
    PRIMARY KEY(chave)
);

SELECT * FROM prt01_produto; # APPLY INSET
SELECT * FROM prt02_produto_ficha; # APPLY INSET

SELECT 1 AS nivel, CONCAT(p.codigo, ' - ', p.descricao) AS Produto, 
	(SELECT SUM(f2.preco) FROM prt02_produto_ficha f2 WHERE f2.pai_chave = f.pai_chave) AS Preco, SUM(1) AS Qtde
FROM prt01_produto p
INNER JOIN prt02_produto_ficha f ON f.pai_chave = p.chave
GROUP BY p.chave
UNION
SELECT 2 AS nivel, CONCAT(f.codigo, ' - ', f.descricao) AS Produto, SUM(f.preco) AS Preco, SUM(1) AS Qtde
FROM prt01_produto p
INNER JOIN prt02_produto_ficha f ON f.pai_chave = p.chave
GROUP BY f.chave;