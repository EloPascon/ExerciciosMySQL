CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

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
quantidade VARCHAR (55),
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("carne de vaca", 45 , "100kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("carne de frango", 70 , "150kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("carne de porco", 55 , "175kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("carne de vaca", 100 , "300kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("carne de porco", 50 , "100kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("carne de frango", 20 , "140kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("carne de vaca", 40 , "100kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("carne de frango ", 65 , "130kg");



SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE tipo LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_classe.id= 3;