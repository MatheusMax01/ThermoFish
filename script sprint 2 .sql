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

insert into Clientes values
(null,'Maria Eduarda','DECO', 57447742000187,11964738292 ,'Maria.eduarda@deco.com'),
(null,'antonio henrique','mjagropiscis',58422538000174 ,11953627282,'Antonio.henrique@mjagropiscis.com'),
(null,'Elisa Cardoso','infinity peixe',17462035000145,93991894854,'Elisa.Cardoso@infinity.peixe'),
(null,'Cauê Martins','marlinscape',15327275000101,61973449877 ,'Cauê.Martins@marlinscape.com'),
(null,'Raquel Aragão','peskdo',63357359000130,84976883782,'Raquel.Aragão@peskdo.com'),
(null,'Pietro da Cruz','pescado & cia',67203865000126,86989247308,'Pietro.Cruz@pescadoecia.com'),
(null,'Alexandre Rezende','aquabel',82138838000100,6397935-0246,'Alexandre.Rezende@aquabel.com'),
(null,'Joaquim de lima','tres marias tilapia',36321774000161,11983290593,'Joaquim.lima@tresmariastilapia.com');

insert into endereco values
(null,05335-120,940,'andar 16',1),
(null,07689-098,595,'andar 2',2),
(null,02345-182,500,'andar 12',3),
(null,01234-567,24,'andar 24',4),
(null,09876-897,121,'andar 48',5),
(null,12768-054,1098,'andar 1',6),
(null,34898-056,230,'andar 9',7),
(null,65373-121,111,'andar 4',8);

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
(null,'2022-12-8',26.12,37),
(null,'2022-12-6',26.12,55),
(null,'2022-12-5',26.12,2),
(null,'2022-12-4',26.12,20),
(null,'2022-9-3',26.12,57),
(null,'2022-9-5',26.12,58),
(null,'2022-9-8',26.12,40),
(null,'2022-10-2',26.12,7),
(null,'2022-10-10',26.12,61),
(null,'2022-10-9',26.12,43),
(null,'2022-1-8',26.12,27),
(null,'2022-1-5',26.12,10),
(null,'2022-1-6',26.12,11),
(null,'2022-4-11',26.12,65),
(null,'2022-4-12',26.12,12),
(null,'2022-3-14',26.12,34),
(null,'2022-3-12',26.12,51),
(null,'2022-2-12',26.12,70);


select * from clientes;
select * from endereco;
select * from Tanque;
select * from sensor;
select * from Dados;

select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento from Clientes as c
join endereco as e on idCliente = fkCliente_Endereco; 

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

select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento,t.numeroTanque from Clientes as c
right join endereco as e on idCliente = fkCliente_Endereco
right join Tanque as t on IdTanque = fkCliente_Endereco;

select c.nome,c.empresa,c.cnpj,c.telefone,c.email,e.cep,e.numero,e.complemento,t.numeroTanque, d.DT, d.Temperatura from Clientes as c
right join endereco as e on idCliente = fkCliente_Endereco
right join Tanque as t on IdTanque = fkCliente_Endereco
right join sensor as s on IdSensor = FkCliente_Endereco
right join Dados as d on IdDados = FkCliente_Endereco;