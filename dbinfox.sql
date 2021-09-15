/**
Agenda de contatos
Aluno: Jose walace
Atividade Projeto Banco de dados usários - iniciado em 1/09/2021
*/
-- Pesquisar bancos de dados disponíveis
show databases;

-- Criando um banco de dados
create database dbinfox;

-- Remover um banco de dados
drop database dbinfox;


-- Criando uma tabela no baco de dados
create table usuarios(
id int primary key auto_increment,
usuario varchar(50) not null,
login varchar(50) not null,
senha varchar(250) 
);

-- Selecionar o banco de dados sempre que for trabalha sempre tem que iniciar
use dbinfox;

-- Verificar tabelas disponível
show tables;

-- Comando usado para descrever a tabela
describe usuarios;

-- preenchimento único
alter table usuarios modify login varchar(10) unique not null;
-- preenchimento não obrigatório
alter table usuarios modify senha varchar(10); 



-- Comando usado para apagar um campo da tabela
alter table usuarios drop column obs;

-- Comando para remover uma tabela
drop table usuarios;

-- CRUD Criando o cadastro de banco de dados sem colocar o id cujo ele automáticamente distribui para diferênciar um cadastro igual
insert into usuarios (usuario,login, senha) values ('Camila','camila@gmail.com','12345');

-- Armazenando um campo com criptografia
insert into usuarios (usuario,login, senha) values ('Kratos','kratosdasilva@gmail.com', md5('1234'));
insert into usuarios (usuario,login, senha) values ('Goku','Gokuoliveira@gmail.com', md5('46584'));
insert into usuarios (usuario,login, senha) values ('Cidinei','cidineibatista@gmail.com', md5('48754545'));
insert into usuarios (usuario,login, senha) values ('Vegeta','Vegeta@gmail.com', md5('42125454546'));
insert into usuarios (usuario,login, senha) values ('Marcão','marcaodopovo@gmail.com', md5('4456464654'));

-- ordem alfabética pode selecionar todas as listas em ordem alfabética (asc)
select * from usuarios order by usuario asc;
-- modificando a tabela do campo senha

alter table usuarios modify senha varchar(250);
alter table usuarios modify login varchar(50);


select * from usuarios;
-- Tabela de clientes (clientes da assistência técnica) 
create table clientes(
idcli int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null
);
 
 describe clientes;
 
 insert into clientes (nome,fone) values ('José de Assis','91478-1152');
 insert into clientes (nome,fone) values ('Kelly Cristina','91496-1123');
 
 select * from clientes; 
 
 -- Tabela de OS (Ordem de serviços)
 create table tbOs(
 os int primary key auto_increment,
 equipamento varchar(250) not null, 
 defeito varchar(250) not null,
 dataOs timestamp default current_timestamp, 
 statusOs varchar(50) not null, 
 valor decimal (10,2),
 idcli int not null, 
 foreign key(idcli) references clientes(idcli)
 );
 
 describe tbOs;
 
insert into tbOs(equipamento,defeito,statusOs,idcli)
values('Notebook Lenovo modelo','Não liga','Orçamento',1);

insert into tbOs(equipamento,defeito,statusOs,valor,idcli)
values('PC Positivo','Formatação do Windows','Aprovado',80,2);

select * from tbOs;
 
