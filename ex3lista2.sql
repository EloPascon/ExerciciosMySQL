CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,

PRIMARY KEY (id)
); 

INSERT INTO tb_categorias(nome) VALUES ("Chantinom");
INSERT INTO tb_categorias(nome) VALUES ("Naridrin");
INSERT INTO tb_categorias(nome) VALUES ("Dipirona");
INSERT INTO tb_categorias(nome) VALUES ("Rivotril");
INSERT INTO tb_categorias(nome) VALUES ("Strepsils");

CREATE TABLE tb_produtos(

id BIGINT auto_increment,
tipo VARCHAR(255) NOT NULL,
valor INT,
tamanho VARCHAR (55),
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(tipo, valor, tamanho) VALUES ("pra dor de estomago", 45 , "100ml");
INSERT INTO tb_produtos(tipo, valor, tamanho) VALUES ("pra dor de cabeça", 70 , "150ml");
INSERT INTO tb_produtos(tipo, valor, tamanho) VALUES ("pra nariz entupido", 55 , "175ml");
INSERT INTO tb_produtos(tipo, valor, tamanho) VALUES ("pra dor de ouvido", 100 , "300ml");
INSERT INTO tb_produtos(tipo, valor, tamanho) VALUES ("pra depressão", 50 , "100ml");
INSERT INTO tb_produtos(tipo, valor, tamanho) VALUES ("pra dor de cabeça", 20 , "140ml");
INSERT INTO tb_produtos(tipo, valor, tamanho) VALUES ("pra dor de estomago", 40 , "100ml");
INSERT INTO tb_produtos(tipo, valor, tamanho) VALUES ("pra dor nas costas", 65 , "130ml");



SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE tipo LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_classe.id= 3;