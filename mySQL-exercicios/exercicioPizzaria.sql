-- Apagar Banco de Dados db_quitanda
-- DROP DATABASE db_quitanda;

-- Recriar o Banco de dados 
CREATE DATABASE db_pizzaria_legal;

-- Selecionar o Banco de Dados
USE db_pizzaria_legal;

-- Criar a tabela tb_classes
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tamanho varchar(255) NOT NULL,
tipo varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela
INSERT INTO tb_categorias (tamanho,tipo)
VALUES ("Grande","Doce");

INSERT INTO tb_categorias (tamanho,tipo)
VALUES ("Grande","Salgada");

INSERT INTO tb_categorias (tamanho,tipo)
VALUES ("Média","Doce");

INSERT INTO tb_categorias (tamanho,tipo)
VALUES ("Média","Salgada");

INSERT INTO tb_categorias (tamanho,tipo)
VALUES ("Esfiha","Doce");

INSERT INTO tb_categorias (tamanho,tipo)
VALUES ("Esfiha","Salgada");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a tabela tb_personagens
CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
ingredientes varchar(255) NOT NULL,
preco decimal(6, 2) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela
INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id)
VALUES ("Calabresa", "Molho de tomate, calabresa e cebola",30.00, 2);

INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id)
VALUES ("Marguerita", "Molho de tomate, queijo, tomates fatiados e manjericão",25.00, 4);

INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id)
VALUES ("Frango com Catupiry", "Molho de tomate, frango desfiado e catupiry",45.00, 4);

INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id)
VALUES ("Frango com Catupiry", "Molho de tomate, frango desfiado e catupiry",60.00, 2);

INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id)
VALUES ("Brigadeiro", "Chocolate derretido, granulado e morangos",45.00, 1);

INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id)
VALUES ("Carne", "Carne moída, tomate e cebola picados",5.0, 6);

INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id)
VALUES ("Nutella", "Nutella e leite ninho",5.0, 5);

INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id)
VALUES ("Banana Caramelizada", "Bananas caramelizadas, canela e doce de leite",20.00, 3);


-- Visualiza todos os dados da tabela tb_personagens
SELECT * FROM tb_pizzas;

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco between 50.00 and 100.00;

select * from tb_pizzas where nome like '%m%';

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id;

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id where tipo="Doce";
