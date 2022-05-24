CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,

PRIMARY KEY (id)
); 

INSERT INTO tb_categorias(nome) VALUES ("curso");
INSERT INTO tb_categorias(nome) VALUES ("curso");
INSERT INTO tb_categorias(nome) VALUES ("curso");
INSERT INTO tb_categorias(nome) VALUES ("curso");
INSERT INTO tb_categorias(nome) VALUES ("curso");

CREATE TABLE tb_cursos(

id BIGINT auto_increment,
tipo VARCHAR(255) NOT NULL,
valor INT,
tempo VARCHAR (55),
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos(tipo, valor, tempo) VALUES ("Java", 50 , "10h");
INSERT INTO tb_cursos(tipo, valor, tempo) VALUES ("Python", 70 , "15h");
INSERT INTO tb_cursos(tipo, valor, tempo) VALUES ("C++", 550 , "6h");
INSERT INTO tb_cursos(tipo, valor, tempo) VALUES ("Git Githubb", 100 , "20h");
INSERT INTO tb_cursos(tipo, valor, tempo) VALUES ("Metodologia Scrum", 500 , "100h");
INSERT INTO tb_cursos(tipo, valor, tempo) VALUES ("Metodologia Agil", 1000 , "140h");
INSERT INTO tb_cursos(tipo, valor, tempo) VALUES ("Curso de algoritimos", 40 , "30h");
INSERT INTO tb_cursos(tipo, valor, tempo) VALUES ("mat basica ", 200 , "130h");



SELECT * FROM tb_cursos WHERE valor > 500;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;
SELECT * FROM tb_cursos WHERE tipo LIKE "%J%";
SELECT * FROM tb_cursos INNER JOIN tb_categorias ;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_classe.id= 3;