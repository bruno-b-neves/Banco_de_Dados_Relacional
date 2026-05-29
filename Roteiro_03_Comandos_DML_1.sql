-- Cria o Banco de Dados "BellaNapoli"
CREATE DATABASE BellaNapoli

-- Cria a tabela Pizza
CREATE TABLE Pizza(
	id_Pizza 	  INT 		    PRIMARY KEY IDENTITY,
	nome 		  VARCHAR(100)  NOT NULL,
	preco 		  DECIMAL(10,2) NOT NULL,
	data_registro DATETIME 	    DEFAULT GETDATE(),
	categoria 	  VARCHAR(100),
	descricao  	  VARCHAR(100),
)

-- Cria a tabela Cliente
CREATE TABLE Cliente(
	id_Cliente 	  INT 		   PRIMARY KEY IDENTITY,
	nome 		  VARCHAR(100) NOT NULL,
	logradouro 	  VARCHAR(100) NOT NULL,
	numero 	   	  INT 		   NOT NULL,
	bairro 	   	  VARCHAR(100) NOT NULL,
	telefone   	  VARCHAR(20)  UNIQUE NOT NULL,
	data_registro DATETIME 	   DEFAULT GETDATE()
)

-- Cria a tabela Pedido
CREATE TABLE Pedido(
	id_Pedido  INT 			   PRIMARY KEY IDENTITY,
	status 	   VARCHAR(100)    DEFAULT 'Aguardando' NOT NULL,
	total 	   DECIMAL(10,2)   NOT NULL,
	observacao VARCHAR(100),
)

SELECT * FROM Pizza

-- Cadastra a Pizza de Mussarela na tabela Pizza
INSERT INTO Pizza(nome, preco, data_registro, categoria, descricao)
VALUES('Mussarela', 35.00, '2026-05-29', 'Salgada', NULL)

-- Cadastra a Pizza de Calabresa na tabela Pizza
INSERT INTO Pizza(nome, preco, data_registro, categoria, descricao)
VALUES('Calabresa', 38.50, '2026-05-29', 'Salgada', NULL)

-- Cadastra a Pizza de Portuguesa na tabela Pizza
INSERT INTO Pizza(nome, preco, data_registro, categoria, descricao)
VALUES('Portuguesa', 42.50, '2026-05-29', 'Salgada', NULL)

-- Cadastra o 1º cliente na tabela Cliente
INSERT INTO Cliente(nome, logradouro, numero, bairro, telefone, data_registro)
VALUES('Bruno', 'Rua dos Bobos', 0, 'Sul', '(11) 91234-5678', '2026-05-29')

-- Cadastra o 2º cliente na tabela Cliente
INSERT INTO Cliente(nome, logradouro, numero, bairro, telefone, data_registro)
VALUES('Caroline', 'Rua da Casinha Torta', 10, 'Oeste', '(11) 1234-5678', '2026-05-29')

-- Altera a tabela pedido para adicionar a coluna id_Cliente 
ALTER TABLE Pedido ADD id_Cliente INT

-- Altera a tabela pedido para adicionar a coluna id_Pizza 
ALTER TABLE Pedido ADD id_Pizza INT

-- Altera a tabela Pedido para adicionar a relação com a Tabela Cliente
ALTER TABLE Pedido 
ADD CONSTRAINT FK_Id_Cliente FOREIGN KEY (id_Cliente) REFERENCES Pizza(id_Cliente)

-- Altera a tabela Pedido para adicionar a relação com a Tabela Pizza
ALTER TABLE Pedido 
ADD CONSTRAINT FK_Id_Pizza FOREIGN KEY (id_Pizza) REFERENCES Pizza(id_Pizza)

-- Cadastra o 1º Pedido do Cliente na Tabela Pedido
INSERT INTO Pedido(id_cliente, id_pizza, status, total, observacao)
VALUES(1, 1, 'EM PREPARO', 38.5, NULL)

-- Atualiza o valor da Pizza em 10%
UPDATE Pizza
SET preco = preco * 1.10
WHERE id_Pizza = 1

-- Atualiza o logradouro do cliente que mais comprou
UPDATE Cliente
SET logradouro = 'Rua Teste'
WHERE id_Cliente = 1

-- Atualia o status do pedido da Tabela Pedido
UPDATE Pedido
SET status = 'CANCELADO'
WHERE id_Pedido = 2

-- Exclui todos os pedidos da Tabela Pedido com status "FINALIZADO"
DELETE Pedido
WHERE status = 'CANCELADO'

-- Cadastra a Pizza da Casa na tabela Pizza
INSERT INTO Pizza(nome, preco, data_registro, categoria, descricao)
VALUES('Pizza da Casa', 55.00, '2026-05-29', 'Especiais', NULL)

-- Atualiza o nome e o preco da Pizza da Casa na Tabela Pizza
UPDATE Pizza
SET   nome     = 'Super Promoção',
	  preco    =  preco / 1.15
WHERE id_Pizza = 4








