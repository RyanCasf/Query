SELECT 
	CONCAT(UPPER(u.nome), ' - dnv - ', LOWER(u.nome)) AS Nome, 
	LENGTH(u.nome) AS QtdLetras,
	SUBSTRING(u.nomeFantasia, 0, 2) AS Sub,
    REPLACE(u.nomeFantasia, ' ', '') AS SemEspaco, 
	CAST(u.chave AS VARCHAR(255)) AS CAST
FROM usuario u
WHERE u.cancelado = 0;