CREATE DATABASE ProjetoLERSOV;
USE ProjetoLERSOV;
 
 -- utilizar o not null em locais que precisam ser inseridos durante o insert
 
-- Criação da tabela de LOGIN.
CREATE TABLE login(
idLogin INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(25),
email VARCHAR(45),
senha VARCHAR(25)
);


-- Criação da tabela de sensores.
CREATE TABLE sensores(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
dataHoraDeLeitura DATETIME,
contadorSensor1 INT,
contadorSensor2 INT,
corredor VARCHAR(10)
);

-- Criação da tabela de requisição de novos clientes.
CREATE TABLE requisicaoClientes(
idRequisicao INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
sobrenome VARCHAR(45),
empresa VARCHAR(18),
cnpj VARCHAR(18),
emailCorporativo VARCHAR(35),
telefone VARCHAR(12),
estado VARCHAR(45)
);

