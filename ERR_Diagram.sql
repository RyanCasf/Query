USE sistema;

ALTER TABLE pes02_colaborador ADD COLUMN chave_pessoa int(11);
SELECT * FROM pes02_colaborador;
ALTER TABLE pes02_colaborador ADD FOREIGN KEY (chave_pessoa) REFERENCES pes01_pessoa(id);

ALTER TABLE pes03_contribuinte ADD COLUMN chave_pessoa int(11);
SELECT * FROM pes03_contribuinte;
ALTER TABLE pes03_contribuinte ADD FOREIGN KEY (chave_pessoa) REFERENCES pes01_pessoa(id);

select * from pes01_pessoa;
# Databse /  Reverse Engineer...  ( Ctrl + 'R' )