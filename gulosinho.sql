create database vetor;

use vetor;

create table Agencias(
id_agencia INT PRIMARY KEY;
nome_agencia varchar NOT NULL;
codigo_agencia int UNIQUE;
endereco varchar(100);
telefone int UNIQUE;
);

create table Clientes(
id_cliente int PRIMARY KEY;
nome_cliente varchar(100);
cpf char(11) UNIQUE;
email varchar UNIQUE;
telefone int;
id_agencia int FOREIGN KEY; );

create table Funcionarios(
id_funcionario int PRIMARY KEY;
nome varchar (100);
cpf char(11) UNIQUE;
email varchar(100) UNIQUE;
cargo varchar(100);
id_agencia int FOREIGN KEY;
CONSTRAINT FK_
);


create table Contas(
id_conta int PRIMARY KEY;
numero_conta int UNIQUE;
tipo_conta varchar(100);
saldo decimal;
id_cliente int;
id_agencia int;
);


create table Transacoes(
id_transacao int;
id_conta int;
id_funcionario int;
tipo_transacao varchar(100)
valor decimal;
data_transacao date;);

create table Emprestimos(
id_emprestimo int;
id_cliente int;
valor_solicitado decimal;
data_solicitacao date;
status_emprestimo varchar;)

create table ParcelasEmprestimo(
id_parcela int;
id_emprestimo int;
numero_parcela int;
valor_parcela decimal;
data_vencimento date;
status_pagamento char(100));
