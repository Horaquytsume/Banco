/**
Agenda de contatos
@author walace oliveira
*/
 -- pesquisar banco de dados disponiveis
show databases;
-- criando um banco de dados
create database dbagendas;

-- remover um banco de dados
drop database dbagenda;
-- selecionar o banco de dados
use dbagendas;

-- criando uma tabela no banco de dados
create table contatos(
id int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null,
email varchar(50) unique
);


-- verificar tabelas disponiveis no banco
show tables;
-- comando usado para descrever a tabela
describe contatos;
-- comando usado para alterar o nome de um campo (cabeçalho) da tabela
alter table contatos change nome contato varchar(50) not null;
-- Comando usado para descrever a tabela
describe contatos;

drop database dbagendas;

-- Comando usado para alterar o nome de um campo(cabeçalho) da tabela
alter table contatos change nome contato varchar(50) not null;



-- Comando usado para adicionar um novo campo a tabela
alter table contatos add column obs varchar(250);

-- comando usado para adcionar um novo campp em um lugar especifico
alter table contatos add column fone2 varchar(15) after fone;

-- comando usado para modificar o tipo de dado e/ou variçoes do campo

alter table contatos modify column fone2 varchar(15) not null after fone;
alter table contatos modify email varchar (100);
alter table contatos modify email varchar (100) unique;
-- comando usado para apagar um campo d tabela
alter table contatos drop column fone2;
-- comando usado para remover uma tabela
drop table contatos;


/*
CRUD (do inglês: Create Read Update Delete)
São as quatro operações básicas que podem ser
realizadas em banco de dados que usam o modelo
relacional.



CREATE (inserção do registro(dados) na tabela)
READ (pesquisa dos dados na(s) tabela(s))
UPDATE (alteração de algum registro da tabela)
DELETE (exclusão de um registro da tabela)



*/



/* crud create (insert)*/

insert into contatos (nome,fone,email)
values ('Bill Gates','99999-1111','bill@email.com');

insert into contatos (nome,fone)
values ('Beatriz','99999-2222');
insert into contatos (nome,fone,email)
values ('Linus Torvalds','99999-3333','linux@email.com');
 insert into contatos (nome,fone,email)
values ('Ana Maria','99999-4444','ana@email.com');

insert into contatos (nome,fone,email)
values ('camelo da silva','95555-1111','camelao@email.com');

insert into contatos (nome,fone,email)
values ('Renato augusto','98888-2222','renato@email.com');

insert into contatos (nome,fone,email)
values ('Duilio monteiro alves','95555-1111','duilio@email.com');


insert into contatos (nome,fone)
values ('Casio silva','96666-3333');

insert into contatos (nome,fone,email)
values ('Cristiano Ronaldo','91234-5678','cristiano@email.com');

insert into contatos (nome,fone,email)
values ('Caetano veloso','97777-8080','caetano@email.com');

/* crud create (insert) */
-- selecionar todos os registros da tabela
select * from contatos;

-- selecionar todos registros em ordem alfabética (asc desc)
select * from contatos order by nome asc;
select * from contatos order by nome desc;

/* CRUD READ (Select) */
-- selecionar todos os registros da tabela
select * from contatos;



-- selecionar todos registros em ordem alfabética (asc desc)
select * from contatos order by nome asc;
select * from contatos order by nome desc;



-- selecionar um registro específico
select * from contatos where nome='Ana Maria';
select * from contatos where id=1;



-- selecionar campos específicos da tabela
select nome from contatos;
select nome,fone from contatos order by nome asc;



-- filtrar nomes que começam com a letra B
select * from contatos where nome like 'B%';

-- excluindo um registro da tabela (usar sempre o id "SEGURANÇA")
delete from contatos where id=4;

-- selecionar um registro específico
select * from contatos where nome='Ana Maria';
select * from contatos where id=2;

-- selecionar campos específicos da tabela
select nome from contatos;
select nome,fone from contatos order by nome asc;
/* CRUD UPDATE (update) */
-- alterando um dado específico do registro da tabela (usar sempre o id "SEGURANÇA")

update contatos set fone='941234-8090' where id=4;
update contatos set email='bia@email.com' where id=2;
-- alterando todos os dados do registro
update contatos set nome='Willian Gates',fone='32456-9000',email='bill@outlook.com' where id=1;

