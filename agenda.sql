/**
Agenda de contatos
@author walace oliveira
*/
 create database dbinfox;
show databases;
use dbinfox;

-- Tabela de usuários (funcionários da Assistência técnica
create table usuarios(
id int primary key auto_increment,
usuario varchar(50) not null,
login varchar(10) not null unique,
senha varchar(10)
);

describe usuarios;

-- Cadastrar 5 usuários na tabela -> login (cadastrar o email) -> senha (usar criptografia)
-- usuário 1 
insert into usuarios (usuario, login, senha)
values ('('Bill Gates','99999-1111','bill@email.com');, md5('111111'));

-- usuário 2 
insert into usuarios (usuario, login, senha)
values (' ('Beatriz','99999-2222');, md5('222222'));

-- usuário 3 
insert into usuarios (usuario, login, senha)
values  ('Linus Torvalds','99999-3333','linux@email.com'); md5('333333'));

-- usuário 4 
insert into usuarios (usuario, login, senha)
values ('Ana Maria','99999-4444','ana@email.com'); md5('444444'));

-- usuário 5 
insert into usuarios (usuario, login, senha)
values  ('camelo da silva','95555-1111','camelao@email.com'); md5('555555'));

-- aumentar o número de caracteres para senha criptografada
alter table usuarios modify senha varchar (250);
-- aumentar o tamanho do nome de login 
alter table usuarios modify login varchar (50);

--  inserir campo criptografado (número de cartão de crédito, senhas)
 
 
 
