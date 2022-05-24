CREATE DATABASE db_quitandaGeneration;

USE db_quitandaGeneration;

CREATE TABLE tb_produtos(
	id bigInt auto_increment,
    nome_produto varChar(100),
    tipo_produto varChar(100),
    em_estoque boolean,
    quantidade int,
    valor decimal(5,2),
    
    primary key(id)
);

INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Tomate italiano","Fruta",true,100,8.99);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Cebola branca","Legume",true,70,4.50);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Laranja lima","Fruta",true,120,3.50);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Couve manteiga","Verdura",true,40,1.99);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Repolho roxo","Verdura",false,0,5.99);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Maçã argentina","Fruta",true,80,7.50);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Banana prata","Fruta",true,100,4.99);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Alface lisa","Verdura",true,30,2.99);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Espinafre comum","Verdura",false,0,6.50);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Cenoura baby","Legume",false,0,8.00);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Batata doce branca","Legume",true,100,3.80);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Batata inglesa","Legume",true,120,3.20);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Agrião hidropônico","Verdura",true,12,3.10);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Beterraba comum","Legume",true,80,7.10);
INSERT INTO tb_produtos(nome_produto,tipo_produto,em_estoque,quantidade,valor)VALUE("Ameixa importada","Fruta",true,50,4.20);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos where tipo_produto = "Fruta";
SELECT * FROM tb_produtos where tipo_produto = "Legume";

UPDATE tb_produtos SET em_estoque = false where id = 13;
UPDATE tb_produtos SET quantidade = 0 where id = 13;

SET sql_safe_updates = 0;
DELETE FROM tb_produtos where tipo_produto = "Verdura";