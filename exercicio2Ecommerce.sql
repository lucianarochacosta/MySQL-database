CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigInt auto_increment,
	nome_produto varchar(255),
    valor decimal(5,2),
    marca varchar(255),
    quantidade int,
    cor varchar(255),
    
    primary key(id)
);

SELECT * from tb_produtos;

INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUE("Camiseta","110.50","Guti","10","Marrom");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUE("Calça","90.50","Luis Vitao","15","Azul");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUE("Meia","30.20","Nicke","20","Branca");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUE("Boné","15.45","GEP","40","Vermelho");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUE("Cinto","10.99","Okaley","30","Preto");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUE("Óculos","70.50","Prade","25","Bege");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUE("Vestido","150.95","Versate","10","Roxo");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUE("Casaco","165.99","Zera","5","Amarelo");

SELECT * from tb_produtos where valor >500;
SELECT * from tb_produtos where valor <500;

UPDATE tb_produtos SET marca = "Superema" where id = 2;

ALTER TABLE tb_produtos
MODIFY COLUMN valor decimal(9,2);