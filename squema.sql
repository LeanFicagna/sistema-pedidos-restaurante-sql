# Cria banco de dados
CREATE DATABASE IF NOT EXISTS restaurante_db
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;
  
USE restaurante_db;

#Cria tabelas
## cliente
CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

## mesa
CREATE TABLE IF NOT EXISTS mesa (
    id_mesa INT AUTO_INCREMENT PRIMARY KEY,
    nu_mesa INT NOT NULL UNIQUE,
    capacidade INT NOT NULL
);

## garcom
CREATE TABLE IF NOT EXISTS garcom (
    id_garcom INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    turno VARCHAR(50)
);

## pedido
CREATE TABLE IF NOT EXISTS pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_mesa INT NOT NULL,
	id_garcom INT NOT NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'Em Preparo',
	total DECIMAL(10,2) NOT NULL,
    dt_pedido DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_mesa) REFERENCES mesa(id_mesa),
    FOREIGN KEY (id_garcom) REFERENCES garcom(id_garcom)
);

## produto
CREATE TABLE IF NOT EXISTS produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10,2) NOT NULL
);

## item_pedido
CREATE TABLE IF NOT EXISTS item_pedido (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL CHECK (quantidade > 0),
    preco_unitario DECIMAL(10,2) NOT NULL,
    
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
      ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
      ON DELETE CASCADE
);