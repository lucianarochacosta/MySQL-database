CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigInt auto_increment,
    sabor varChar(255),
	versao_veg boolean,
    
    primary key (id)
);

CREATE TABLE tb_pizzas(
	id bigInt auto_increment,
    nome varChar(255),
    tamanho varChar(1),
    borda_recheada boolean,
    valor decimal(5.2),
    
    categorias_id bigInt,
    
    primary key (id),
    foreign key (categorias_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

INSERT INTO tb_categorias(sabor,versao_veg) VALUES ("Doce", true);
INSERT INTO tb_categorias(sabor,versao_veg) VALUES ("Doce", false);
INSERT INTO tb_categorias(sabor,versao_veg) VALUES ("Tradicional", true);
INSERT INTO tb_categorias(sabor,versao_veg) VALUES ("Tradicional", false);
INSERT INTO tb_categorias(sabor,versao_veg) VALUES ("Especial", true);
INSERT INTO tb_categorias(sabor,versao_veg) VALUES ("Especial", false);

INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "P", true, 59.90, 4);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "P", false, 55.90, 4);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "M", true, 69.90, 4);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "M", false, 65.90, 4);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "G", true, 79.90, 4);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "G", false, 75.90, 4);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "P", true, 59.90, 3);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "P", false, 55.90, 3);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "M", true, 69.90, 3);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "M", false, 65.90, 3);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "G", true, 79.90, 3);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Marguerita", "G", false, 75.90, 3);
INSERT INTO tb_pizzas(nome,tamanho,borda_recheada,valor,categorias_id) VALUES ("Chocolate", "P", false, 39.90, 1);

SELECT * FROM tb_pizzas WHERE valor > 45;
SELECT * FROM tb_pizzas WHERE valor >= 50 AND valor <= 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id WHERE sabor = "Doce";