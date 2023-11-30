CREATE TABLE cliente (
    IDcliente  INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    contato VARCHAR(100)
);

CREATE TABLE funcionario (
    idfuncionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10, 2),
    datanasc DATE
);

CREATE TABLE vendas (
    idfatura INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(100),
    quantidade INT,
    preco DECIMAL(10, 2),
    validade DATE 

);

CREATE TABLE produtos (
    idproduto INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(100),
    preco DECIMAL,
    quantidade INT,
    validade DATE 
);

CREATE TABLE fornecedor (
    idfornecedor INT PRIMARY KEY AUTO_INCREMENT,
    fornecedor VARCHAR(100),
    contatos VARCHAR(100)
    
);

-- Inserir dados na tabela cliente
INSERT INTO cliente (nome,  contato) VALUES
  ('Ana Oliveira', '(555) 123-4567'),
  ('Pedro Santos', '(555) 234-5678'),
  ('Juliana Lima', '(555) 345-6789'),
  ('Lucas Costa', '(555) 456-7890'),
  ('Isabela Pereira', '(555) 567-8901'),
  ('Thiago Silva', '(555) 678-9012'),
  ('Bruna Souza', '(555) 789-0123'),
  ('Rafael Oliveira', '(555) 890-1234'),
  ('Larissa Santos', '(555) 901-2345'),
  ('Gustavo Lima', '(555) 012-3456'),
  ('Camila Costa', '(555) 123-6789'),
  ('Marcos Pereira', '(555) 234-5678'),
  ('Jéssica Oliveira', '(555) 345-8765'),
  ('Ricardo Silva', '(555) 456-7654'),
  ('Fernanda Lima', '(555) 567-6543'),
  ('André Souza', '(555) 678-5432'),
  ('Carolina Costa', '(555) 789-4321'),
  ('Bruno Santos', '(555) 890-3210'),
  ('Renata Oliveira', '(555) 012-3456'),
  ('Lucas Lima', '(555) 123-4567');


-- Inserir dados na tabela funcionario
INSERT INTO funcionario (idfuncionario, nome, cargo, salario, datanasc) VALUES
  (FLOOR(RAND() * 1000) + 1, 'Anderson Silva', 'Repositor de Mercearia', 3200.00, '1990-05-10'),
    (FLOOR(RAND() * 1000) + 1, 'Juliana Oliveira', 'Repositora de Perecíveis', 3000.00, '1993-08-22'),
    (FLOOR(RAND() * 1000) + 1, 'Marcos Pereira', 'Repositor de Limpeza', 2800.00, '1985-03-15'),
    (FLOOR(RAND() * 1000) + 1, 'Larissa Costa', 'Repositora de Produtos de Higiene', 2900.00, '1992-11-05'),
    (FLOOR(RAND() * 1000) + 1, 'Bruno Santos', 'Repositor de Congelados', 3100.00, '1988-06-18'),
    (FLOOR(RAND() * 1000) + 1, 'Vanessa Lima', 'Repositora de Frutas e Verduras', 3050.00, '1995-12-07'),
    (FLOOR(RAND() * 1000) + 1, 'Renato Costa', 'Repositor de Bebidas', 2850.00, '1994-09-29'),
    (FLOOR(RAND() * 1000) + 1, 'Carla Santos', 'Repositora de Produtos de Padaria', 2950.00, '1987-04-12'),
    (FLOOR(RAND() * 1000) + 1, 'Lucas Pereira', 'Repositor de Laticínios', 3050.00, '1991-01-25'),
    (FLOOR(RAND() * 1000) + 1, 'Bianca Costa', 'Repositora de Produtos de Limpeza', 2800.00, '1998-07-14'),
    (FLOOR(RAND() * 1000) + 1, 'Thiago Oliveira', 'Caixa', 3500.00, '1990-09-02'),
    (FLOOR(RAND() * 1000) + 1, 'Renata Lima', 'Caixa', 3450.00, '1993-12-19'),
    (FLOOR(RAND() * 1000) + 1, 'Marcelo Santos', 'Caixa', 3400.00, '1986-05-08'),
    (FLOOR(RAND() * 1000) + 1, 'Fernanda Costa', 'Caixa', 3480.00, '1992-11-11'),
    (FLOOR(RAND() * 1000) + 1, 'André Oliveira', 'Caixa', 3520.00, '1989-03-28'),
    (FLOOR(RAND() * 1000) + 1, 'Amanda Oliveira', 'Assistente Administrativo de Recursos Humanos', 3800.00, '1991-06-17'),
    (FLOOR(RAND() * 1000) + 1, 'Gustavo Lima', 'Assistente Administrativo de Compras', 3700.00, '1987-02-04'),
    (FLOOR(RAND() * 1000) + 1, 'Renata Lima', 'Assistente Administrativo Financeiro', 3900.00, '1994-10-30'),
    (FLOOR(RAND() * 1000) + 1, 'Marcelo Santos', 'Assistente Administrativo de Logística', 3850.00, '1985-08-22'),
    (FLOOR(RAND() * 1000) + 1, 'Carolina Mendes', 'Gerente de Supermercado', 6500.00, '1980-12-05');
-- Inserir dados na tabela vendas
INSERT INTO vendas ( idfatura, produto, quantidade, preco, validade ) VALUES
  (864, 'Arroz Alfa', 200, 3.50, '2023-12-31'),
  (237, 'Feijão Beta', 160, 4.20, '2023-11-15'),
  (562, 'Açúcar Gama', 240, 2.80, '2024-01-31'),
  (418, 'Óleo de Soja Delta', 100, 5.50, '2023-09-30'),
  (754, 'Café Épsilon', 120, 8.00, '2024-06-15'),
  (689, 'Macarrão Zeta', 180, 2.30, '2023-10-31'),
  (291, 'Sal Ômega', 220, 1.50, '2024-02-28'),
  (143, 'Farinha de Trigo Theta', 150, 3.80, '2023-12-15'),
  (509, 'Leite em Pó Iota', 80, 6.50, '2023-07-31'),
  (426, 'Sabonete Kappa', 400, 1.20, '2024-03-15'),
  (318, 'Shampoo Lambda', 300, 5.00, '2023-08-30'),
  (726, 'Condicionador Mu', 240, 4.80, '2024-05-31'),
  (651, 'Papel Higiênico Nu', 160, 2.50, '2023-10-15'),
  (841, 'Desinfetante Xi', 60, 7.00, '2024-04-30'),
  (277, 'Detergente Ômicron', 200, 2.00, '2023-12-01'),
  (592, 'Amaciante Pi', 140, 6.00, '2024-08-15'),
  (465, 'Escova de Dentes Rho', 240, 2.30, '2023-11-30'),
  (174, 'Pasta de Dentes Sigma', 200, 3.00, '2024-02-28'),
  (389, 'Fraldas Descartáveis Tau', 100, 10.50, '2023-12-31'),
  (653, 'Biscoitos Ômega', 170, 4.50, '2023-09-15');

-- Inserir dados na tabela produtos
INSERT INTO produtos (idproduto, marca, quantidade, preco, validade) VALUES
(1, 'Arroz Alfa', 200, 3.50, '2023-12-31'),
(2, 'Feijão Beta', 160, 4.20, '2023-11-15'),
(3, 'Açúcar Gama', 240, 2.80, '2024-01-31'),
(4, 'Óleo de Soja Delta', 100, 5.50, '2023-09-30'),
(5, 'Café Épsilon', 120, 8.00, '2024-06-15'),
(6, 'Macarrão Zeta', 180, 2.30, '2023-10-31'),
(7, 'Sal Ômega', 220, 1.50, '2024-02-28'),
(8, 'Farinha de Trigo Theta', 150, 3.80, '2023-12-15'),
(9, 'Leite em Pó Iota', 80, 6.50, '2023-07-31'),
(10, 'Sabonete Kappa', 400, 1.20, '2024-03-15'),
(11, 'Shampoo Lambda', 300, 5.00, '2023-08-30'),
(12, 'Condicionador Mu', 240, 4.80, '2024-05-31'),
(13, 'Papel Higiênico Nu', 160, 2.50, '2023-10-15'),
(14, 'Desinfetante Xi', 60, 7.00, '2024-04-30'),
(15, 'Detergente Ômicron', 200, 2.00, '2023-12-01'),
(16, 'Amaciante Pi', 140, 6.00, '2024-08-15'),
(17, 'Escova de Dentes Rho', 240, 2.30, '2023-11-30'),
(18, 'Pasta de Dentes Sigma', 200, 3.00, '2024-02-28'),
(19, 'Fraldas Descartáveis Tau', 100, 10.50, '2023-12-31'),
(20, 'Biscoitos Ômega', 170, 4.50, '2023-09-15');

-- Inserir dados na tabela fornecedor
INSERT INTO fornecedor (idfornecedor,fornecedor,  contatos) VALUES
  (1, 'Fornecedor Alpha', 'contato@fornecedoralpha.com'),
  (2, 'Fornecedor Beta', 'contato@fornecedorbeta.com'),
  (3, 'Fornecedor Gamma', 'contato@fornecedorgamma.com'),
  (4, 'Fornecedor Delta', 'contato@fornecedordelta.com'),
  (5, 'Fornecedor Epsilon', 'contato@fornecedorepsilon.com'),
  (6, 'Fornecedor Zeta', 'contato@fornecedorzeta.com'),
  (7, 'Fornecedor Eta', 'contato@fornecedoreta.com'),
  (8, 'Fornecedor Theta', 'contato@fornecedortheta.com'),
  (9, 'Fornecedor Iota', 'contato@fornecedoriota.com'),
  (10, 'Fornecedor Kappa', 'contato@fornecedorkappa.com'),
  (11, 'Fornecedor Lambda', 'contato@fornecedorlambda.com'),
  (12, 'Fornecedor Mu', 'contato@fornecedormu.com'),
  (13, 'Fornecedor Nu', 'contato@fornecedornu.com'),
  (14, 'Fornecedor Xi', 'contato@fornecedorxi.com'),
  (15, 'Fornecedor Omicron', 'contato@fornecedoricron.com'),
  (16, 'Fornecedor Pi', 'contato@fornecedorpi.com'),
  (17, 'Fornecedor Rho', 'contato@fornecedorrho.com'),
  (18, 'Fornecedor Sigma', 'contato@fornecedorsigma.com'),
  (19, 'Fornecedor Tau', 'contato@fornecedortau.com'),
  (20, 'Fornecedor Upsilon', 'contato@fornecedorupsilon.com');

-- 1
SELECT * FROM cliente;

-- 2
SELECT * FROM funcionario ORDER BY salario DESC;

-- 3
SELECT marca, quantidade FROM produtos ORDER BY quantidade ASC;

-- 4
SELECT v.*, p.*
FROM vendas v

JO
JOIN produtos p ON v.produto = p.marca

JOI
JOIN cliente c ON v.idfatura = c.IDcliente
WHERE c.nome = 'Ana Oliveira';

-- 5 
SELECT marca, preco FROM produtos ORDER BY preco DESC LIMIT 5;

-- 6
SELECT produto, SUM(quantidade * preco) AS total_vendas
FROM vendas
GROUP BY produto;

-- 7 
SELECT * FROM funcionario WHERE cargo = 'Caixa';

-- 8
SELECT * FROM produtos WHERE validade > CURDATE();

-- 9    
SELECT cargo, SUM(salario) AS total_despesa_salarios
FROM funcionario
GROUP BY cargo;

-- 10
SELECT p.marca AS produto, p.validade AS data_validade
FROM produtos p
WHERE p.validade <= DATE_ADD(CURDATE(), INTERVAL 1 MONTH)
ORDER BY p.validade;