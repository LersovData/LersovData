CREATE DATABASE mercado;

USE mercado;

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	email VARCHAR(45) NOT NULL,
	senha VARCHAR(45) NOT NULL
);

CREATE TABLE sensore(
	idSensore INT PRIMARY KEY AUTO_INCREMENT,
	quantidadePessoa INT,
	corredo VARCHAR(45)
);

CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(100),
    preco DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(100),
    data_criacao DATE,
    corredo VARCHAR(45)
);

INSERT INTO usuario (nome, email, senha) VALUES
('João Silva', 'joao.silva@example.com', 'senha123'),
('Maria Oliveira', 'maria.oliveira@example.com', 'senha456'),
('Pedro Santos', 'pedro.santos@example.com', 'senha789');

SELECT * FROM usuario;
SELECT * FROM usuario WHERE nome = 'João Silva';
SELECT * FROM usuario WHERE email = 'maria.oliveira@example.com';


INSERT INTO sensore (quantidadePessoa, corredo) VALUES
(10, 'azul'),
(5, 'vermelho'),
(8, 'verde');

SELECT * FROM sensore;
SELECT * FROM sensore WHERE corredo = 'azul';
SELECT * FROM sensore WHERE quantidadePessoa > 5;


INSERT INTO produto (nome, descricao, preco, categoria, data_criacao, corredo) VALUES
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
SELECT * FROM produto WHERE corredo = 'azul';
SELECT categoria, COUNT(*) AS total_produtos
FROM produto
GROUP BY categoria;
SELECT * FROM produto
ORDER BY preco DESC;










