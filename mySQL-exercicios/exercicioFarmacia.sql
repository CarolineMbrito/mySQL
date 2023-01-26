-- Apagar Banco de Dados db_quitanda
-- DROP DATABASE db_quitanda;

-- Recriar o Banco de dados 
CREATE DATABASE db_farmacia_bem_estar;

-- Selecionar o Banco de Dados
USE db_farmacia_bem_estar;

-- Criar a tabela tb_classes
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela
INSERT INTO tb_categorias (descricao)
VALUES ("Cosméticos");

INSERT INTO tb_categorias (descricao)
VALUES ("Medicamentos");

INSERT INTO tb_categorias (descricao)
VALUES ("Fitness");

INSERT INTO tb_categorias (descricao)
VALUES ("Higiene");

INSERT INTO tb_categorias (descricao)
VALUES ("Bebês");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a tabela tb_personagens
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int NOT NULL,
preco decimal(6, 2) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Chupeta", 2000, 15.00, 5);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Shampoo Seda", 8000, 24.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Xarope para Tosse", 4000, 20.00, 2);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Manguito Nike", 1000, 62.00, 3);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Merchiolatte", 5000, 5.0, 2);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Sabonete em barra", 7000, 4.0, 4);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Batom", 2000, 10.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Balança", 1500, 100.00, 3);


-- Visualiza todos os dados da tabela tb_personagens
SELECT * FROM tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 5.00 and 60.00;

select * from tb_produtos where nome like '%c%';

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id where descricao="Cosméticos";
