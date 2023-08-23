SELECT p.* 
FROM prt01_produto p
WHERE p.preco > (SELECT AVG(p.preco) FROM prt01_produto p);