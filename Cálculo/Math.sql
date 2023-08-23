SELECT 
    AVG(p.preco) AS Media,
    AVG(ROUND(p.preco, 0)) AS MediaPonderada,
    MAX(ROUND(p.preco, 2)) AS MaiorPreco,
	MIN(p.preco) AS MenorPreco,
    SUM(ROUND(p.preco, 0)) AS SomatóraiGeral
FROM prt01_produto p;