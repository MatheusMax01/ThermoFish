create database TermoFish;
use TermoFish;

create table clientes (
idCliente int primary key auto_increment,
nome varchar (50),
empresa varchar (40),
cnpj char (18),
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

insert into Clientes values
(null,'Maria Eduarda','DECO', '57.447.742/0001-87','11964738292' ,'Maria.eduarda@deco.com'),
(null,'antonio henrique','mjagropiscis','58.422.538/0001-74' ,'11953627282','Antonio.henrique@mjagropiscis.com'),
(null,'Elisa Cardoso','infinity peixe','17.462.035/0001-45','93991894854','Elisa.Cardoso@infinity.peixe'),
(null,'Cauê Martins','marlinscape','15.327.275/0001-01','61973449877' ,'Cauê.Martins@marlinscape.com'),
(null,'Raquel Aragão','peskdo','63.357.359/0001-30','84976883782','Raquel.Aragão@peskdo.com'),
(null,'Pietro da Cruz','pescado & cia','67.203.865/0001-26','86989247308','Pietro.Cruz@pescadoecia.com'),
(null,'Alexandre Rezende','aquabel','82.138.838/0001-00','63979350246','Alexandre.Rezende@aquabel.com'),
(null,'Joaquim de lima','tres marias tilapia','36.321.774/0001-61','11983290593','Joaquim.lima@tresmariastilapia.com'),
(null,'Luiz Andrade','pescado & companhia','67.203.685/0001-43','86989247308','Luiz.Andrade@pescadocompanhia.com'),
(null,'Pedro rezende ','nemo house','82.138.383/0001-10','63979350246','Pedro.Rezende@nemohouse.com'),
(null,'joa pedro lima','tres tilapia','36.123.477/0001-16','11983290593','Joao.lima@trestilapia.com');

insert into endereco values
(null,05335-120,940,'KM 18 raposo',1),
(null,07689-098,595,'km 35 raposo',2),
(null,02345-182,500,'km 21 quadra interior',3),
(null,01234-567,24,'km 67 br 101',4),
(null,09876-897,121,'km 120 br 101',5),
(null,12768-054,1098,'km 23 br 116',6),
(null,34898-056,230,'km 1 br 120',7),
(null,65373-121,111,'km 111 br 122',8);

insert into Tanque values
(null,1012,1),
(null,500,2),
(null,234,3),
(null,74,4),
(null,12,5),
(null,11,6),
(null,96,7),
(null,098,8),
(null,345,2),
(null,23,1),
(null,12,1),
(null,11,8),
(null,78,7),
(null,5,7),
(null,1,6),
(null,3,6),
(null,11,4),
(null,89,2);

insert into sensor values
(null,1),
(null,2),
(null,3),
(null,4),
(null,5),
(null,6),
(null,7),
(null,8),
(null,9),
(null,10),
(null,11),
(null,12),
(null,13),
(null,14),
(null,15),
(null,16),
(null,17),
(null,18),
(null,1),
(null,2),
(null,3),
(null,4),
(null,5),
(null,6),
(null,7),
(null,8),
(null,9),
(null,10),
(null,11),
(null,12),
(null,13),
(null,14),
(null,15),
(null,16),
(null,17),
(null,18),
(null,1),
(null,2),
(null,3),
(null,4),
(null,5),
(null,6),
(null,7),
(null,8),
(null,9),
(null,10),
(null,11),
(null,12),
(null,13),
(null,14),
(null,15),
(null,16),
(null,17),
(null,18),
(null,1),
(null,2),
(null,3),
(null,4),
(null,5),
(null,6),
(null,7),
(null,8),
(null,9),
(null,10),
(null,11),
(null,12),
(null,13),
(null,14),
(null,15),
(null,16),
(null,17),
(null,18);

insert into Dados values
(null,'2022-12-11',26.12,1),
(null,'2022-12-9',26.12,19),
(null,'2022-12-8',13.12,37),
(null,'2022-12-6',14.12,55),
(null,'2022-12-5',17.12,2),
(null,'2022-12-4',28.12,20),
(null,'2022-9-3',29.12,57),
(null,'2022-9-5',30.12,58),
(null,'2022-9-8',26.12,40),
(null,'2022-10-2',20.12,7),
(null,'2022-10-10',19.12,61),
(null,'2022-10-9',16.12,43),
(null,'2022-1-8',27.12,27),
(null,'2022-1-5',26.12,10),
(null,'2022-1-6',25.12,11),
(null,'2022-4-11',22.12,65),
(null,'2022-4-12',21.12,12),
(null,'2022-3-14',22.12,34),
(null,'2022-3-12',24.12,51),
(null,'2022-2-12',32.12,70);


select * from clientes;
select * from endereco;
select * from Tanque;
select * from sensor;
select * from Dados;

select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento from Clientes as c
join endereco as e on idCliente = fkCliente_Endereco; 

select c.nome,c.empresa,t.numeroTanque, d.DT, d.Temperatura from Clientes as c
join endereco as e on idCliente = fkCliente_Endereco
join Tanque as t on IdTanque = fkCliente_Endereco
join sensor as s on IdSensor = FkCliente_Endereco
join Dados as d on IdDados = FkCliente_Endereco;

select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento,t.numeroTanque from Clientes as c
join endereco as e on idCliente = fkCliente_Endereco
join Tanque as t on IdTanque = fkCliente_Endereco;

select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento,t.numeroTanque, d.DT, d.Temperatura from Clientes as c
join endereco as e on idCliente = fkCliente_Endereco
join Tanque as t on IdTanque = fkCliente_Endereco
join sensor as s on IdSensor = FkCliente_Endereco
join Dados as d on IdDados = FkCliente_Endereco;
 
 select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento from Clientes as c
left join endereco as e on idCliente = fkCliente_Endereco; 

select c.nome,c.empresa,t.numeroTanque, d.DT, d.Temperatura from Clientes as c
left join endereco as e on idCliente = fkCliente_Endereco
left join Tanque as t on IdTanque = fkCliente_Endereco
left join sensor as s on IdSensor = FkCliente_Endereco
left join Dados as d on IdDados = FkCliente_Endereco;

select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento,t.numeroTanque from Clientes as c
left join endereco as e on idCliente = fkCliente_Endereco
left join Tanque as t on IdTanque = fkCliente_Endereco;

select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento,t.numeroTanque, d.DT, d.Temperatura from Clientes as c
left join endereco as e on idCliente = fkCliente_Endereco
left join Tanque as t on IdTanque = fkCliente_Endereco
left join sensor as s on IdSensor = FkCliente_Endereco
left join Dados as d on IdDados = FkCliente_Endereco;

select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento from Clientes as c
right join endereco as e on idCliente = fkCliente_Endereco; 

select c.nome,c.empresa,t.numeroTanque, d.DT, d.Temperatura from Clientes as c
right join endereco as e on idCliente = fkCliente_Endereco
right join Tanque as t on IdTanque = fkCliente_Endereco
right join sensor as s on IdSensor = FkCliente_Endereco
right join Dados as d on IdDados = FkCliente_Endereco;

select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento,t.numeroTanque from Clientes as c
right join endereco as e on idCliente = fkCliente_Endereco
right join Tanque as t on IdTanque = fkCliente_Endereco;

select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento,t.numeroTanque, d.DT, d.Temperatura from Clientes as c
right join endereco as e on idCliente = fkCliente_Endereco
right join Tanque as t on IdTanque = fkCliente_Endereco
right join sensor as s on IdSensor = FkCliente_Endereco
right join Dados as d on IdDados = FkCliente_Endereco;

-- drop database termofish;