-- Escrito em SQL (Structred Query Language)

INSERT INTO PROPRIETARIO (nome, cpf, cadastro, id_SEXO, id_CIDADE, id_ENDERECO)
VALUES ("Daniel", "36482278078", "SIM", 1, 1, 1);

INSERT INTO PROPRIETARIO (nome, cpf, cadastro, id_SEXO, id_CIDADE, id_ENDERECO)
VALUES ("Eduardo", "26816855086", "NAO", 1, 3, 2);

INSERT INTO PROPRIETARIO (nome, cpf, cadastro, id_SEXO, id_CIDADE, id_ENDERECO)
VALUES ("Rosangela", "90384994008", "SIM", 2, 2, 3);

---

INSERT INTO ENDERECO (logradouro, numero, complemento, bairro, cep)
VALUES ("Rua Itabaiana", "157", "Padaria Sao Jose", "Amambai", "79005360");

INSERT INTO ENDERECO (logradouro, numero, complemento, bairro, cep)
VALUES ("Rua Francisco de Assis", "12", "Burger King", "Tiradentes", "17201070");

INSERT INTO ENDERECO (logradouro, numero, complemento, bairro, cep)
VALUES ("Avenida Sao Lopes", "98", "Casa da Criança", "Vila Peliciari", "29010155"); 

---

INSERT INTO SEXO (inicial, nome)
VALUES ("M", "Masculino");

INSERT INTO SEXO (inicial, nome)
VALUES ("F", "Feminino");

---

INSERT INTO CIDADE (nome, id_ESTADO)
VALUES ("Campo Grande", 1);

INSERT INTO CIDADE (nome, id_ESTADO)
VALUES ("Jau", 2);

INSERT INTO CIDADE (nome, id_ESTADO)
VALUES ("Vitoria", 3);

---

INSERT INTO ESTADO (sigla, nome)
VALUES ("MS", "Mato Grosso do Sul");

INSERT INTO ESTADO (sigla, nome)
VALUES ("SP", "Sao Paulo");

INSERT INTO ESTADO (sigla, nome)
VALUES ("ES", "Espirito Santo");

---

INSERT INTO VEICULO (placa, cadastro, id_COR, id_MODELO)
VALUES ("BEE4R22", "SIM", 3, 1);

INSERT INTO VEICULO (placa, cadastro, id_COR, id_MODELO)
VALUES ("EXG3L75", "SIM", 1, 2);

INSERT INTO VEICULO (placa, cadastro, id_COR, id_MODELO)
VALUES ("PLV9D41", "NAO", 2, 3);

---

INSERT INTO COR (nome) VALUES ("Branco");

INSERT INTO COR (nome) VALUES ("Vermelho");

INSERT INTO COR (nome) VALUES ("Cinza");

---

INSERT INTO MODELO (nome, id_MARCA)
VALUES ("Fiesta", 1);

INSERT INTO MODELO (nome, id_MARCA)
VALUES ("Cronos", 2);

INSERT INTO MODELO (nome, id_MARCA)
VALUES ("Edge", 1);

---

INSERT INTO MARCA (nome) VALUES ("Ford");

INSERT INTO MARCA (nome) VALUES ("Fiat");

INSERT INTO MARCA (nome) VALUES ("Ford");

---

INSERT INTO MULTA (data_multa, hora, local_multa, id_VEICULO, id_AGENTE, id_CIDADE)
VALUES ("2021-05-21", "11:37:05", "Rua Brasil", 1, 2, 1);

INSERT INTO MULTA (data_multa, hora, local_multa, id_VEICULO, id_AGENTE, id_CIDADE)
VALUES ("2021-03-19", "08:14:43", "Rua Paraiba", 2, 3, 2);

INSERT INTO MULTA (data_multa, hora, local_multa, id_VEICULO, id_AGENTE, id_CIDADE)
VALUES ("2021-01-31", "17:09:55", "Rua Boa Vista", 3, 1, 3);

---

INSERT INTO AGENTE (matricula, nome, contratacao)
VALUES ("SIM", "Maria", "CLT");

INSERT INTO AGENTE (matricula, nome, contratacao)
VALUES ("SIM", "Rodrigo", "PJ");

INSERT INTO AGENTE (matricula, nome, contratacao)
VALUES ("SIM", "Gabriel", "CLT");

---

INSERT INTO INFRACAO (descricao, valor, pontos)
VALUES ("Parar na contramão de direção", 130.16, 21);

INSERT INTO INFRACAO (descricao, valor, pontos)
VALUES ("Abandonar na via objetos ou substâncias", 130.16, 29);

INSERT INTO INFRACAO (descricao, valor, pontos)
VALUES ("Estacionar nos acostamentos", 88.38, 10);
