show databases;
create database carrinhobdcompra;
drop database carrinhobdcompra;
-- Criando uma tabela no baco de dados
create table carrinho(
id int primary key auto_increment,
produto varchar(40) not null,
valor varchar(40) not null,
quantidade varchar(50) 

);

use carrinhobdcompra;
show tables;
describe carrinho;
drop table carrinho;
-- A linha abaixo modifica o tipo de dado de um campo
-- decimal(10,2) 10 digitos com duas casas decimais

alter table carrinho modify valor decimal(10,2) not null;


insert into carrinho( produto,valor,quantidade)

values('lapis',1,10);

insert into carrinho( produto,valor,quantidade)

values('caneta',1.25,50);

insert into carrinho( produto,valor,quantidade)

values('régua',3.50,20);

insert into carrinho( produto,valor,quantidade)

values('borracha',1.05,40);

insert into carrinho( produto,valor,quantidade)

values('cola',2.50,5);

insert into carrinho( produto,valor,quantidade)

values('apontador',0.50,40);

insert into carrinho( produto,valor,quantidade)

values('caderno',18,20);

insert into carrinho( produto,valor,quantidade)

values('bloco de notas',4,3);

insert into carrinho( produto,valor,quantidade)

values('folha sulfite A4',0.20,10);

insert into carrinho( produto,valor,quantidade)

values('branquinho',3,20);

select * from carrinho;

-- operaçoes matematicas
select sum(valor*quantidade) as total from carrinho;
