CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunes(
	id bigInt auto_increment,
	nome_alune varchar(255),
    serie int,
    turma varchar(1),
    disciplina varchar(255),
    nota decimal(4,2),
    
    primary key(id)
);

SELECT * from tb_alunes;

INSERT INTO tb_alunes(nome_alune,serie,turma,disciplina,nota)VALUE("Vinícius Lima","9","a","Matemática","10");
INSERT INTO tb_alunes(nome_alune,serie,turma,disciplina,nota)VALUE("Larissa Souza","6","b","Português","8.75");
INSERT INTO tb_alunes(nome_alune,serie,turma,disciplina,nota)VALUE("Amanda Pontes","8","c","Geografia","6.5");
INSERT INTO tb_alunes(nome_alune,serie,turma,disciplina,nota)VALUE("Henrique Gonçalves","8","b","Educação Física","8.5");
INSERT INTO tb_alunes(nome_alune,serie,turma,disciplina,nota)VALUE("Ricardo Pereira","9","b","Matemática","6.0");
INSERT INTO tb_alunes(nome_alune,serie,turma,disciplina,nota)VALUE("Vanessa Cardoso","7","c","Inglês","5.5");
INSERT INTO tb_alunes(nome_alune,serie,turma,disciplina,nota)VALUE("Giovana Fonseca","8","a","Artes","6.25");
INSERT INTO tb_alunes(nome_alune,serie,turma,disciplina,nota)VALUE("Adrielle Clemente","6","c","Matemática","9.25");

SELECT * from tb_alunes where nota >7;
SELECT * from tb_alunes where nota <7;

UPDATE tb_alunes SET turma = "a" where id = 8;