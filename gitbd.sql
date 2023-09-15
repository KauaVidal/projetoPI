
use QuantumSens;


create table dadosEmpresa(
idEmpresa int primary key auto_increment,
nomeEmpresa varchar(50) not null,
senha varchar(18) not null,
email varchar (30) not null,
planoAtivo varchar(7) not null,
constraint chkPlanoAtivo check(planoAtivo in('Ativo', 'Inativo')),
qtdEstufas int,
plano varchar(15),
constraint chkPlano check(plano in('QuantumStandard', 'QuantumPremium'))
);
insert into dadosEmpresa values
(null, "Emporio Tabaco", "012b3222", "emporiodotabaco@gmail.com", "Ativo",10 , "QuantumStandard"),
(null, "tabacaria Trevo", "tre9888", "tabacariatrevo@gmail.com", "Ativo",3 , "QuantumPremium"),
(null, "Cigarrete Company", "0333ci", "cigarrete@gmail.com", "Ativo",20 , "QuantumPremium"),
(null, "SutliffTobacco Company", "su7667", "sutobacco@gmail.com", "Ativo",32 , "QuantumStandard");

create table identificacao(
idSensor int primary key auto_increment,
empresa varchar(40),
idEmpresa varchar(40)
);
insert into identificacao values 
 (null,'Emporio Tabaco','1'),
 (null,'Tabacaria Trevo','2'),
 (null,'Cigarrete Company','3'),
 (null,'Sutliff Tobacco Company','4');

create table sensores(
idAtualizacao int primary key auto_increment,
idSensor int,
data DATE,
horario CHAR(5),
temperaturaC float,
umidade float
);
insert into sensores (idSensor,data,horario,temperaturaC,umidade)values
('1','2023-01-01','10:00','22','50'),
('2','2023-01-01','10:00','20','64'),
 ('3','2023-01-01','10:00','29','71'),
 ('4','2023-01-01','10:00','20','61');
 
 -- 5MIN DEPOIS, NOVOS VALORES ENVIADOS PELOS SENSORES
 
 insert into sensores (idSensor,data,horario,temperaturaC,umidade)values
('1','2023-01-01','10:05','27','48'),
('2','2023-01-01','10:05','21','63'),
 ('3','2023-01-01','10:05','28','70'),
 ('4','2023-01-01','10:05','22','66');
 
 select * from dadosempresa; 
 select * from sensores;
 select * from identificacao;
 describe dadosempresa
