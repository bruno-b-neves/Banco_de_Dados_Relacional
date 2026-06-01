# 🎓 Banco de Dados Relacional — Aprendizado Acadêmico

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL Badge">
  <img src="https://img.shields.io/badge/SQL-PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white" alt="Postgres Badge">
  <img src="https://img.shields.io/badge/Foco-Educacional--Acadêmico-blue?style=for-the-badge" alt="Foco Universitário">
</p>

Este repositório foi criado com o objetivo de centralizar, organizar e documentar todo o aprendizado prático e teórico sobre **Bancos de Dados Relacionais** adquirido durante a minha jornada na faculdade.

O foco aqui é estritamente **educacional**. Ele serve como um portfólio de evolução acadêmica, partindo dos conceitos mais elementares de consultas e manipulação de dados até a estruturação e resolução de problemas lógicos aplicados a cenários do mundo real (como sistemas de pizzarias, gerenciamento de clientes, controle de fidelidade, entre outros).

---

## 📌 Conteúdo do Repositório

O repositório está estruturado através de scripts `.sql` que abordam diferentes níveis de complexidade. Dentro dos arquivos, você encontrará a aplicação prática de:

### 🛠️ DDL (Data Definition Language)
* Criação de tabelas (`CREATE TABLE`).
* Definição de chaves primárias (`PRIMARY KEY`) e chaves estrangeiras (`FOREIGN KEY`).
* Alteração de estruturas (`ALTER TABLE`).

### 📊 DML (Data Manipulation Language) — *Foco Principal*
* **Inserção de Dados (`INSERT`):** Povoamento correto de tabelas respeitando restrições de integridade.
* **Consultas (`SELECT`):** Filtragem de registros e extração de relatórios específicos utilizando cláusulas como `WHERE`.
* **Atualizações (`UPDATE`):** Modificação de registros existentes com precisão (evitando o temido `UPDATE` sem `WHERE`).
    * *Exemplo prático:* Cálculos matemáticos integrados, como a aplicação de descontos em produtos (`preco = preco / 1.15`).
    * *Lógica de negócios:* Resolução de problemas como "atualizar o endereço do cliente que mais comprou" através de cruzamento de dados e análise de registros.
* **Exclusões (`DELETE`):** Remoção controlada de registros do banco de dados.

---

## 🍕 Exemplos Práticos Abordados

Os exercícios simulam demandas reais que um administrador ou desenvolvedor de banco de dados enfrenta:

1.  **Regras de Negócio e Fidelidade:** Investigar através de consultas quais clientes possuem maior volume de compras para aplicar atualizações cadastrais (como mudanças de logradouro).
2.  **Atualizações Dinâmicas de Preços:** Aplicação de conceitos matemáticos diretamente na sintaxe SQL para atualizar simultaneamente nomes de produtos e recalcular preços promocionais utilizando a separação correta por vírgulas.

```sql
-- Exemplo de sintaxe limpa e estruturada utilizada nos exercícios
UPDATE Pizza
SET   nome     = 'Super Promoção',
      preco    = preco / 1.15
WHERE id_Pizza = 4;
