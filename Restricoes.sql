# Restrições de db
-- UNIQUE	 	Força as entradas na túpula a serem únicos;
-- FOREIGN KEY	Indixação única;
-- PRIMARY KEY	Junção de NOT NULL e UNIQUE;
-- CHECK		Condição especifica para entrada;
-- DEFAULT		Associa um valor padrão a uma entrada nula.

CREATE TABLE prt02_item
(
	chave int auto_increment primary key,
    descricao varchar(255),
	produto_chave INT,
    data date DEFAULT(curdate()),
    CHECK (descricao IS NOT NULL),
    
    FOREIGN KEY (produto_chave) REFERENCES prt01_produto(chave)
);

select * from prt02_item;
drop table prt02_item;