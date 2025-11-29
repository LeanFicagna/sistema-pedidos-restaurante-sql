# 📦 Sistema de Pedidos de Restaurante — Banco de Dados SQL

Repositório contendo o **modelo lógico e físico** de um sistema de gestão de pedidos para restaurante.  
Inclui **DER**, scripts de **criação de tabelas normalizadas**, além de exemplos de **inserções, consultas, atualizações e exclusões** utilizando SQL.

Obs: Apesar de não ser pedido os arquivos DDL, optou-se por incluir para facilitar a correção da atividade.

## 📁 Estrutura do Repositório

### 📌 [`squema.sql`](./squema.sql)  
Arquivo responsável por:
- Criar o banco de dados `restaurante_db`;
- Criar todas as tabelas normalizadas (Cliente, Mesa, Garçom, Produto, Pedido e ItemPedido);
- Definir chaves primárias, estrangeiras e restrições.



### 📌 [`inserts.sql`](./inserts.sql)  
Contém os comandos de povoamento inicial das tabelas:
- Inserção de clientes, mesas e garçons;
- Inserção de produtos do cardápio;
- Criação de pedidos e itens do pedido.



### 📌 [`selects.sql`](./selects.sql)  
Arquivo com consultas SQL utilizadas para análise de dados, incluindo:
- JOINs entre tabelas;
- Filtros com `WHERE`;
- Ordenação (`ORDER BY`);
- Limitação de resultados (`LIMIT`);
- Consultas para relatórios simples.



### 📌 [`updates_deletes.sql`](./updates_deletes.sql)  
Arquivo contendo:
- 3 comandos de **UPDATE** (alterações em clientes, produtos e pedidos);
- 4 comandos de **DELETE** (exclusão segura de dados, considerando integridade referencial).

---

## 🚀 Instruções de Execução

Siga os passos abaixo para criar o banco de dados, popular tabelas e testar funcionalidades do sistema.

### 🔧 1. Criar o banco de dados e as tabelas

Execute o arquivo:

```
squema.sql
```

Este script irá:

- Criar o banco `restaurante_db`;
- Criar todas as tabelas normalizadas;
- Definir chaves primárias, estrangeiras e restrições.

**Como executar (DBeaver / MySQL Workbench):**
1. Abra o arquivo `squema.sql`;
2. Selecione todo o conteúdo;
3. Clique em **Run** (▶).



### 🍽️ 2. Inserir os dados iniciais

Execute o arquivo:

```
inserts.sql
```

Ele irá povoar o banco com:

- Clientes, mesas e garçons;
- Produtos do cardápio;
- Pedidos e itens do pedido.



### 🔍 3. Executar as consultas

Execute o arquivo:

```
selects.sql
```

Inclui consultas com:

- JOINs;
- WHERE;
- ORDER BY;
- LIMIT;
- Relatórios de pedidos.



### ✏️ 4. Executar Updates e Deletes

Execute:

```
updates_deletes.sql
```

Contém:

- 3 comandos **UPDATE**
- 4 comandos **DELETE**

Todos preparados para preservar integridade referencial.



### 🧪 5. Ambiente recomendado

- **MySQL 8.x**
- **DBeaver** ou **MySQL Workbench**
- Codificação: `UTF-8`
- Engine: `InnoDB`

---

## 🏗️ Modelo Lógico (DER)

O banco foi projetado seguindo os princípios de normalização **1FN, 2FN e 3FN**, garantindo:

- Ausência de redundâncias;
- Estrutura limpa e coerente;
- Relacionamentos 1:N e N:N corretamente implementados;
- Integridade referencial preservada.

![texto alternativo](https://github.com/LeanFicagna/sistema-pedidos-restaurante-sql/blob/main/diagrama.png)
---
