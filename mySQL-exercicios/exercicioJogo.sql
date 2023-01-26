-- Apagar Banco de Dados db_quitanda
-- DROP DATABASE db_quitanda;

-- Recriar o Banco de dados 
CREATE DATABASE db_generation_game_online;

-- Selecionar o Banco de Dados
USE db_generation_game_online;

-- Criar a tabela tb_classes
CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
arma varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela
INSERT INTO tb_classes (tipo,arma)
VALUES ("Mago de Gelo","Machado");

INSERT INTO tb_classes (tipo,arma)
VALUES ("Cavaleiro das Trevas","Espada de Ares");

INSERT INTO tb_classes (tipo,arma)
VALUES ("Elfo","Arco e Flecha");

INSERT INTO tb_classes (tipo,arma)
VALUES ("Troll da Montanha","Bastão de Pedra");

INSERT INTO tb_classes (tipo,arma)
VALUES ("Feiticeiro","Cajado Mágico");

INSERT INTO tb_categorias (descricao)
VALUES ("outros");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_classes;

-- Criar a tabela tb_personagens
CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
ataque int NOT NULL,
defesa int NOT NULL,
magia varchar(255) NOT NULL,
nome varchar(255) NOT NULL,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Insere dados na tabela
INSERT INTO tb_personagens (ataque, defesa, magia, nome, classe_id)
VALUES (5000, 1000, "Super Força", "Okdar", 4);

INSERT INTO tb_personagens (ataque, defesa, magia, nome, classe_id)
VALUES (2000, 3000, "Flechas incandescentes", "Link", 3);

INSERT INTO tb_personagens (ataque, defesa, magia, nome, classe_id)
VALUES (4500, 2500, "Mágia Negra","Kratos", 2);

INSERT INTO tb_personagens (ataque, defesa, magia, nome, classe_id)
VALUES (1000, 5000, "Aumenta a taxa de Ataque da equipe", "Flinn", 1);

INSERT INTO tb_personagens (ataque, defesa, magia, nome, classe_id)
VALUES (3000, 3000, "Tira o ataque dos inimigos da equipe","Annelise", 5);

INSERT INTO tb_personagens (ataque, defesa, magia, nome, classe_id)
VALUES (5000, 4000, "Super Força", "Anubis", 4);

INSERT INTO tb_personagens (ataque, defesa, magia, nome, classe_id)
VALUES (1000, 4000, "Controla a natureza", "Zelda", 3);

INSERT INTO tb_personagens (ataque, defesa, magia, nome, classe_id)
VALUES (5000, 5000, "Benção de Thor","Atreus", 1);


-- Visualiza todos os dados da tabela tb_personagens
SELECT * FROM tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like '%c%';

select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id;

select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id where tb_classes.id=1;
