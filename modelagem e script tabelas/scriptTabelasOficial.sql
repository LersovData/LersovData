CREATE DATABASE sprint2b_;
USE sprint2b_;


CREATE TABLE empresa(
	id int primary key,
    nome varchar(45) not null,
    cnpj char(18) not null,
    email varchar(45) not null,
    senha varchar(45) not null,
    tipo varchar(45) not null,
    cep char(9) not null,
    bairro varchar(45) not null,
    cidade varchar(45) not null,
    numEnd varchar(45) not null,
    situacao varchar(45) not null,
    constraint chkSituacao
		check (situacao in('aprovado', 'reprovado'))
); 
	INSERT INTO empresa VALUES
		(1,'Assaí', '06.057.223/0001-71', 'assai@empresa', '123456ASSAI',
        'Atacadista', '06703-000', 'São Paulo', 'São Paulo', '1635', 'aprovado'),
        (2,'Carrefour Express', '45.543.915/0873-68', 'carrefour@empresa', '090909CARREFOUR',
        'Conveniência', '01311-300', 'São Paulo', 'São Paulo', '2073', 'reprovado'),
        (3,'Atacadão', '75.315.333/0049-53', 'atacadao@empresa', '76767ATACADAO'
        ,'Atacadista', '02170-901', 'São Paulo', 'São Paulo', '6169', 'aprovado');
        
	select*from empresa;
    
    select nome as Empresa,
    cnpj as CNPJ,
    email as Email,
    senha as Senha,
    tipo as 'Tipo de empresa',
    CASE 
    WHEN situacao = 'reprovado' THEN 'Não é atacado'
    ELSE 'É atacado'
    END as 'Motivo de aprovação e reprovação'
    FROM empresa;
	
CREATE TABLE formulario(
	idFormulario int primary key auto_increment,
    qtdCorredoresComSensor varchar(10) not null,
    dtImplementacao date not null,
    fkEmpresa int,
    constraint fkFormularioEmpresa
		foreign key (fkEmpresa) references empresa(id)
);

INSERT INTO formulario VALUES
	(default, '7', '2024-02-12', 1),
    (default, '5', '2024-02-12', 3);
    
select*from formulario;


select idFormulario as Formulario,
	qtdCorredoresComSensor as 'Corredores com Sensor',
    dtImplementacao as 'Data para implementação',
    nome as Empresa
    FROM formulario as F
    JOIN empresa as E
    ON F.fkEmpresa = E.id;


CREATE TABLE funcionarios(
	idFuncionario int,
    fkEmpresa int,
    primary key(idFuncionario, fkEmpresa),
    constraint fkfuncionariosEmpresa
		foreign key (fkEmpresa) references empresa(id),
    nome varchar(45) not null,
    email varchar(45) not null,
    senha varchar(45) not null
);
drop table funcionarios;
INSERT INTO funcionarios VALUES
	(1, 1, 'Rafael', 'rafa@assai.atacadista', 'senhaASSAI01'),
    (2, 1, 'Pedro', 'pedro@assai.atacadista', 'senhaASSAI02'),
    (3, 1, 'Junior', 'junior@assai.atacadista', 'senhaASSAI03'),
    (4, 3, 'Marcelo', 'marcelo@atacadao.atacadista', 'senhaATACADAO01'),
    (5, 3, 'Breno', 'breno@atacadao.atacadista', 'senhaATACADAO02');
  
    
select*from funcionarios;

select func.nome as Funcionário,
	E.nome as Empresa,
    func.email as 'Email Corporativo',
    func.senha as 'Senha de acesso'
    from funcionarios as func
    JOIN empresa as E
    ON func.fkEmpresa = E.id;
    
CREATE TABLE contato(
	idContato int primary key auto_increment,
    nome varchar(45),
    email varchar(45),
    empresa varchar(450),
    socioOuCeo varchar(10),
    mensagem varchar(150)
);

INSERT INTO contato VALUES
	(default, 'Leandro Agosto', 'leandro@assaiCEO', 'Assaí', 'Ceo','Estou interessado no produto de vocês e gostaria de mais informações! Grato.'),
    (default, 'Fernando Julhos', 'Fernando@carrefourSOCIO', 'Carrefour Express', 'Sócio','Estou interessado no produto de vocês, quero mais informações por favor.'),
    (default, 'João Setembros', 'joao@atacadaoCEO', 'Atacadão', 'Ceo','Gostaria de mais informações de como prosseguir para contratá-los, grato.');
    
select*from contato;

select nome as Nome,
	email as Email,
    empresa as Empresa,
    socioOuCEo as 'Sócio ou Ceo',
    mensagem as 'Mensagem'
    FROM contato;
    
CREATE TABLE sensor(
	idSensor int primary key,
    tipo varchar(45),
    estadoSensor varchar(10),
	constraint chkEstadoSensor
		check (estadoSensor in('Ativado', 'Desativado')),
    manutencaoEmDia char(3),
	constraint chkManutencao
		check (manutencaoEmDia in('Sim', 'Não')),
    fkEmpresa int,
    constraint fkSensorEmpresa
		foreign key (fkEmpresa) references empresa(id)
);

INSERT INTO sensor VALUES
	(1,'TCRT5000', 'Ativado', 'Sim', 1),
    (2,'TCRT5000', 'Ativado', 'Sim', 1),
    (3,'TCRT5000', 'Ativado', 'Sim', 1),
    (4,'TCRT5000', 'Ativado', 'Sim', 1),
    (5,'TCRT5000', 'Ativado', 'Sim', 1),
    (6,'TCRT5000', 'Ativado', 'Sim', 1),
    (7,'TCRT5000', 'Desativado', 'Não', 1),
    (8,'TCRT5000', 'Desativado', 'Não', 1),
    (9,'TCRT5000', 'Ativado', 'Sim', 3),
    (10,'TCRT5000', 'Ativado', 'Sim', 3),
    (11,'TCRT5000', 'Ativado', 'Sim', 3),
    (12,'TCRT5000', 'Ativado', 'Sim', 3),
    (13,'TCRT5000', 'Ativado', 'Não', 3);
    
select * from sensor;

select S.idSensor as Sensor,
	S.tipo as 'Tipo de sensor',
    S.estadoSensor as 'Estado',
    S.manutencaoEmDia as 'Manutenção em dia',
    CASE
    WHEN manutencaoEmDia = 'Não' THEN 'Fazer manutenção'
    ELSE 'Manutenção Feita'
    END as 'Necessidade de manutenção',
    E.nome as 'Empresa'
    FROM sensor as S
    JOIN empresa as E
    ON S.fkEmpresa = E.id;


    
-- EMPRESA QUE ESTAMOS NOS REFERINDO: ASSAÍ

CREATE TABLE corredor(
	idCorredor int primary key,
    setor varchar(60)
);

INSERT INTO corredor VALUES
	(1,'Limpeza e Higiene'),
    (3,'Adega'),
    (4,'Massas'),
    (7,'Doces'),
    (6,'Utensílios'),
    (5,'Congelados'),
    (2,'Bebidas');
    
    select * from corredor;
    

CREATE TABLE alertas(
	idAlerta int primary key,
    fluxo varchar(45),
    constraint chkFluxoTipo
		check(fluxo in('Alto', 'Moderado', 'Baixo'))
);

INSERT INTO alertas VALUES
	(1, 'Alto'),
    (2, 'Moderado'),
    (3, 'Baixo');
    
select * from alertas;


CREATE TABLE dadosSensor(
	idDados int,
    fkSensor int,
    primary key(idDados, fkSensor),
    constraint fkDadosSensorSensor
		foreign key (fkSensor) references sensor(idSensor),
	dtHora datetime,
    fluxoDePessoas varchar(45),
    fkCorredor int,
	constraint fkDadosSensorCorredor
		foreign key (fkCorredor) references corredor(idCorredor),
    fkAlerta int,
    constraint fkDadosSensorAlerta
		foreign key (fkAlerta) references alertas(idAlerta)
);
drop table dadosSensor;
INSERT INTO dadosSensor VALUES
	(1,1, '2024-01-10 13:00:00', '1000', 1, 1),
    (2,1, '2024-01-10 14:00:00', '990', 1, 1),
    (1,2, '2024-01-10 13:00:00', '600', 2, 2),
    (2,2, '2024-01-10 14:00:00', '610', 2, 2),
    (1,3,'2024-01-10 13:00:00', '400', 3, 3),
    (2,3,'2024-01-10 14:00:00', '410', 3, 3),
    (1,4,'2024-01-10 13:00:00', '1200', 4, 1),
    (2,4,'2024-01-10 14:00:00', '1235', 4, 1),
    (1,5,'2024-01-10 13:00:00', '650', 5, 2),
    (2,5,'2024-01-10 14:00:00', '630', 5, 2),
    (1,6,'2024-01-10 13:00:00', '310', 6, 3),
    (2,6,'2024-01-10 14:00:00', '300', 6, 3),
    (1,7,'2024-01-10 13:00:00', '2000', 7, 1),
    (2,7,'2024-01-10 14:00:00', '1990', 7, 1);
    
select * from dadosSensor;

SELECT D.idDados as ID,
D.fkSensor as 'ID sensor',
D.dtHora as 'Dia e hora',
D.fluxoDePessoas as 'Quantidade de pessoas no corredor',
fkCorredor as 'Corredor',
C.setor as 'Setor do corredor',
A.fluxo as 'Fluxo'
FROM dadosSensor as D
JOIN Corredor as C
ON D.fkCorredor = C.idCorredor
JOIN alertas as A
ON D.fkAlerta = A.idAlerta;


-- SELECIONAR UM ÚNICO DADO
SELECT D.idDados as ID,
D.fkSensor as 'ID sensor',
D.dtHora as 'Dia e hora',
D.fluxoDePessoas as 'Quantidade de pessoas no corredor',
fkCorredor as 'Corredor',
C.setor as 'Setor do corredor',
A.fluxo as 'Fluxo'
FROM dadosSensor as D
JOIN Corredor as C
ON D.fkCorredor = C.idCorredor
JOIN alertas as A
ON D.fkAlerta = A.idAlerta
WHERE idDados = 1 and fkSensor = 1;
    
    



