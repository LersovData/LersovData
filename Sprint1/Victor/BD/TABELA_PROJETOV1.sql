CREATE DATABASE ProjetoLERSOV;
USE ProjetoLERSOV;
 
-- Criação da tabela de LOGIN.
CREATE TABLE login(
idLogin INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(25),
email VARCHAR(45),
senha VARCHAR(25)
);

INSERT INTO login (usuario, email, senha) VALUES
('Cleber Machado', 'cleber.machado@example.com', 'sen333'),
('Clederson William', 'clederson.william@example.com', 'senh6'),
('Victor Rafael', 'victor.oliveira@example.com', 'senha67');

SELECT * FROM login;
SELECT * FROM login WHERE usuario LIKE 'Victor%';
SELECT * FROM login WHERE email LIKE 'victor.oliveira@example.com';

CREATE TABLE sensores(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
dataHoraDeLeitura DATETIME,
contadorSensor1 INT,
contadorSensor2 INT,
corredor VARCHAR(10)
);

INSERT INTO sensores (dataHoraDeLeitura, contadorSensor1, contadorSensor2, corredor) VALUES
('2024-01-01 11:45:00', 1113, 1112, 'Corredor A'),
('2024-01-01 11:45:00', 1114, 1113, 'Corredor B'),
('2024-01-01 11:45:00', 1115, 1114, 'Corredor C'),
('2024-01-02 11:45:00', 1116, 1115, 'Corredor A'),
('2024-01-02 11:45:00', 1117, 1116, 'Corredor B') ;

SELECT * FROM sensores;
SELECT corredor, contadorSensor1, contadorSensor2 FROM sensores ORDER BY contadorSensor1 DESC;
SELECT corredor, contadorSensor1, contadorSensor2 FROM sensores ORDER BY contadorSensor2 DESC;
SELECT * FROM sensores ORDER BY dataHoraDeLeitura DESC;

CREATE TABLE qtdPessoasMes (
	idPessoasMes INT PRIMARY KEY AUTO_INCREMENT,
    nomeDoCorredor VARCHAR(45) NOT NULL,
    mes varchar(9) NOT NULL,
    quantidadePessoas INT NOT NULL
);
   
INSERT INTO qtdPessoasMes (mes, quantidadePessoas, qtdPessoasMes) 
VALUES 
('Janeiro', 1332, 'Corredor A'),
('Fevereiro', 1342, 'Corredor A'),
('Março', 1167, 'Corredor A'),
('Abril', 1865, 'Corredor A'),
('Maio', 1264, 'Corredor A'),
('Junho', 1673, 'Corredor A'),
('Julho', 1378, 'Corredor A'),
('Agosto', 1865, 'Corredor A'),
('Setembro', 1904, 'Corredor A'),
('Outubro', 1242, 'Corredor A'),
('Novembro', 1111, 'Corredor A'),
('Dezembro', 1744, 'Corredor A');

SELECT * FROM qtdPessoasMes;
SELECT mes, quantidadePessoas FROM qtdPessoasMes ORDER BY quantidadePessoas DESC;
SELECT * FROM qtdPessoasMes WHERE quantidadePessoas > 1600;
SELECT mes, quantidadePessoas FROM qtdPessoasMes WHERE mes = 'Janeiro';
