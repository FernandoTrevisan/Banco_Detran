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

insert into estado (sigla, nome) values ("SP", "São Paulo");
insert into estado (sigla, nome) values ("MG", "Minas Gerais");
insert into estado (sigla, nome) values ("PR", "Paraná");



insert into cidade (id_estado, nome) values (1, "Mococa");
insert into cidade (id_estado, nome) values (1, "Cajuru");
insert into cidade (id_estado, nome) values (2, "Guaxupé");
insert into cidade (id_estado, nome) values (3, "Curitiba");



insert into sexo (inicial, nome) values ("M", "Masculino");
insert into sexo (inicial, nome) values ("F", "Feminino");



insert into agente (matricula, nome, contratacao) values ("123", "Jão", "CLT");
insert into agente (matricula, nome, contratacao) values ("456", "Zé", "CLT");
insert into agente (matricula, nome, contratacao) values ("789", "Toin", "CLT");



insert into infracao(descricao, valor, pontos) values ("Transitar em velocidade superior à máxima permitida em até 20%", 85.15, 5);
insert into infracao(descricao, valor, pontos) values ("Avançar o sinal vermelho do semáforo ou a parada obrigatória", 293.47, 7);
insert into infracao(descricao, valor, pontos) values ("Falta do cinto de segurança", 195.32, 5);



insert into marca (nome) values ("Volkswagen"), ("Chevrolet"), ("Fiat"), ("Ford"), ("Pegeot"), ("Renault");



insert into cor (nome) values ("Vermelho"), ("Branco"), ("Azul"), ("Verde"), ("Preto");



insert into modelo (id_marca, nome) values (1, "Polo"), (1, "Fusca"), (2, "Chevette"), (3, "Palio"), (4, "Ká"), (1, "Gol"), (2, "Opala");



insert into proprietario (id_cidade, id_sexo, nome, cpf, logradouro, numero, complemento, bairro, cep) values 
(2, 1, "Prof. Tiago", "12345678910", "Rua dos Professores", "666", "Casa", "Centro", "14240000");



insert into veiculo (id_modelo, id_proprietario, id_cor, placa, cadastro) values (1, 1, 2, "EVA4960", "do Prof");
insert into veiculo (id_modelo, id_proprietario, id_cor, placa, cadastro) values (2, 1, 2, "BLD7764", "do Prof");
insert into veiculo (id_modelo, id_proprietario, id_cor, placa, cadastro) values (6, 1, 3, "CFU0412", "do Prof");
insert into veiculo (id_modelo, id_proprietario, id_cor, placa, cadastro) values (7, 1, 5, "ZZZ0666", "Troco pelo Gol");



insert into multa (id_agente, id_veiculo, id_cidade, id_infracao, lancamento, data_multa, hora, local_multa) values 
(3, 1, 3, 2, "Condutor sem vergonha", "2018-12-30", "00:22", "Praça do Centro");

insert into multa (id_agente, id_veiculo, id_cidade, id_infracao, lancamento, data_multa, hora, local_multa) values 
(1, 1, 2, 3, "Com camisa do vasco", "2018-12-31", "08:15", "Avenida do rio");

insert into multa (id_agente, id_veiculo, id_cidade, id_infracao, lancamento, data_multa, hora, local_multa) values 
(2, 1, 1, 3, "Tocando música que machuca o coração", "2018-12-31", "11:30", "Vale da Sofrência");


-- INSERINDO MAIS PROPRIETÁRIOS
INSERT INTO proprietario (id_cidade, id_sexo, nome, cpf, logradouro, numero, complemento, bairro, cep) VALUES
(1, 1, "Joazim", "12345678910", "Rua dos Multados", "2", "Casa", "Centro", "14240000"),
(2, 1, "Juquinha", "12354896214", "Rua José Bonifácio", "89", "Comercio", "Jd. das Trevas", "13240000"),
(3, 2, "Mariazinha", "78923578214", "Av José Santos", "66", "Casa", "Centro", "14240000"),
(4, 1, "Zezinho", "96532578921", "Rua Antonio dos Santos", "100", "Casa", "Quebrada", "12240000");

-- INSERINDO MAIS VEÍCULOS
INSERT INTO veiculo (id_modelo, id_proprietario, id_cor, placa, cadastro) VALUES 
(3, 2, 1, "YDX5892", "Licenciado"),
(4, 3, 2, "KYN0169", "Licenciado"),
(5, 4, 5, "OKY0101", "Licenciado"),
(1, 5, 4, "YAG0101", "Licenciado");


-- INSERINDO MAIS MULTAS
INSERT INTO multa (id_agente, id_veiculo, id_cidade, id_infracao, lancamento, data_multa, hora, local_multa) VALUES 
(1, 2, 1, 1, "Agente Rodoviário", "2019-02-28", "00:22", "Rua"),
(2, 2, 1, 1, "Agente Rodoviário", "2018-05-30", "13:25", "Avenida"),
(1, 3, 3, 3, "Agente Rodoviário", "2019-05-30", "14:33", "Praça do Centro"),
(1, 4, 3, 2, "Agente Rodoviário", "2017-03-14", "15:30", "Praça José Gomes"),
(3, 5, 4, 2, "Agente Rodoviário", "2017-12-23", "17:18", "Rua"),
(3, 1, 4, 3, "Agente Rodoviário", "2016-08-19", "09:26", "Estacionamento"),
(1, 1, 3, 1, "Agente Rodoviário", "2018-11-15", "10:34", "Praça da Matriz"),
(3, 1, 3, 3, "Agente Rodoviário", "2019-01-28", "15:23", "Praça de pedágio");