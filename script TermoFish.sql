create database TermoFish;
use TermoFish;

create table clientes (
idCliente int primary key auto_increment,
nome varchar (50),
empresa varchar (40),
cnpj char (14),
telefone char (11),
email varchar (45));

create table endereco (
idEndereco int primary key auto_increment,
cep char (9),
numero varchar (45),
complemento varchar (45),
fkCliente_Endereco int, foreign key endereco (fkCliente_Endereco) references clientes (idCliente)
);

create table Tanque (
idTanque int primary key auto_increment,
numeroTanque int,
fkEndereco_Tanque int, foreign key Tanque (fkEndereco_Tanque) references endereco(idEndereco)
);

create table sensor (
idSensor int primary key auto_increment,
fkTanque_Sensor int, foreign key Sensor (fkTanque_Sensor) references Tanque(idTanque)
);

create table Dados (
idDados int primary key auto_increment,
DT datetime,
Temperatura float(4,2),
fkSensor_Dados int, foreign key Dados(fkSensor_Dados) references sensor(idSensor)
);

select * from clientes;
select * from endereco;
select * from Tanque;
select * from sensor;
select * from Dados;