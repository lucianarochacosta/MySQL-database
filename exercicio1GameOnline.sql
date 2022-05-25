CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigInt auto_increment,
    classe_principal varChar(255),
    poder varChar(255),
    
    primary key (id)
);

CREATE TABLE tb_personagens(
	id bigInt auto_increment,
    nome varChar(255),
    vida bigInt,
    poder_ataque bigInt,
    poder_defesa bigInt,
    classes_id bigInt,
    
    primary key (id),
    foreign key (classes_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes(classe_principal,poder) VALUES ("Mago", "Teletransporte");
INSERT INTO tb_classes(classe_principal,poder) VALUES ("Bruxo", "Telecinese");
INSERT INTO tb_classes(classe_principal,poder) VALUES ("Druida", "Mudança de forma");
INSERT INTO tb_classes(classe_principal,poder) VALUES ("Xamã", "Manipulação dos elementos");
INSERT INTO tb_classes(classe_principal,poder) VALUES ("Paladino", "Cura");

INSERT INTO tb_personagens(nome,vida,poder_ataque,poder_defesa,classes_id) VALUES ("Merlin", 98, 5000, 3500, 1);
INSERT INTO tb_personagens(nome,vida,poder_ataque,poder_defesa,classes_id) VALUES ("Master", 80, 4000, 5000, 2);
INSERT INTO tb_personagens(nome,vida,poder_ataque,poder_defesa,classes_id) VALUES ("Aoif", 75, 4500, 2000, 3);
INSERT INTO tb_personagens(nome,vida,poder_ataque,poder_defesa,classes_id) VALUES ("Mika", 100, 6000, 4000, 4);
INSERT INTO tb_personagens(nome,vida,poder_ataque,poder_defesa,classes_id) VALUES ("Polaric", 60, 1800, 3000, 5);
INSERT INTO tb_personagens(nome,vida,poder_ataque,poder_defesa,classes_id) VALUES ("Eirie", 79, 1900, 2000, 5);
INSERT INTO tb_personagens(nome,vida,poder_ataque,poder_defesa,classes_id) VALUES ("Gandel", 87, 4500, 4000, 1);
INSERT INTO tb_personagens(nome,vida,poder_ataque,poder_defesa,classes_id) VALUES ("Ciprian", 42, 1800, 1500, 2);

SELECT * FROM tb_personagens where poder_ataque >= 2000;
SELECT * FROM tb_personagens where poder_defesa >= 1000 AND poder_defesa <= 2000 ;
SELECT * FROM tb_personagens where nome like "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id WHERE classe_principal = "Bruxo";