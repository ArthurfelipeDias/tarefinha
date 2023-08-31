CREATE database TE901;
USE TE901;

CREATE TABLE t_cidade (
id_cidade int not null auto_increment primary key,
nome_cidade varchar(100) not null,
bairro_cidade varchar(100) not null,
 );

CREATE TABLE t_agencia (
id_agencia int not null auto_increment primary key,
end_agencia varchar(100),
contrato_agencia varchar(15),
id_cidade int
);
ALTER TABLE t_agencia
add foreign key (id_cidade) references t_cidade(id_cidade);

CREATE TABLE t_cargos(
id_func int not null auto_increment primary key,
nome_cargo varchar (50)
);

CREATE TABLE t_funcionario (
id_func int null auto_increment primary key,
registro_func varchar(6),
nome_func varchar(50),
CPF_func varchar(15),
end_func varchar(100) ,
data_admin date ,
