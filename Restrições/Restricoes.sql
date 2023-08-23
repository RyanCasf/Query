CREATE TABLE prt02_item
(
	chave int auto_increment primary key,
    descricao varchar(255),
	produto_chave INT,
    data date DEFAULT(curdate()),
    CHECK (descricao IS NOT NULL),
    
    FOREIGN KEY (produto_chave) REFERENCES prt01_produto(chave)
);