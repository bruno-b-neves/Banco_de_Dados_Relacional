-- Seleciona o Banco de Dados BellaNapoli
USE BellaNapoli

SELECT * FROM Pedido;

-- Cadastra a Pizza de Di Parma na tabela Pizza
INSERT Pizza(nome, preco, descricao, categoria)
VALUES('Di Parma', 75.00, NULL, 'Especiais')

-- Cadastra a Pizza de Camarão na tabela Pizza
INSERT Pizza(nome, preco, descricao, categoria)
VALUES('Camarão', 65.00, NULL, 'Especiais')

-- Consulta Pizzas com valores maiores ">" que 50 na tabela Pizza
SELECT * FROM Pizza WHERE preco > 50

-- Cadastra o 3º cliente na tabela Cliente
INSERT INTO Cliente(nome, logradouro, numero, bairro, telefone)
VALUES('Erick', 'Rua Qualquer', 55, 'Norte', '(11) 1234-5678')

-- Cadastra o 4º cliente na tabela Cliente
INSERT INTO Cliente(nome, logradouro, numero, bairro, telefone)
VALUES('Felipe', 'Rua das Alamedas', 115, 'Centro', '(11) 91234-5678')

-- Consulta o bairro e id_Cliente na tabela Cliente com operador lógico "AND"
SELECT * FROM Cliente
WHERE bairro = 'Centro' AND id_Cliente = 5

-- Consulta o bairro na tabela Cliente com operador lógico "OR"
SELECT * FROM Cliente
WHERE bairro = 'Oeste' OR bairro = 'Norte'

-- Cadastra o 1º Pedido do Cliente na Tabela Pedido
INSERT INTO Pedido(id_cliente, status, total, observacao)
VALUES(1, 'EM PREPARO', 38.5, NULL)

-- Cria a tabela Item_Pedido e relaciona com a tabela Pedido e tabela Pizza
CREATE TABLE Item_Pedido(
	id_Item_Pedido INT PRIMARY KEY IDENTITY,
	id_Pizza 	   INT,
	id_Pedido 	   INT,
	quantidade 	   INT NOT NULL,
	observacao 	   VARCHAR(100),
	data_registro  DATETIME DEFAULT GETDATE() NOT NULL,

	CONSTRAINT FK_Id_Pedido
		FOREIGN KEY (id_Pedido)
		REFERENCES Pedido(id_Pedido),
	
	CONSTRAINT FK_Id_Pizza
		FOREIGN KEY (id_Pizza)
		REFERENCES Pizza(id_Pizza)
);

-- Cadastra os Itens do Pedido na Tabela Item_Pedido
INSERT INTO Item_Pedido(id_Pizza, id_Pedido, quantidade, observacao)
VALUES(1, 1, 2, NULL)

-- Verifica o status do pedido com o operador lógico "<> ou !="
SELECT * FROM Pedido
WHERE status != 'Finalizado'
