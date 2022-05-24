CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigInt auto_increment,
	nome_colaborador varchar(255),
    CPF bigInt,
    conta_banc bigInt,
    agencia_banc bigInt,
    salario decimal(9,2),
    
    primary key(id)
);

SELECT * from tb_colaboradores;

INSERT INTO tb_colaboradores(nome_colaborador,CPF,conta_banc,agencia_banc,salario)VALUE("Maria da Silva","00100200345","12345","0123","3800.00");
INSERT INTO tb_colaboradores(nome_colaborador,CPF,conta_banc,agencia_banc,salario)VALUE("José Souza","00100200356","12356","0145","2800.00");
INSERT INTO tb_colaboradores(nome_colaborador,CPF,conta_banc,agencia_banc,salario)VALUE("Joana Machado","00100200312","12312","0121","4800.00");
INSERT INTO tb_colaboradores(nome_colaborador,CPF,conta_banc,agencia_banc,salario)VALUE("João Ferreira","00100201234","54321","0321","1800.00");
INSERT INTO tb_colaboradores(nome_colaborador,CPF,conta_banc,agencia_banc,salario)VALUE("Bruna Oliveira","00100200998","12398","0199","10000.00");

SELECT * from tb_colaboradores where salario >2000;
SELECT * from tb_colaboradores where salario <2000;

UPDATE tb_colaboradores SET salario = 3200 where id = 2;