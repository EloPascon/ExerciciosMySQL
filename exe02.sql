/*Atividade 2 mysql */
CREATE DATABASE db_ecomerce;

USE db_ecomerce ;

CREATE TABLE tb_produtos (
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,
valor INT,
cor VARCHAR (55) ,
descricao VARCHAR(100),

PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, valor, cor, descricao)
VALUES ("Iphone", 5000 ,"branco" , "celular branco , 128gb");
INSERT INTO tb_produtos(nome, valor, cor, descricao)
VALUES ("Ipad", 7000 ,"preto" , "tablet preto , 64gb");
INSERT INTO tb_produtos(nome, valor, cor, descricao)
VALUES ("rimel", 200 ,"preto" , "maquiagem");
INSERT INTO tb_produtos(nome, valor, cor, descricao)
VALUES ("casaco", 400 ,"damasco" , "casaco sobretudo damasco");
INSERT INTO tb_produtos(nome, valor, cor, descricao)
VALUES ("calça", 500 ,"jeans" , "calça jeans");
INSERT INTO tb_produtos(nome, valor, cor, descricao)
VALUES ("bota", 600 ,"preta" , "bota preta , textura croco");
INSERT INTO tb_produtos(nome, valor, cor, descricao)
VALUES ("chinelo", 100 ,"rosa" , "havaiana rosa plastica");
INSERT INTO tb_produtos(nome, valor, cor, descricao)
VALUES ("sombra", 300 ,"colorida" , "paleta de sombras multicolors");

SELECT * FROM tb_produtos ORDER BY valor > 500;

SELECT * FROM tb_produtos ORDER BY valor <= 500;

 UPDATE tb_produtos
 SET nome= 'ipads'
 WHERE id=2;
