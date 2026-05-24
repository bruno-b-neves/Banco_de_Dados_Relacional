-- Cria o Banco de Dados
CREATE DATABASE Livraria_Digital; 
GO

-- Seleciona o Banco de Dados que será usado
USE Livraria_Digital;
GO

/* 
  ESTRUTURA DE DADOS: LIVRARIA DIGITAL
  As chaves e atributos representam o contrato entre o Banco e a Aplicação.
  
  1. PRIMARY KEY: Identidade única e obrigatória da linha.
  2. FOREIGN KEY: Representa o relacionamento entre objetos (ex: um Livro 'tem' uma Editora).
  3. IDENTITY(1,1): Automação da identidade, começando em 1 e incrementando de 1 em 1.
  4. ATRIBUTOS: Propriedades dos objetos (nome, valor, quantidade) com tipos específicos.

  TABELA ASSOCIATIVA (N:N): 
  Como um livro pode ter vários autores e um autor pode escrever vários livros, 
  esta tabela resolve o relacionamento Muitos-para-Muitos, transformando-o em 
  dois relacionamentos 1:N.

  PRECISÃO FINANCEIRA: 
  Usamos DECIMAL(10,2) para garantir que cálculos de dinheiro (valor_total) 
  não sofram erros de arredondamento, comuns em tipos como FLOAT.

  Atributos "pesados" (como o resumo) são isolados nesta tabela para que a 
  busca na tabela principal 'Livro' permaneça rápida e performática.
*/

-- Primeiro as tabelas que possuem as chaves estrangeiras (as dependentes)
IF OBJECT_ID(N'Item_Pedido') IS NOT NULL DROP TABLE Item_Pedido
IF OBJECT_ID(N'Livro_Autor') IS NOT NULL DROP TABLE Livro_Autor
IF OBJECT_ID(N'Detalhe_Livro') IS NOT NULL DROP TABLE Detalhe_Livro
IF OBJECT_ID(N'Pedido') IS NOT NULL DROP TABLE Pedido

-- Depois as tabelas que são referenciadas (as principais)
IF OBJECT_ID(N'Editora') IS NOT NULL DROP TABLE Editora
IF OBJECT_ID(N'Livro') IS NOT NULL DROP TABLE Livro
IF OBJECT_ID(N'Autor') IS NOT NULL DROP TABLE Autor
IF OBJECT_ID(N'Cliente') IS NOT NULL DROP TABLE Cliente

CREATE TABLE Editora(
  id_Editora INT PRIMARY KEY IDENTITY(1,1),
  nome VARCHAR(100) NOT NULL,
  cnpj INT NOT NULL
)

CREATE TABLE Livro(
  id_Livro INT PRIMARY KEY IDENTITY(1,1),
  titulo VARCHAR(100) NOT NULL,
  ano INT NOT NULL,
  id_Editora INT,

  CONSTRAINT FK_Editora
    FOREIGN KEY (id_Editora)
    REFERENCES Editora(id_Editora)
)

CREATE TABLE Autor(
  id_Autor INT PRIMARY KEY IDENTITY(1,1),
  nome VARCHAR(100) NOT NULL,
)

CREATE TABLE Livro_Autor(
  id_LivroAutor INT PRIMARY KEY IDENTITY(1,1),
  id_Livro INT,
  id_Autor INT,

  CONSTRAINT FK_LIVRO
    FOREIGN KEY (id_Livro)
    REFERENCES Livro(id_livro),

  CONSTRAINT FK_AUTOR
    FOREIGN KEY (id_Autor)
    REFERENCES Autor(id_Autor)
)

CREATE TABLE Detalhe_Livro(
  id_DetalheLivro INT PRIMARY KEY IDENTITY(1,1),
  resumo VARCHAR(255) NOT NULL,
  id_Livro INT,

  CONSTRAINT FK_DetalheLivro
    FOREIGN KEY (id_Livro)
    REFERENCES Livro(id_Livro)
)

CREATE TABLE Cliente(
  id_Cliente INT PRIMARY KEY IDENTITY(1,1),
  nome VARCHAR(100) NOT NULL,
  logradouro VARCHAR(100) NOT NULL,
  numero_residencia INT NOT NULL,
  bairro VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
)

CREATE TABLE Pedido(
  id_Pedido INT PRIMARY KEY IDENTITY(1,1),
  id_Cliente INT,
  valor_total DECIMAL(10,2) DEFAULT 0.00 NOT NULL,

  CONSTRAINT FK_Cliente
    FOREIGN KEY (id_Cliente)
    REFERENCES Cliente(id_Cliente),
)

CREATE TABLE Item_Pedido(
  id_ItemPedido INT PRIMARY KEY IDENTITY(1,1),
  id_Livro INT,
  id_Pedido INT,
  quantidade INT DEFAULT 0 NOT NULL,
  preco_unitario DECIMAL(10,2) DEFAULT 0.00 NOT NULL,

  CONSTRAINT FK_Livro_Item_Pedido
    FOREIGN KEY (id_Livro)
    REFERENCES Livro(id_Livro),

  CONSTRAINT FK_Pedido
    FOREIGN KEY (id_Pedido)
    REFERENCES Pedido(id_Pedido)
)
