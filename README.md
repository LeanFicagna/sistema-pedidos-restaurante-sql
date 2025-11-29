# 📦 Sistema de Pedidos de Restaurante — Banco de Dados SQL

Repositório contendo o **modelo lógico e físico** de um sistema de gestão de pedidos para restaurante.  
Inclui **DER**, scripts de **criação de tabelas normalizadas**, além de exemplos de **inserções, consultas, atualizações e exclusões** utilizando SQL.

Obs: Apesar de não ser pedido os arquivos DDL, optou-se por incluir para facilitar a correção da atividade.
---

## 📁 Estrutura do Repositório

### 📌 [`squema.sql`](./squema.sql)  
Arquivo responsável por:
- Criar o banco de dados `restaurante_db`;
- Criar todas as tabelas normalizadas (Cliente, Mesa, Garçom, Produto, Pedido e ItemPedido);
- Definir chaves primárias, estrangeiras e restrições.

---

### 📌 [`inserts.sql`](./inserts.sql)  
Contém os comandos de povoamento inicial das tabelas:
- Inserção de clientes, mesas e garçons;
- Inserção de produtos do cardápio;
- Criação de pedidos e itens do pedido.

---

### 📌 [`selects.sql`](./selects.sql)  
Arquivo com consultas SQL utilizadas para análise de dados, incluindo:
- JOINs entre tabelas;
- Filtros com `WHERE`;
- Ordenação (`ORDER BY`);
- Limitação de resultados (`LIMIT`);
- Consultas para relatórios simples.

---

### 📌 [`updates_deletes.sql`](./updates_deletes.sql)  
Arquivo contendo:
- 3 comandos de **UPDATE** (alterações em clientes, produtos e pedidos);
- 4 comandos de **DELETE** (exclusão segura de dados, considerando integridade referencial).

---

## 🧩 Tecnologias Utilizadas

- **MySQL**
- **DBeaver**
- **SQL (DDL + DML)**
  - DDL para criação do esquema  
  - DML para inserções, consultas, atualizações e exclusões

---

## 🏗️ Modelo Lógico (DER)

O banco foi projetado seguindo os princípios de normalização **1FN, 2FN e 3FN**, garantindo:

- Ausência de redundâncias;
- Estrutura limpa e coerente;
- Relacionamentos 1:N e N:N corretamente implementados;
- Integridade referencial preservada.

![texto alternativo](https://github.com/LeanFicagna/sistema-pedidos-restaurante-sql/blob/main/diagrama.png)
---
