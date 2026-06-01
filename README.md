<h1 align="center">🗄️ Banco de Dados Relacional — SQL Server</h1>

<p align="center">
  <img src="https://img.shields.io/badge/SQL_Server-CC292B?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" alt="SQL Server">
  <img src="https://img.shields.io/badge/T--SQL-0078D4?style=for-the-badge" alt="T-SQL">
  <img src="https://img.shields.io/badge/Acad%C3%Aamico-239120?style=for-the-badge" alt="Acadêmico">
</p>

---

## 📌 Sobre o Repositório

Este repositório foi desenvolvido com o objetivo de documentar, organizar e consolidar os projetos práticos, laboratórios e exercícios realizados durante a disciplina de **Banco de Dados Relacional** na faculdade. 

O foco deste projeto é estritamente **educacional**. Ele funciona como um portfólio acadêmico e um guia de referência prática sobre como projetar, manipular e consultar bancos de dados utilizando o **Microsoft SQL Server** através do ambiente do *SQL Server Management Studio (SSMS)*.

---

## 🚀 Conceitos e Subdivisões do SQL Consolidados

Durante a jornada acadêmica, os scripts e atividades foram divididos com base nas sublinguagens do ecossistema SQL:

#### 📐 1. DDL (Data Definition Language — Linguagem de Definição de Dados)
Responsável pela criação, alteração e estruturação dos objetos físicos e lógicos do banco de dados (esquemas, tabelas e integridade referencial por meio de chaves primárias e estrangeiras):
* `CREATE TABLE`: Criação de novas tabelas e definição de tipos de dados.
* `ALTER TABLE`: Modificação de colunas ou restrições de tabelas existentes.
* `DROP TABLE`: Remoção definitiva de tabelas e suas estruturas do banco de dados.

#### ✍️ 2. DML (Data Manipulation Language — Linguagem de Manipulação de Dados)
Focada na inserção e modificação direta dos dados armazenados nas tabelas, aplicando as regras de negócio solicitadas nos enunciados práticos:
* `INSERT INTO`: Inclusão e povoamento de novos registros nas entidades.
* `UPDATE`: Atualização condicional e segura de dados (utilizando de forma obrigatória a cláusula `WHERE`).
* `DELETE FROM`: Remoção controlada de registros específicos.

#### 🔍 3. DQL (Data Query Language — Linguagem de Consulta de Dados)
O núcleo da extração e análise de dados. Abrange desde consultas simples a uma única tabela até construções complexas envolvendo filtros avançados e relacionamentos:
* `SELECT` / `FROM` / `WHERE`: Estrutura base para projeção, origem e filtragem de dados.
* `GROUP BY` / `HAVING`: Agrupamentos e condições aplicadas a funções agregadas (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`).
* `INNER JOIN` / `LEFT JOIN` / `RIGHT JOIN`: Junção de múltiplas tabelas através de chaves correlacionadas.

#### 🤝 4. DTL ou TCL (Data/Transaction Control Language — Linguagem de Controle de Transação)
Utilizada para gerenciar transações lógicas no banco de dados, garantindo as propriedades ACID (Atomicidade, Consistência, Isolamento e Durabilidade) em operações sequenciais complexas:
* `BEGIN TRANSACTION`: Início de um bloco de instruções que devem ser tratadas como uma única unidade de trabalho.
* `COMMIT`: Confirmação e gravação definitiva de todas as alterações feitas na transação.
* `ROLLBACK`: Cancelamento e reversão de todas as alterações caso ocorra algum erro no processo.

#### 🛡️ 5. DCL (Data Control Language — Linguagem de Controle de Dados)
Focada na administração de segurança, privilégios e permissões de acesso ao banco de dados, simulando as responsabilidades de um DBA (Database Administrator):
* `GRANT`: Concessão de permissões específicas de leitura ou escrita para usuários ou perfis.
* `REVOKE`: Remoção ou cancelamento de privilégios previamente concedidos.

---

## 🛠️ Tecnologias e Ferramentas Utilizadas
* SGBD Principal: Microsoft SQL Server (Express / Developer Edition)
* Dialeto SQL: T-SQL (Transact-SQL)
* Interface de Desenvolvimento: SQL Server Management Studio (SSMS)

## ✒️ Considerações Acadêmicas
Este repositório documenta a evolução desde a compreensão do Modelo Entidade-Relacionamento (MER) teórico até a sua implementação física e manipulação lógica. Os códigos demonstram uma base sólida na prevenção de erros comuns de DML (como atualizações sem cláusulas de filtragem) e no uso correto de tipos de dados nativos do SQL Server (INT, VARCHAR, DECIMAL, etc.).
