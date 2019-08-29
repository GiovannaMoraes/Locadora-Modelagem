create database locadora;
use locadora;

create table Clientes (
  id_cliente int key,
  nome varchar(50),
  cpf char(14),
  rg char(11),
  cnh char(11),
  rua varchar(50),
  numero int,
  bairro varchar(50),
  cidade varchar(50),
  estado char(2),
  cep char(9));

create table Clientes_telefones (
  id_telefone int key,
  id_cliente int,
  ddd char(2),
  numero char(9),
  foreign key(id_cliente)
  references
  clientes(id_cliente));

create table Orcamentos (
  id_orcamento int key,
  id_cliente int,
  id_carro int,
  status char(1),
  data_inicio date,
  data_termino date,
  valor_diaria float(10,2),
  valor_total float(10,2),
  foreign key(id_cliente)
  references
  clientes(id_cliente),
  foreign key(id_carro)
  references
  carros(id_carro));

create table Carros (
  id_carro int key,
  categoria varchar(20),
  marca varchar(20),
  modelo varchar(20),
  ano int(4),
  cor varchar(20),
  combustível varchar(10),
  rastreador varchar(10),
  documentação varchar(10),
  chassi char(13),
  placa char(8));

create table Hist_oficina (
  id_hist_oficina int key,
  id_carro int,
  empresa varchar(20),
  data date,
  conserto varchar(50),
  valor float(10,2),
  foreign key(id_carro)
  references
  carros(id_carro));

create table Entrada (
  id_entrada int key,
  id_orcamento int,
  data date,
  valor float(10,2),
  foreign key(id_orcamento)
  references
  orcamentos(id_orcamento));

create table Saida (
  id_saida int key,
  id_funcionario int,
  data date,
  motivo varchar(20),
  valor float(10,2),
  foreign key(id_funcionario)
  references
  funcionarios(id_funcionario));

create table Funcionarios (
  id_funcionario int key,
  nome varchar(50),
  cargo varchar(10),
  cpf char(14),
  rg char(11),
  rua varchar(50),
  numero int,
  bairro varchar(50),
  cidade varchar(50),
  estado char(2),
  cep char(9));

create table Funcionarios_telefones (
  id_telefone int key,
  id_funcionario int,
  ddd char(2),
  numero char(9),
  foreign key(id_funcionario)
  references
  funcionarios(id_funcionario));




