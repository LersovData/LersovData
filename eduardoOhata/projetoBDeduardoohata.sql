CREATE DATABASE mercado;

USE mercado;

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
    nome_empresa VARCHAR(45) NOT NULL,
	email VARCHAR(45) NOT NULL,
    CNPJ VARCHAR(20) NOT NULL,
	senha VARCHAR(45) NOT NULL
);

INSERT INTO usuario (nome, nome_empresa, email, CNPJ, senha)
VALUES 
('João Silva', 'Empresa XYZ Ltda.', 'joao.silva@empresaxyz.com.br', '12345678000191', 'senha123'),
('Maria Oliveira', 'Loja de Roupas Maria', 'maria.oliveira@lojamaria.com.br', '98765432000198', 'senha456'),
('Pedro Alves', 'Alves e Cia.', 'pedro.alves@alvesecia.com.br', '74185236000195', 'senha789'),
('Ana Souza', 'Souza Distribuidora', 'ana.souza@souzadistribuidora.com.br', '36925814000192', 'senha012'),
('Luiz Carlos', 'LC Comércio de Produtos', 'luiz.carlos@lcprodutos.com.br', '85296372000196', 'senha345');

SELECT * FROM usuario;

SELECT nome, email FROM usuario;

SELECT * FROM usuario WHERE nome_empresa LIKE 'A%';

SELECT * FROM usuario ORDER BY nome;

SELECT senha FROM usuario WHERE idUsuario = 5;


CREATE TABLE sensores (

IdSensor INT PRIMARY KEY AUTO_INCREMENT,
numero_corredor INT,
quantidade_pessoas INT,
mes VARCHAR (16),
dataHoraDeLeitura DATETIME

);


INSERT INTO sensores (numero_corredor, quantidade_pessoas, mes, dataHoraDeLeitura)
VALUES 
	(6, 30, 'Junho', '2022-06-01 09:00:00'),
    (7, 22, 'Julho', '2022-07-05 13:15:00'),
    (8, 28, 'Agosto', '2022-08-10 15:00:00'),
    (9, 19, 'Setembro', '2022-09-15 10:00:00'),
    (10, 35, 'Outubro', '2022-10-20 12:00:00');
    
    SELECT * FROM sensores WHERE quantidade_pessoas > 20;
    
    SELECT * FROM sensores WHERE numero_corredor = '6';
    
    SELECT idSensor, quantidade_pessoas FROM sensores;
    
    SELECT * FROM sensores WHERE mes like '%Agosto%';
    
    SELECT * FROM sensores WHERE dataHoraDeleitura < '2022-11-20';
    
    
    
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


CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(100),
    preco DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(100),
    data_criacao DATE,
    corredo VARCHAR(45)
);


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

SELECT * FROM produto
ORDER BY preco DESC;





