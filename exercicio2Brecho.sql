CREATE DATABASE db_brechoReuse;

USE db_brechoReuse;

CREATE TABLE tb_produtos(
	id bigInt auto_increment,
    nome_produto varChar(100),
    categoria varChar(100),
    marca varChar(100),
    marcas_de_uso boolean,
    valor decimal(5,2),
    
    primary key(id)
);

INSERT INTO tb_produtos(nome_produto,categoria,marca,marcas_de_uso,valor)VALUE("Regata algodão branca","Roupa","Guti",false,34.99);
INSERT INTO tb_produtos(nome_produto,categoria,marca,marcas_de_uso,valor)VALUE("Vestido cetim preto","Roupa","Zera",true,44.99);
INSERT INTO tb_produtos(nome_produto,categoria,marca,marcas_de_uso,valor)VALUE("Jaqueta jeans preta","Roupa","Doce Bacana",true,54.99);
INSERT INTO tb_produtos(nome_produto,categoria,marca,marcas_de_uso,valor)VALUE("Chapéu lã sintética cinza","Acessório","Le Le Branco",false,45.50);
INSERT INTO tb_produtos(nome_produto,categoria,marca,marcas_de_uso,valor)VALUE("Óculos aviador prateado","Acessório","Raiban",true,23.99);
INSERT INTO tb_produtos(nome_produto,categoria,marca,marcas_de_uso,valor)VALUE("Coturno couro sintético preto","Calçado","Schutaz",false,99.99);
INSERT INTO tb_produtos(nome_produto,categoria,marca,marcas_de_uso,valor)VALUE("Alpargata camurça bege","Calçado","Arezza",true,64.99);
INSERT INTO tb_produtos(nome_produto,categoria,marca,marcas_de_uso,valor)VALUE("Sandália bronze","Calçado","Vizani",false,109.99);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos where valor >= 50;
SELECT * FROM tb_produtos where valor < 50;
SELECT * FROM tb_produtos where id = 2;

UPDATE tb_produtos SET valor = 50.00 where id = 3;

DELETE FROM tb_produtos where id = 2;
DELETE FROM tb_produtos where id = 3;