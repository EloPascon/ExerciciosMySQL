/*Atividade 1 mysql */
CREATE DATABASE db_rhsistem;

USE db_rhsistem ;

CREATE TABLE colaboradores (
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR (55),
idade INT ,
salario DECIMAL,

PRIMARY KEY (id)
);

INSERT INTO colaboradores(nome, cargo, idade, salario)
VALUES ("José do Carmo", "Dev Jr",35 , 5000 );
INSERT INTO colaboradores(nome, cargo, idade, salario)
VALUES ("Maria amélia", "Analista",20 , 2000  );
INSERT INTO colaboradores(nome, cargo, idade, salario)
VALUES ("Joana lucia aparecida", "Recrutadora",27 , 1000 );
INSERT INTO colaboradores(nome, cargo, idade, salario)
VALUES ("Marcelo Santos", "Engenheiro",49 , 7000  );
INSERT INTO colaboradores(nome, cargo, idade, salario)
VALUES ("Eloísa Pascon", "Dev Senior",19 , 10.000 );

SELECT * FROM colaboradores ORDER BY salario >=2000;

SELECT * FROM colaboradores ORDER BY salario <=2000;

 UPDATE tb_produtos
 SET nome= 'Juliano'
 WHERE id=1;










