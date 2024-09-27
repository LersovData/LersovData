create database lersovBank;
use lersovBank;

create table infosensor (
	idCaptura int primary key auto_increment,
    corredor varchar(40),
    constraint chk_corredor check (corredor in ('corredor 1','corredor 2','corredor 3','corredor 4', 'corredor 5','corredor 6', 'corredor 7', 'corredor 8',
    'corredor 9', 'corredor 10','corredor 11','corredor 12')),
    numeroPessoas int,
    dtHora datetime
);

insert into infosensor values 
	(default, 'corredor 1', 200, '2024-09-05 09:30:15'),
    (default, 'corredor 2', 345, '2024-09-12 11:45:50'),
    (default, 'corredor 3', 328, '2024-09-19 14:20:35'),
    (default, 'corredor 4', 268, '2024-09-25 16:10:00'),
    (default, 'corredor 5', 311, '2024-09-30 10:05:45'),
    (default, 'corredor 1', 275, '2024-09-06 09:45:00'),
	(default, 'corredor 2', 310, '2024-09-13 11:20:15'),
	(default, 'corredor 3', 290, '2024-09-20 15:10:40'),
    (default, 'corredor 4', 299, '2024-09-16 10:30:25'),
	(default, 'corredor 5', 320, '2024-09-23 14:55:50');
    
select * from infosensor
where numeroPessoas > 300;

select * from infosensor 
where corredor = 'corredor 2';

select numeroPessoas from infosensor
where dtHora like '2024-09-%';

select * from infoSensor
where numeroPessoas >= 250;


create table clienteLersov (
	idCliente int auto_increment primary key,
	nome varchar(45),
    nomeEmpresa varchar(45),
    email varchar(45),
    senha varchar(20),
    cnpj dec(14),
    telefone dec(11)
);

insert into clienteLersov (nome, nomeEmpresa, email, senha, cnpj, telefone) values 
	('Amanda Carvalho', 'Assaí', 'carvalho.amanda@outlook.com', 'ass4i_20', 51775245000121, 4836065767),
    ('Luis Oliveira', 'GrandMercado', 'luis.grand@gmail.com', 'gr4ndM3r8374', 93146396000160, 6926805813),
    ('Juliana Paes', 'Mercadin', 'mercadin@gmail.com', '123456batata', 75560327000117, 8129448601),
    ('Gustavo Ferraz', 'Bem Barato', 'gutavo.bbarato@outlook.com', 'bBarat0_5263', 60207620000128, 9736567166);
    
describe clienteLersov;

select * from clienteLersov;

select nome, nomeEmpresa, cnpj from clienteLersov
where nome like '%u%';

select * from clienteLersov
where idCliente = 2;

select telefone from clienteLersov
where nomeEmpresa = 'Assaí';

select email from clienteLersov
where idCliente = 3;


create table futuroCliente (
	idCliente int auto_increment primary key,
	nome varchar(45),
    nomeEmpresa varchar(45),
    email varchar(45),
    cnpj dec(14),
    mensagemCliente varchar(280)
);

insert into futuroCliente (nome, nomeEmpresa, email, cnpj, mensagemCliente) values
('Ana Silva', 'Supermercado Max', 'ana.silva@supermercadomax.com.br', 12345678000195, 'Estamos interessados em explorar novas soluções tecnológicas para melhorar nossa eficiência operacional.'),
('Carlos Souza', 'Hipermercado ABC', 'carlos.souza@hipermercadoabc.com.br', 98765432000198, 'Precisamos de um sistema de gerenciamento de inventário mais eficiente e integrado.'),
('Beatriz Lima', 'Mercado da Família', 'beatriz.lima@mercadodafamilia.com.br', 11223344000111, 'Gostaríamos de implementar um sistema de controle de estoque mais avançado para otimizar nossos processos.'),
('Pedro Costa', 'Supermercado Central', 'pedro.costa@supermercadocentral.com.br', 55667788000122, 'Estamos procurando uma solução para gerenciar e otimizar o uso dos nossos equipamentos de loja.'),
('Mariana Oliveira', 'Loja Econômica', 'mariana.oliveira@lojaeconomica.com.br', 33445566000133, 'Queremos um sistema para monitoramento de segurança alimentar e controle de inventário em tempo real.');

select mensagemCliente from futuroCliente
where idCliente = 4;

select email, nomeEmpresa from futuroCLiente
where nome like '%a%';

select * from futuroCliente;

select * from futuroCliente
where idCliente = 1;

select * from futuroCliente
where nomeEmpresa like '%Supermercado%';