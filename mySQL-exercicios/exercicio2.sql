create database exercicio2;

use exercicio2;

CREATE TABLE produtos (
    id INT NOT NULL AUTO_INCREMENT,
    nome varchar(150) not null,
    valor decimal(8,2) not null,
    categoria varchar(50) not null,
    setor varchar(30),
    primary key(id)
);

select * from produtos;

insert into produtos(nome,valor,categoria,setor)
values ("Panela","50.00","Eletro-Domésticos","Cozinha");

insert into produtos(nome,valor,categoria,setor)
values ("Bicicleta","500.00","Esportiva","Esportes");

insert into produtos(nome,valor,categoria,setor)
values ("Pneu","150.00","Automotiva","Automóveis");

insert into produtos(nome,valor,categoria,setor)
values ("Celular","720.00","Eletrônicos","Eletrônica");

insert into produtos(nome,valor,categoria,setor)
values ("Tablet","800.00","Eletrônicos","Eletrônica");

insert into produtos(nome,valor,categoria,setor)
values ("Jogo de Talhetes","200.00","Ultensilhos Domésticos","Cozinha");

insert into produtos(nome,valor,categoria,setor)
values ("Toalha de Banho","50.00","Cama, mesa e banho","Doméstico");

select * from produtos where valor > 500; 
select * from produtos where valor < 500;

update produtos set valor = 30 where id=7;
    
