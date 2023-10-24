create database detran;

use detran;

create table marca (
	id int auto_increment,
	nome varchar(150),
	primary key(id)	
);

create table modelo (
	id int auto_increment,
	nome varchar(150),
	id_marca int,
	primary key(id),
	foreign key(id_marca)
		references marca(id)
);

create table cor (
	id int auto_increment,
	nome varchar(150),
	primary key (id)
);

create table sexo (
	id int auto_increment,
	inicial char(1),
	nome varchar(20),
	primary key(id)
);

create table estado (
	id int auto_increment,
	sigla char(2),
	nome varchar(20),
	primary key(id)
);

create table infracao (
	id int auto_increment,
	descricao varchar(200),
	valor double (10,2),
	pontos int,
	primary key(id)
);

create table agente (
	id int auto_increment,
	matricula varchar(10),
	nome varchar(200),
	contratacao varchar (100),
	primary key (id)
);

create table cidade (
	id int auto_increment,
	nome varchar(150),
	id_estado int,
	primary key(id),
	foreign key (id_estado)
		references estado(id)
);

create table proprietario (
	id int auto_increment,
	nome varchar(200),
	cpf char(11),
	id_cidade int,
	id_sexo int,
	logradouro varchar(150),
	numero varchar (10),
	complemento varchar(100),
	bairro varchar (150),
	cep char (8),
	primary key (id),
	foreign key (id_cidade) references cidade(id),
	foreign key (id_sexo) references sexo (id)
);

create table veiculo (
	id int auto_increment,
	placa char(7),
	cadastro varchar(50),
	id_modelo int,
	id_proprietario int,
	id_cor int,
	primary key (id),
	foreign key (id_modelo) references modelo(id),
	foreign key (id_proprietario) references proprietario(id),
	foreign key (id_cor) references cor(id)
);


create table multa (
	id int auto_increment,
	lancamento varchar(150),
	data_multa date,
	hora time,
	local_multa varchar(150),
	id_agente int,
	id_veiculo int,
	id_cidade int,
	id_infracao int,
	primary key (id),
	foreign key (id_agente) references agente(id),
	foreign key (id_veiculo) references veiculo(id),
	foreign key (id_cidade) references cidade(id),
	foreign key (id_infracao) references infracao(id)
);
