## Cenário
Cenário: Modernização e Controle Eficiente de Operações Comerciais
A SOS Comércio é uma empresa especializada em oferecer produtos terceirizados para o setor varejista. Recentemente, a empresa assumiu a necessidade urgente de implementar um sistema comercial abrangente para melhorar suas operações e garantir um gerenciamento eficiente de clientes, vendas, produtos, funcionários e fornecedores.
1. Clientes: A empresa lida com uma base diversificada de clientes, desde consumidores individuais até clientes corporativos. A necessidade de um sistema centralizado para gerenciamento de informações de clientes e dados de contato. Isso permitirá personalizar o atendimento ao cliente.
2. Vendas: O controle de vendas é crucial para entender o desempenho financeiro da empresa. O novo sistema deve ser capaz de registrar transações de vendas, gerar faturas automaticamente, controlar o estoque em tempo real e oferecer relatórios detalhados sobre o desempenho de vendas.
3. Produtos: A SOS Comércio lida com uma variedade de produtos consumíveis. O sistema comercial deve permitir a fácil adição, atualização e remoção de produtos, além de manter as informações fornecidas sobre cada item, como preço, quantidade em estoque e fornecedor.
4. Funcionários: O controle eficiente dos funcionários é vital para uma operação suave do negócio. O sistema deve manter registros de informações pessoais e de carga.
5. Fornecedores: A empresa depende de uma rede de fornecedores para manter seu estoque. O sistema deve rastrear informações sobre os fornecedores e detalhes de contato.
Ao implementar um sistema comercial que integre essas entidades de maneira eficiente, a SOS Comércio Soluções Comerciais espera melhorar a eficiência operacional, oferecer um atendimento ao cliente aprimorado e tomar decisões estratégicas embasadas em dados precisos

## Modelagem Conceitual
[Explique o modelo conceitual do banco de dados. Discuta as entidades de alto nível, os relacionamentos e a estrutura geral do modelo de dados.]
### Entidades
1. **Cliente**
   - Atributos: IDcliente (PK), nome, contato
   - Com relacionamento entre entidade vendas com a relação de  compra/venda
2. **Funcionário**
   - Atributos: idfuncionario (PK), nome, cargo, salario, datanasc
   - Com relacionamento entre entidade produto com a relação de organiza 
3. **Vendas**
   - Atributos: idfatura (PK), produto, quantidade, preco, validade
   - Relacionamentos: Cliente (FK: IDcliente), Funcionário (FK: idfuncionario)
   - Com relacionamento entre entidade produtos e cliente com a relação de vendas
4. **Produtos**
   - Atributos: idproduto (PK), marca, preco, quantidade, validade
   - Com relacionamento entre entidade funcionarios com a realação organiza e com vendas com realçao vendas
5. **Fornecedor**
   - Atributos: idfornecedor (PK), fornecedor, contatos## Modelagem Lógica
   - Com relacionamento entre entidade produto com a relçao direta 
#### Modelo logico  Tabelas 

1. **cliente**
   - Atributos: IDcliente (Chave Primária), nome, contato

    ```sql
    CREATE TABLE cliente (
        IDcliente INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(100),
        contato VARCHAR(100)
    );
    ```

2. **funcionario**
   - Atributos: idfuncionario (Chave Primária), nome, cargo, salario, datanasc

    ```sql
    CREATE TABLE funcionario (
        idfuncionario INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(100),
        cargo VARCHAR(100),
        salario DECIMAL(10, 2),
        datanasc DATE
    );
    ```

3. **vendas**
   - Atributos: idfatura (Chave Primária), produto, quantidade, preco, validade
   - Chaves Estrangeiras: IDcliente (referenciando cliente), idfuncionario (referenciando funcionario)

    ```sql
    CREATE TABLE vendas (
        idfatura INT PRIMARY KEY AUTO_INCREMENT,
        produto VARCHAR(100),
        quantidade INT,
        preco DECIMAL(10, 2),
        validade DATE,
        IDcliente INT,
        idfuncionario INT,
        FOREIGN KEY (IDcliente) REFERENCES cliente (IDcliente),
        FOREIGN KEY (idfuncionario) REFERENCES funcionario (idfuncionario)
    );
    ```

4. **produtos**
   - Atributos: idproduto (Chave Primária), marca, preco, quantidade, validade

    ```sql
    CREATE TABLE produtos (
        idproduto INT PRIMARY KEY AUTO_INCREMENT,
        marca VARCHAR(100),
        preco DECIMAL(10, 2),
        quantidade INT,
        validade DATE
    );
    ```

5. **fornecedor**
   - Atributos: idfornecedor (Chave Primária), fornecedor, contatos

    ```sql
    CREATE TABLE fornecedor (
        idfornecedor INT PRIMARY KEY AUTO_INCREMENT,
        fornecedor VARCHAR(100),
        contatos VARCHAR(100)
    );
    ```
## Dados
Os dados presentes no projetos são simples INSERT INTO para a adição de dados e o diferencial e o codigo  (FLOOR(RAND() * 1000) + 1 que a cada dado inserido novo trara um id diferente de 0 a 1000
## CRUD

Select ultilizados durante a criação pojeto 
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
