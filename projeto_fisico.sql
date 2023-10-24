create database projeto_detran;

use projeto_detran;

create table PROPRIETARIO (
    id int auto_increment,
	nome varchar(150),
	cpf char(11),
	cadastro varchar(255),
	id_SEXO int,
	id_CIDADE int,
	id_ENDERECO int,
	primary key(id),
	foreign key (id_SEXO) references SEXO(id),
	foreign key (id_CIDADE) references CIDADE(id),
	foreign key (id_ENDERECO) references ENDERECO(id)
);

create table ENDERECO (
    id int auto_increment,
	logradouro varchar(150),
	numero varchar(40),
	complemento varchar(255),
	bairro varchar(50),
	cep char(8),
	primary key(id)
);

create table SEXO (
    id int auto_increment,
	inicial varchar(50),
	nome varchar(150),
	primary key(id)
);

create table CIDADE (
    id int auto_increment,
	nome varchar(40),
	id_ESTADO int,
	primary key(id),
	foreign key (id_ESTADO) references ESTADO(id)
);

create table ESTADO (
    id int auto_increment,
	sigla char(2),
	nome varchar(60),
	primary key(id)
);

create table VEICULO (
    id int auto_increment,
	placa char(7),
	cadastro varchar(255),
	id_COR int,
	id_MODELO int,
	primary key(id),
	foreign key (id_COR) references COR(id),
	foreign key (id_MODELO) references MODELO(id)
);

create table COR (
    id int auto_increment,
	nome varchar(60),
	primary key(id)
);

create table MODELO (
    id int auto_increment,
	nome varchar(100)
	id_MARCA int,
	primary key(id),
	foreign key (id_MARCA) references MARCA(id)
);

create table MARCA (
    id int auto_increment,
	nome varchar(40)
);

create table MULTA (
    id int auto_increment,
	lancamento varchar(255),
	data_multa date,
	hora varchar(15)
	local_multa varchar(150),
	id_VEICULO int,
	id_AGENTE int,
	id_INFRACAO int,
	id_CIDADE int,
	primary key (id),
	foreign key (id_VEICULO) references VEICULO(id),
	foreign key (id_AGENTE) references AGENTE(id),
	foreign key (id_INFRACAO) references INFRACAO(id),
	foreign key (id_CIDADE) references CIDADE(id)
);

create table AGENTE (
    id int auto_increment,
    matricula varchar(255),
	nome varchar(150),
	contratacao varchar(255),
	primary key(id)
);
   
create table INFRACAO (
    id int auto_increment,
	descricao varchar(255),
	valor double,
	pontos double,
	primary key(id)
);		
