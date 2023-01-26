-- Apagar Banco de Dados db_quitanda
-- DROP DATABASE db_quitanda;

-- Recriar o Banco de dados 
CREATE DATABASE db_cidade_das_carnes;

-- Selecionar o Banco de Dados
USE db_cidade_das_carnes;

-- Criar a tabela tb_classes
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela
INSERT INTO tb_categorias (descricao)
VALUES ("Aves");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");

INSERT INTO tb_categorias (descricao)
VALUES ("Bovinos");

INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ("Suínos");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a tabela tb_personagens
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade varchar(255) NOT NULL,
preco decimal(6, 2) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Lombo Temperado", "2 Quilos", 50.00, 5);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Costela Gaúcha", "1 Quilo", 38.00, 3);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Linguiça de Frango", "3 Quilos", 45.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Bife", "4 Quilos", 62.00, 3);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Cartela de Ovos", "1 Dúzia", 15.00, 4);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Cominho", "1 Pacote", 4.0, 2);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Chuleta", "1 Quilo e meio", 25.00, 3);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Barriga de Porco", "2 Quilos", 55.00, 5);


-- Visualiza todos os dados da tabela tb_personagens
SELECT * FROM tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 50.00 and 150.00;

select * from tb_produtos where nome like '%c%';

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id where descricao="Bovinos";
