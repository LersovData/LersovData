CREATE DATABASE clientes_lersov;

USE clientes_lersov;

CREATE TABLE clientes (
  idCliente INT PRIMARY KEY AUTO_INCREMENT,
  nome_da_empresa VARCHAR(45),
  nome_responsavel VARCHAR(45),
  endereco VARCHAR(50),
  telefone VARCHAR(20),
  email VARCHAR(45),
  senha VARCHAR(20),
  CNPJ VARCHAR(15)
);

INSERT INTO clientes (nome_da_empresa, nome_responsavel, endereco, telefone, email, senha, CNPJ) 
VALUES 
('Supermercados BH', 'Luiz Gama Filho', 'Rua da Bahia, 123 Belo Horizonte - MG', '(31) 3333-4444', 'bh@supermercado.com.br', 'senha_bh', '12345678901234'),
('Assaí','José Fernando Augusto', 'Avenida do Contorno, 456 São Paulo - SP', '(31) 4444-5555', 'assaí@supermercado.com.br', 'senha_assai', '98765432109876'),
('Pão de Açúcar','Epaminondas Soares da Costa', 'Rua do Ouvidor, 789 Rio de Janeiro - RJ', '(11) 5555-6666', 'paodeacucar@supermercado.com.br', 'senha_paodeacucar', '11122233344455'),
('St Marche','Glauco Vieira Machado', 'Avenida Brigadeiro Faria Lima, 901 São Paulo - SP', '(11) 6666-7777', 'stmarche@supermercado.com.br', 'senha_stmarche', '55566677788899'),
('Irmãos Muffato', 'Nelson Muffato', 'Rua 24 horas, 204 Curitiba - PR', '(43) 3457-3456', 'irmaosmuffato@muffato.com.br', 'senha_muffato', '12358974145678');  

  SELECT * FROM clientes WHERE nome_da_empresa = 'Assaí';
  
  SELECT * FROM clientes WHERE endereco LIKE '%São Paulo%';
  
  SELECT email FROM clientes ORDER BY email DESC;
  
  SELECT * FROM clientes WHERE nome_responsavel LIKE '%a';
  
  
  
  

CREATE TABLE sensores (
  idcorredor INT PRIMARY KEY AUTO_INCREMENT,
   quantidade_pessoas INT,
   status_sensor VARCHAR(10),
   data_ultima_leitura DATE
   
   );
   
ALTER TABLE sensores
ADD CONSTRAINT ck_status_sensor
CHECK (status_sensor IN ('ligado', 'desligado', 'manutenção'));

 INSERT INTO sensores (quantidade_pessoas, status_sensor, data_ultima_leitura)
VALUES
  (50, 'ligado', '2023-07-26'),
  (75, 'ligado', '2023-07-26'),
  (30, 'desligado', '2023-07-25'),
  (100, 'ligado', '2023-07-26'),
  (25, 'manutenção', '2023-07-26'),
  (80, 'ligado', '2023-07-26'),
  (40, 'ligado', '2023-07-26'),
  (120, 'ligado', '2023-07-26'),
  (20, 'ligado', '2023-07-26'),
  (90, 'ligado', '2023-07-26'),
  (35, 'ligado', '2023-07-26'),
  (110, 'ligado', '2023-07-26');

SELECT *
FROM sensores;

SELECT *
FROM sensores
WHERE status_sensor = 'desligado';

SELECT *
FROM sensores
WHERE quantidade_pessoas > 30;

SELECT *
FROM sensores
ORDER BY data_ultima_leitura ASC;


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












   


  
  