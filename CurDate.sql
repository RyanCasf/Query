# Match
CREATE TABLE mth01_Match
(
	chave int auto_increment primary key,
    data date default(curdate()), 
    pessoa_curtido_chave int,
    pessoa_curtiu_chave int
);

INSERT INTO mth01_match(pessoa_curtido_chave, pessoa_curtiu_chave) 
	VALUES (1,2), (2,1);

SELECT * FROM mth01_match m;
