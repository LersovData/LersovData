CREATE DATABASE clientes_lersov;

USE clientes_lersov;

CREATE TABLE clientes (
  idCliente INT PRIMARY KEY AUTO_INCREMENT,
  nome_da_empresa VARCHAR(45),
  endereco VARCHAR(50),
  telefone VARCHAR(20),
  email VARCHAR(45)
);


INSERT INTO clientes (nome_da_empresa, endereco, telefone, email)
VALUES
  ('Supermercados BH', 'Rua dos Mercados, 123 - Belo Horizonte, MG', 1134567890, 'contato@bhsupermercado.com.br'),
  ('Carrefour Brasil', 'Avenida das Nações, 456 - Rio de Janeiro, RJ', 2198765432, 'atendimento@carrefourbrasil.com.br'),
  ('Pão de Açúcar', 'Rua do Comércio, 789 - São Paulo, SP', 3134567890, 'contato@paodeacucar.com.br'),
  ('St Marche', 'Avenida do Estado, 901 - São Paulo, SP', 7134567890, 'atendimento@stmarche.com.br'),
  ('Assaí', 'Rua dos Supermercados, 111 - Curitiba, PR', 4134567890, 'contato@assai.com.br');
  
  SELECT * FROM clientes WHERE nome_da_empresa = 'Assaí';
  
  SELECT * FROM clientes WHERE endereco LIKE '%São Paulo%';
  
  SELECT email FROM clientes ORDER BY email DESC;
  
  
  
  

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









   


  
  