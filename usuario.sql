show databases;
create database usuarios;
use dbinfox;
create database dbinfox;
describe usuarios;
create table usuario(
id int primary key auto_increment,
usuario varchar (50) not null,
login varchar (10) not null unique,
senha varchar (10)
);
drop tables usuario;
show tables;
describe usuario;
insert into usuarios (usuario,login,senha)
values ('walace','admin','1234');
insert into usuarios (usuario,login,senha)
values ('dante','usuario','1234');
insert into usuarios (usuario,login,senha)
values ('ferdi','usuario','1234');

insert into usuarios (usuario,login,senha)
values ('gabi','usuario','1234');

insert into usuarios (usuario,login,senha)
values ('Bianca','usuario','1234');
-- armezenando um campo com criptografia

insert into usuario(usuarios,login,senha)
values ('kratos','kratos@usuario',md5('1234'));
alter table usuarios modify senha varchar (250);  
alter table usuarios modify login varchar(50);

select*from usuarios;
