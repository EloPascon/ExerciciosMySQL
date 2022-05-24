CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,

PRIMARY KEY (id)
); 

INSERT INTO tb_pizzas(nome) VALUES ("Mussarela");
INSERT INTO tb_pizzas(nome) VALUES ("Marguerita");
INSERT INTO tb_pizzas(nome) VALUES ("Portuguesa");
INSERT INTO tb_pizzas(nome) VALUES ("Moda da casa");
INSERT INTO tb_pizzas(nome) VALUES ("Chocolate");

CREATE TABLE tb_categorias(

id BIGINT auto_increment,
borda VARCHAR(255) NOT NULL,
valor INT,
tamanho VARCHAR (55),
tipo VARCHAR (55),
cats_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (cats_id) REFERENCES tb_pizzas(id)
);

INSERT INTO tb_categorias(borda, valor, tamanho, tipo) VALUES ("c/ borda", 45 ,"g", "salgada");
INSERT INTO tb_categorias(borda, valor, tamanho, tipo) VALUES ("s/ borda", 30 ,"g", "doce");
INSERT INTO tb_categorias(borda, valor, tamanho, tipo) VALUES ("c/ borda", 40,"g", "salgada");
INSERT INTO tb_categorias(borda, valor, tamanho, tipo) VALUES ("c/ borda", 40 ,"g", "salgada");
INSERT INTO tb_categorias(borda, valor, tamanho, tipo) VALUES ("s/ borda", 30 ,"g", "doce");
INSERT INTO tb_categorias(borda, valor, tamanho, tipo) VALUES ("s/ borda", 30 ,"g", "doce");
INSERT INTO tb_categorias(borda, valor, tamanho, tipo) VALUES ("c/ borda", 70 ,"g", "salgada");
INSERT INTO tb_categorias(borda, valor, tamanho, tipo) VALUES ("c/ borda", 50 ,"g", "salgada");


SELECT * FROM tb_categorias WHERE valor > 45;
SELECT * FROM tb_categorias WHERE valor BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";
SELECT * FROM tb_categorias INNER JOIN tb_pizzas ;
SELECT * FROM tb_categorias INNER JOIN tb_pizzas ON tb_cats.id= 4; 