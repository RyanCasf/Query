use sistema;

SELECT 'Colaborador', nome 
FROM pes02_colaborador
	WHERE nome LIKE '%a%'
UNION
SELECT 'Contribuinte', nome
FROM pes03_contribuinte
	WHERE nome LIKE '%a%'
ORDER BY nome;

