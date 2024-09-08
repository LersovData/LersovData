create database lersov;
use lersov;

-- TABELA 1
create table cadastroCliente (
	id int primary key auto_increment,
    nomeFantasia varchar(255) not null,
    nomeRepresentante varchar(50) not null,
    cnpj char(14) not null,
    email varchar (50) not null, 
	telefone varchar (12),
    dataFundacao date
    );


insert into cadastroCliente (nomeFantasia, nomeRepresentante, cnpj, email, telefone, dataFundacao) values
	('Assai Atacadista', 'José Almeida', '25766378000121', 'jose.almeida@assai.br', default, '2002-10-09'),
    ('Barbosa Supermercados', 'Amanda Carvalho', '75503644000100', 'amanda.carvalho@gmail.com', '1141823664', '2010-02-20'),
    ('Dia Supermercados', 'Carlos Oliveira', '32456666000145', 'carlos.oliveira@dia.com', default, '2006-09-03'),
    ('Lopes Supermercados', 'Josefina Silva', '90179382000155', 'silva.josefina@lopes.com.br', '11987253776', '1999-04-08');
    
select nomeFantasia as 'Nome fantasia', nomeRepresentante as 'Nome do representante', cnpj as 'CNPJ',
email as 'E-mail', telefone as 'Telefone', dataFundacao as 'Data de fundação'
    from cadastroCliente;

-- TABELA 2
create table sensorPresenca (
	id int primary key auto_increment,
    dataEntrada datetime not null,
    quantidadePessoas int not null,
    numCorredor int not null
    );

insert into sensorPresenca (dataEntrada, quantidadePessoas, numCorredor) values
	('2024-09-04 08:21:02', 8, 1),
    ('2024-09-04 10:12:21', 21, 1),
    ('2024-09-04 14:00:02', 52, 2),
    ('2024-09-05 14:14:09', 17, 4),
    ('2024-09-06 10:13:38', 26, 3),
    ('2024-09-06 15:02:12', 42, 2);

select dataEntrada as 'Data e hora da coleta', quantidadePessoas as 'Quantidade de pessoas', numCorredor as 'Número do corredor'
	from sensorPresenca order by numCorredor;

-- TABELA 3
create table dadosMensais (
	id int primary key auto_increment,
    mes varchar(9) not null,
    quantidadePessoas int not null
    );
    
insert into dadosMensais (mes, quantidadePessoas) values
	('Janeiro', 312),
    ('Fevereiro', 824),
    ('Março', 1283),
    ('Abril', 923),
    ('Maio', 763),
    ('Junho', 586),
    ('Julho', 980),
    ('Agosto', 1506),
    ('Setembro', 1004),
    ('Outubro', 1311),
    ('Novembro', 734),
    ('Dezembro', 927);
    
-- inserir mercado avaliado? talvez corredor

select mes as 'Mês', quantidadePessoas as 'Quantidade total de pessoas' from dadosMensais;
