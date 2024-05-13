-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
CPF Varchar(14) Not Null PRIMARY KEY,
Endereco Varchar(100) Not Null,
Nome Varchar(80) Not Null,
Telefone Varchar(18) Not Null
)

CREATE TABLE Pedido (
Num_Pedido Int Not Null PRIMARY KEY,
Total_Pedido Decimal(7,2) Not Null,
Data_Pedido Date Not Null,
CPF Varchar(14) Not Null,
FOREIGN KEY(CPF) REFERENCES Cliente (CPF)
)

CREATE TABLE Produto (
Id_Produto Int Not Null PRIMARY KEY,
Preço Decimal(7,2) Not Null,
Nome_Produto Varchar(50) Not Null,
Estoque Int Not Null
)

CREATE TABLE Contem (
Quantidade Varchar(255) ,
Comprovante Varchar(255) PRIMARY KEY,
Id_Produto Int Not Null,
Num_Pedido Int Not Null,
FOREIGN KEY(Id_Produto) REFERENCES Produto (Id_Produto),
FOREIGN KEY(Num_Pedido) REFERENCES Pedido (Num_Pedido)
)

SELECT * FROM CLIENTE

--Inserindo dados na minha tabela Cliente
INSERT INTO CLIENTE VALUES ('123','RUA LIMEIRA', 'YGOR', 1991919293);
INSERT INTO CLIENTE VALUES ('124','RUA ALAMEDA', 'MARIA', 9998887776);
INSERT INTO CLIENTE VALUES ('125','AVENIDA DAS FLORES', 'JOÃO', 8887776665);
INSERT INTO CLIENTE VALUES ('126','RUA DOS PINHEIROS', 'ANA', 7776665554);
INSERT INTO CLIENTE VALUES ('127','AVENIDA BRASIL', 'CARLOS', 6665554443);
INSERT INTO CLIENTE VALUES ('128','RUA DA PAZ', 'LUCIA', 5554443332);
INSERT INTO CLIENTE VALUES ('129','AVENIDA 13 DE MAIO', 'PEDRO', 4443332221);
INSERT INTO CLIENTE VALUES ('130','RUA DAS ROSAS', 'FERNANDA', 3332221110);
INSERT INTO CLIENTE VALUES ('131','AVENIDA DAS ACÁCIAS', 'MARCOS', 2221110009);
INSERT INTO CLIENTE VALUES ('132','RUA DAS PALMEIRAS', 'SANDRA', 1110009998);

SELECT * FROM PEDIDO

--Inserindo dados na minha tabela Pedido Referenciando CPF da tabela Cliente
INSERT INTO Pedido VALUES (1, 100.50, '2024-05-01', '123');
INSERT INTO Pedido VALUES (2, 75.25, '2024-05-02', '124');
INSERT INTO Pedido VALUES (3, 200.00, '2024-05-03', '125');
INSERT INTO Pedido VALUES (4, 50.75, '2024-05-04', '126');
INSERT INTO Pedido VALUES (5, 300.90, '2024-05-05', '127');
INSERT INTO Pedido VALUES (6, 150.20, '2024-05-06', '128');
INSERT INTO Pedido VALUES (7, 80.60, '2024-05-07', '129');
INSERT INTO Pedido VALUES (8, 220.75, '2024-05-08', '130');
INSERT INTO Pedido VALUES (9, 180.30, '2024-05-09', '131');
INSERT INTO Pedido VALUES (10, 95.45, '2024-05-10', '132');

SELECT * FROM PRODUTO

--Inserindo Dados na minha tabela de Produto
INSERT INTO Produto VALUES (1, 25.00, 'Pizza Margherita (Média)', 50);
INSERT INTO Produto VALUES (2, 30.00, 'Pizza Pepperoni (Média)', 40);
INSERT INTO Produto VALUES (3, 28.00, 'Pizza Calabresa (Média)', 45);
INSERT INTO Produto VALUES (4, 32.00, 'Pizza Quatro Queijos (Média)', 35);
INSERT INTO Produto VALUES (5, 35.00, 'Pizza Frango com Catupiry (Média)', 30);
INSERT INTO Produto VALUES (6, 22.00, 'Pizza Vegetariana (Média)', 25);
INSERT INTO Produto VALUES (7, 40.00, 'Pizza Portuguesa (Média)', 20);
INSERT INTO Produto VALUES (8, 38.00, 'Pizza Bacon (Média)', 15);
INSERT INTO Produto VALUES (9, 27.00, 'Pizza Atum (Média)', 20);
INSERT INTO Produto VALUES (10, 45.00, 'Pizza Especial do Chef (Média)', 10);

SELECT * FROM CONTEM

-- Inserindo Dados na minha tabela Contem Referenciando id_Produto, Num_Ped
INSERT INTO Contem VALUES ('2', 'CP0001', 1, 1);
INSERT INTO Contem VALUES ('1', 'CP0002', 2, 1);
INSERT INTO Contem VALUES ('3', 'CP0003', 3, 2);
INSERT INTO Contem VALUES ('2', 'CP0004', 4, 2);
INSERT INTO Contem VALUES ('1', 'CP0005', 5, 3);
INSERT INTO Contem VALUES ('2', 'CP0006', 6, 3);
INSERT INTO Contem VALUES ('1', 'CP0007', 7, 4);
INSERT INTO Contem VALUES ('2', 'CP0008', 8, 4);
INSERT INTO Contem VALUES ('3', 'CP0009', 9, 5);
INSERT INTO Contem VALUES ('1', 'CP0010', 10, 5);

-- Estou consultando minha tabela cliente puxando os dados CPF e NOME
SELECT CPF, Nome FROM Cliente;

-- Aqui vou puxar os dados do número do pedido e o total na tabela PEDIDO
SELECT Num_Pedido, Total_Pedido FROM Pedido;

-- Aqui vou puxar os dados do NOME PRODUTO E PREÇO da minha tabela PRODUTO 	
SELECT Nome_Produto, Preço FROM Produto;

-- Agora irei consultar pedidos com valores acima de 200.00
SELECT * FROM Pedido 
WHERE Total_Pedido > 200.00;
 
-- Agora irei consultar pedidos com valores acima de 30.00
SELECT * FROM PRODUTO 
WHERE Preço > '30.00';

-- Agora irei puxar o nome das pizzas em ordem crescente
SELECT * FROM PRODUTO 
ORDER BY Nome_Produto ASC;

-- Aqui puxei os preços da pizza em ordem crescente 
SELECT * FROM PEDIDO
ORDER BY TOTAL_PEDIDO ASC;

-- Aqui estou puxando os dados da minha tabela produto em ordem decrescente
SELECT NOME_PRODUTO, Preço FROM PRODUTO
ORDER BY NOME_PRODUTO DESC;

-- Aqui estou consultando dados da tabela PRODUTO mas com limite de 3
SELECT PRODUTO, Preço FROM PRODUTO
ORDER BY NOME_PRODUTO
LIMIT 3;


