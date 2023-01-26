-- Apagar Banco de Dados db_quitanda
-- DROP DATABASE db_quitanda;

-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");

INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ("outros");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Laranja", 3000, "2022-03-13", 10.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Tomate", 1105, "2022-03-15", 3.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;


-- a partir daqui é o código feito em aula
-- adicionar um novo atributo na tabela de categorias
alter table tb_categorias add desconto decimal;

SELECT * FROM tb_categorias;

-- criar uma nova categoria, utilizando o desconto (como não foi definido as casas decimais na criação, vai pegar apenas o valor antes do ponto)
-- ou seja, vai ficar com desconto 0
insert into tb_categorias (descricao,desconto) values ('Doces',0.05);

-- modificar o atributo desconto, para reconhecer as casas depois do ponto
alter table tb_categorias modify desconto decimal(4,2);

-- atualizar o desconto, usando o UPDATE filtrando o ID
update tb_categorias set desconto = 0.05 where id=7;

-- alterar o nome de algum dos atributos da tabela, sempre depois do change, colocar o nome original seguido do novo nome
alter table tb_categorias change desconto desconto_thi decimal(4,2);

-- mostrar toda a descrição da tabela, com toda a tipagem dos atributos
describe tb_categorias;

-- remover um atributo da tabela
alter table tb_categorias drop desconto_thi;

-- ******AQUI COMEÇAM AS CONSULTAS AVANÇADAS******
-- pesquisa com filtro1 E filtro2
select * from tb_produtos where preco > 5 and categoria_id = 1;

-- pesquisa com filtro1 OU filtro2
select * from tb_produtos where preco > 5 or categoria_id = 1;

-- pesquisa com negativa (não é de determinado ID, por exemplo)
select * from tb_produtos where not categoria_id = 2;

-- criar lista de dados para filtragem, usando o IN, pra evitar criar algo com muitos OR na consulta 
select * from tb_produtos where preco in (5,10,15);

-- ordenar os dados em ordem crescente
select * from tb_produtos where preco in (5,10,15) order by nome, preco;

-- selecionar dados dentro de um determinado intervalo, ordenando pelo preço, e na ordem alfabética invertida
select * from tb_produtos where preco between 5 and 15 order by  preco, nome desc;

-- pesquisa por texto, sem necessáriamente o texto ter que ser exato
-- %ra%   -> vai retornar todos os dados que tenham RA em qualquer lugar da pesquisa
select * from tb_produtos where nome like '%ra%';
-- %ra    -> vai retornar todos os dados que finalizem com RA
select * from tb_produtos where nome like '%ra';
-- ra%    -> vai retornar todos os dados que comecem com RA
select * from tb_produtos where nome like 'ra%';

-- pesquisar o maior valor dentro da tabela
-- MAX -> procura pelo maior valor dentro da tabela
select max(preco) from tb_produtos;

-- MIN -> pregar o menor valor dentro da tabela
select min(preco) from tb_produtos;

-- AVG -> average (vai pegar a média dos valores da tabela)
select avg(preco) from tb_produtos;

-- consulta composta para ver a média de preço dos produtos de uma determinada categoria
select categoria_id, avg(preco) from tb_produtos group by categoria_id;

-- mesma pesquisa de cima, mas em vez da média, somar todos os valores de produto de cada categoria
select categoria_id, sum(preco) from tb_produtos group by categoria_id;

-- contar a quantidade de itens de determinado intervalo de dados
select categoria_id, count(*) from tb_produtos group by categoria_id;


-- ******* Pesquisas com JOIN entre tabelas ******
-- utilizando o INNER JOIN (vai pegar apenas os dados que tenham relação entre as duas tabelas)
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

-- utilizando o LEFT JOIN (vai pegar todos os dados do INNER JOIN, mas tbm vai pegar todos os produtos que não tenham categoria)
select * from tb_produtos left join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

-- utilizando o RIGHT JOIN (vai pegar todos os dados do INNER JOIN, mas tbm vai pegar todas as categorias que não tenham produtos)
select * from tb_produtos right join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

-- pesquisa com INNER JOIN, filtrando os dados de cada uma das tabelas, e dando um apelido para um atributo, utilizando o AS
select nome, preco, tb_categorias.descricao as categoria 
	from tb_produtos inner join tb_categorias
	on tb_produtos.categoria_id = tb_categorias.id;
