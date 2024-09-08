CREATE DATABASE mercado;

USE mercado;

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	email VARCHAR(45) NOT NULL,
	senha VARCHAR(45) NOT NULL
);

INSERT INTO usuario (nome, email, senha) VALUES
('João Silva', 'joao.silva@example.com', 'senha123'),
('Maria Oliveira', 'maria.oliveira@example.com', 'senha456'),
('Pedro Santos', 'pedro.santos@example.com', 'senha789');

SELECT * FROM usuario;
SELECT * FROM usuario WHERE nome = 'João Silva';
SELECT * FROM usuario WHERE email = 'maria.oliveira@example.com';

CREATE TABLE sensorPresenca(
	idSensorPresenca INT PRIMARY KEY AUTO_INCREMENT,
	quantidadePessoa INT,
	data_ultima_leitura datetime NOT NULL,
	nomeCorredo VARCHAR(45) NOT NULL
);

INSERT INTO sensorPresenca (quantidadePessoa, data_ultima_leitura, nomeCorredo) 
VALUES 
(5, '2024-09-08 08:45:00', 'Corredor A'),
(3, '2024-09-08 09:15:00', 'Corredor B'),
(8, '2024-09-08 10:30:00', 'Corredor C'),
(0, '2024-09-08 11:00:00', 'Corredor D'),
(6, '2024-09-08 11:45:00', 'Corredor A');

SELECT * FROM sensorPresenca;

SELECT * FROM sensorPresenca WHERE quantidadePessoa > 5;

SELECT nomeCorredo, quantidadePessoa 
FROM sensorPresenca 
ORDER BY quantidadePessoa DESC;


SELECT * 
FROM sensorPresenca 
ORDER BY data_ultima_leitura DESC;


CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(100),
    preco DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(100),
    data_criacao DATE,
    nomeCorredo VARCHAR(45)
);


INSERT INTO produto (nome, descricao, preco, categoria, data_criacao, nomeCorredo) VALUES
('Camiseta Básica', 'Camiseta de algodão, disponível em várias cores', 29.90, 'Roupas', '2024-09-01', 'azul'),
('Tênis Esportivo', 'Tênis confortável para corrida e caminhada', 159.90, 'Calçados', '2024-09-02', 'preto'),
('Mochila Escolar', 'Mochila com vários compartimentos, ideal para estudantes', 89.90, 'Acessórios', '2024-09-03', 'vermelho'),
('Relógio Digital', 'Relógio com display LED e várias funções', 119.90, 'Eletrônicos', '2024-09-04', 'prata'),
('Fone de Ouvido Bluetooth', 'Fone de ouvido sem fio com cancelamento de ruído', 249.90, 'Eletrônicos', '2024-09-05', 'azul'),
('Caneca Personalizada', 'Caneca de cerâmica com design exclusivo', 19.90, 'Casa e Cozinha', '2024-09-06', 'branco');

SELECT * FROM produto;
SELECT * FROM produto WHERE categoria = 'Eletrônicos';
SELECT * FROM produto WHERE preco < 100.00;
SELECT * FROM produto WHERE data_criacao = '2024-09-01';
SELECT * FROM produto WHERE nomeCorredo = 'azul';
SELECT * FROM produto
ORDER BY preco DESC;

-- ======================================================================================================
    

CREATE TABLE dadosMensais (
	idDadosMensais INT PRIMARY KEY AUTO_INCREMENT,
    mes varchar(9) NOT NULL,
    quantidadePessoas INT NOT NULL,
    nomeCorredo VARCHAR(45) NOT NULL
);
   
INSERT INTO dadosMensais (mes, quantidadePessoas, nomeCorredo) 
VALUES 
('Janeiro', 1500, 'Corredor A'),
('Fevereiro', 1300, 'Corredor B'),
('Março', 1600, 'Corredor A'),
('Abril', 1200, 'Corredor C'),
('Maio', 1800, 'Corredor D'),
('Junho', 1400, 'Corredor B'),
('Julho', 1700, 'Corredor C'),
('Agosto', 1900, 'Corredor A'),
('Setembro', 1100, 'Corredor D'),
('Outubro', 1550, 'Corredor B'),
('Novembro', 1650, 'Corredor A'),
('Dezembro', 1750, 'Corredor C');


SELECT * FROM dadosMensais;

SELECT nomeCorredo, quantidadePessoas 
FROM dadosMensais 
WHERE mes = 'Agosto' 
ORDER BY quantidadePessoas DESC;

SELECT mes, nomeCorredo, quantidadePessoas 
FROM dadosMensais 
WHERE quantidadePessoas > 1600;

SELECT mes, quantidadePessoas 
FROM dadosMensais 
WHERE nomeCorredo = 'Corredor A' 
ORDER BY quantidadePessoas DESC;

SELECT nomeCorredo, quantidadePessoas 
FROM dadosMensais 
WHERE mes = 'Setembro';

SELECT mes, nomeCorredo, quantidadePessoas 
FROM dadosMensais 
WHERE quantidadePessoas < 1200;

SELECT mes, SUM(quantidadePessoas) AS totalPessoasMes 
FROM dadosMensais 
GROUP BY mes;


-- ===========================================================================================

CREATE TABLE corredores (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome_do_mercado VARCHAR(45),
  numero_do_corredor INT,
  descricao_corredor VARCHAR(45)
);


INSERT INTO corredores (nome_do_mercado, numero_do_corredor, descricao_corredor)
VALUES
  ('Assaí', 1, 'Higiene e Limpeza'),
  ('Pão de Açúcar', 2, 'Bebidas'),
  ('BH Supermercados', 3, 'Frios e Laticínios'),
  ('Carrefour Brasil', 4, 'Açougue'),
  ('St Marche', 5, 'Hortifruti'),
  ('Assaí', 6, 'Congelados'),
  ('Pão de Açúcar', 7, 'Bomboniere'),
  ('BH Supermercados', 8, 'Bebidas Alcólicas'),
  ('Carrefour Brasil', 9, 'Pet'),
  ('St Marche', 10, 'Perfumaria');
  
SELECT *
FROM corredores
ORDER BY numero_do_corredor ASC;

SELECT numero_do_corredor
FROM corredores
WHERE descricao_corredor = 'Congelados';

SELECT numero_do_corredor
FROM corredores
WHERE nome_do_mercado = 'Carrefour Brasil';









   


  
  