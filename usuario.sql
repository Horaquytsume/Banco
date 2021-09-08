show databases;
create database usuarios;
use dbinfox;
create database dbinfox;

create table usuario(
id int primary key auto_increment,
usuario varchar (50) not null,
login varchar (10) not null,
senha varchar (10)
);
show tables;
describe usuario;
