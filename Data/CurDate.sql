CREATE TABLE mth01_Match
(
	chave int auto_increment primary key,
    data date default(curdate()), 
    pessoa_curtido_chave int,
    pessoa_curtiu_chave int
);