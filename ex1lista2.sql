CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT auto_increment,
raca VARCHAR(255) NOT NULL,

PRIMARY KEY (id)
); 

INSERT INTO tb_classes(raca) VALUES ("Arqueiro");
INSERT INTO tb_classes(raca) VALUES ("Bruxa");
INSERT INTO tb_classes(raca) VALUES ("Espadachin");
INSERT INTO tb_classes(raca) VALUES ("Guerreiro");
INSERT INTO tb_classes(raca) VALUES ("Fada");

CREATE TABLE tb_personagens(

id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,
ataque INT,
defesa INT,
cor VARCHAR (55),
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome, ataque, defesa, cor) VALUES ("Lissandre", 1000 ,3000, "roxa");
INSERT INTO tb_personagens(nome, ataque, defesa, cor) VALUES ("Bart", 900 ,5000, "amarelo");
INSERT INTO tb_personagens(nome, ataque, defesa, cor) VALUES ("Sonya", 400 ,10000, "azul");
INSERT INTO tb_personagens(nome, ataque, defesa, cor) VALUES ("Lulu", 2000 ,5000, "roxa");
INSERT INTO tb_personagens(nome, ataque, defesa, cor) VALUES ("Master yi", 5000 ,1000, "verde");
INSERT INTO tb_personagens(nome, ataque, defesa, cor) VALUES ("Blitzcrank", 2000 ,2000, "Dourado");
INSERT INTO tb_personagens(nome, ataque, defesa, cor) VALUES ("Ahri", 1000 ,2000, "vermelha");
INSERT INTO tb_personagens(nome, ataque, defesa, cor) VALUES ("Jinx", 3000 ,1000, "Azul");

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE ataque BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";
SELECT * FROM tb_personagens INNER JOIN tb_classes ;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id= 1;



