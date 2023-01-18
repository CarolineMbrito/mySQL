use exercicio1;

CREATE TABLE colaboradores (
    id INT NOT NULL AUTO_INCREMENT,
    nome varchar(150) not null,
    salario decimal(8,2) not null,
    cargo varchar(50) not null,
    setor varchar(30),
    primary key(id)
);

select * from colaboradores;

insert into colaboradores(nome,salario,cargo,setor)
values ("Carol","99999.88","Back-End","Aulas");

insert into colaboradores(nome,salario,cargo,setor)
values ("Cassia","98899.90","Spring","Aulas");

insert into colaboradores(nome,salario,cargo,setor)
values ("Camila","977999.88","Front-End","Aulas");

insert into colaboradores(nome,salario,cargo)
values ("Thiago","1299.88","Java");

insert into colaboradores(nome,salario,cargo)
values ("William","18899.88","Javascript");

select * from colaboradores where salario > 2000; 
select nome, salario from colaboradores where salario < 2000;

update colaboradores set salario = 1000 where id=5;
    
