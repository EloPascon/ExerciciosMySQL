/*Atividade 3 mysql */
CREATE DATABASE db_escola;

USE db_escola ;

CREATE TABLE tb_alunes (
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,
idade INT,
ano INT ,
notas DECIMAL,

PRIMARY KEY (id)
);

INSERT INTO tb_alunes(nome, idade, ano, notas)
VALUES ("João", 11 ,5 , 8);
INSERT INTO tb_alunes(nome, idade, ano, notas)
VALUES ("Maria", 13 ,7 , 5);
INSERT INTO tb_alunes(nome, idade, ano, notas)
VALUES ("Adalberto", 12 ,6 , 5);
INSERT INTO tb_alunes(nome, idade, ano, notas)
VALUES ("fabricia", 10 ,4 , 6);
INSERT INTO tb_alunes(nome, idade, ano, notas)
VALUES ("isabella", 15 ,9 , 7);
INSERT INTO tb_alunes(nome, idade, ano, notas)
VALUES ("Eloísa", 14 ,9 , 10);
INSERT INTO tb_alunes(nome, idade, ano, notas)
VALUES ("Julia", 13 ,7 , 6);
INSERT INTO tb_alunes(nome, idade, ano, notas)
VALUES ("Luana", 7 ,2 , 5);


SELECT * FROM tb_alunes ORDER BY notas > 7;

SELECT * FROM tb_alunes ORDER BY notas <= 7;

 UPDATE tb_produtos
 SET nome= 'Maria Clara'
 WHERE id=2;