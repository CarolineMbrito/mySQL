create database exercicio3;

use exercicio3;

CREATE TABLE estudantes (
    id INT NOT NULL AUTO_INCREMENT,
    nome varchar(150) not null,
    serie varchar(200) not null,
    sala int not null,
    nota double not null,
    materia varchar(100) not null,
    primary key(id)
);

select * from estudantes;

insert into estudantes(nome,serie,sala,nota,materia)
values ("Ashley","Oitava-Série","12","8.0","Artes");

insert into estudantes(nome,serie,sala,nota,materia)
values ("Deborah","Sexta-Série","8","10.0","Português");

insert into estudantes(nome,serie,sala,nota,materia)
values ("Amélia","Sétima-Série","11","9.8","Ed.Física");

insert into estudantes(nome,serie,sala,nota,materia)
values ("Louise","Oitava-Série","12","7.0","Inglês");

insert into estudantes(nome,serie,sala,nota,materia)
values ("Carlos","Quinta-Série","7","3.5","Matemática");

insert into estudantes(nome,serie,sala,nota,materia)
values ("James","Sexta-Série","5","1.5","Geografia");

insert into estudantes(nome,serie,sala,nota,materia)
values ("Higor","Nona-Série","14","2.0","Hístoria");

select * from estudantes where nota > 7.0; 
select * from estudantes where nota < 7.0;

update estudantes set nome = "Jameson" where id=6;
    
