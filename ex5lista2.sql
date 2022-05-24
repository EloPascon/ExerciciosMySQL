CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,

PRIMARY KEY (id)
); 

INSERT INTO tb_categorias(nome) VALUES ("Cimento");
INSERT INTO tb_categorias(nome) VALUES ("tijolo");
INSERT INTO tb_categorias(nome) VALUES ("tinta");
INSERT INTO tb_categorias(nome) VALUES ("porta");
INSERT INTO tb_categorias(nome) VALUES ("pincel");

CREATE TABLE tb_produtos(

id BIGINT auto_increment,
tipo VARCHAR(255) NOT NULL,
valor INT,
quantidade VARCHAR (55),
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("material construção", 50 , "100kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("decoração", 70 , "150kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("material construção", 55 , "175kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("material construção", 100 , "300kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("decoração", 50 , "100kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("material construção", 20 , "140kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("decoração", 40 , "100kg");
INSERT INTO tb_produtos(tipo, valor, quantidade) VALUES ("material construção ", 65 , "130kg");



SELECT * FROM tb_produtos WHERE valor > 100;
SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;
SELECT * FROM tb_produtos WHERE tipo LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_classe.id= 3;