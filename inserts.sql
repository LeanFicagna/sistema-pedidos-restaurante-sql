# INSERTS: CLIENTE
INSERT INTO cliente (id_cliente, nome, telefone) VALUES
(1, 'Maria Silva', '92988880001'),
(2, 'João Souza', '92988880002'),
(3, 'Ana Carolina', '92988880003'),
(4, 'Pedro Henrique', '92988880004'),
(5, 'Fernanda Santos', '92988880005');


# INSERTS: GARÇOM
INSERT INTO garcom (id_garcom, nome, turno) VALUES
(1, 'Carlos Mendes', 'Manhã'),
(2, 'Ana Paula', 'Tarde'),
(3, 'Rafael Souza', 'Noite'),
(4, 'Fernanda Lima', 'Noite'),
(5, 'João Pedro', 'Manhã');


# INSERTS: MESA
INSERT INTO mesa (id_mesa, nu_mesa, capacidade) VALUES
(1, 1, 4),
(2, 2, 2),
(3, 3, 6),
(4, 4, 8),
(5, 5, 4);


# INSERTS: PRODUTO
INSERT INTO produto (id_produto, nome, categoria, preco) VALUES
(1, 'Coca-Cola Lata', 'Bebida', 6.00),
(2, 'Suco Natural', 'Bebida', 8.50),
(3, 'X-Burger', 'Lanche', 15.00),
(4, 'X-Salada', 'Lanche', 18.00),
(5, 'Sorvete', 'Sobremesa', 10.00),
(6, 'Batata Frita', 'Porção', 20.00),
(7, 'Açaí 300ml', 'Sobremesa', 12.00),
(8, 'Macarronada Bolonhesa', 'Massa', 26.00),
(9, 'Refrigerante 2L', 'Bebida', 12.00),
(10, 'Hambúrguer Artesanal', 'Lanche', 25.00);


# INSERTS: PEDIDO
INSERT INTO pedido (id_pedido, id_cliente, id_mesa, id_garcom, total, dt_pedido) VALUES
(1, 1, 1, 1, 37.00, '2025-11-29 12:30:00'),
(2, 2, 2, 2, 50.50, '2025-11-29 13:00:00'),
(3, 3, 3, 3, 38.00, '2025-11-29 14:10:00'),
(4, 4, 4, 1, 76.00, '2025-11-29 14:45:00'),
(5, 5, 5, 4, 59.00, '2025-11-29 15:20:00');


# INSERTS: ITEM_PEDIDO
INSERT INTO item_pedido (id_item, id_pedido, id_produto, quantidade, preco_unitario) VALUES
# Pedido 1
(1, 1, 1, 2, 6.00),
(2, 1, 3, 1, 15.00),
(3, 1, 5, 1, 10.00),
# Pedido 2
(4, 2, 2, 1, 8.50),
(5, 2, 4, 2, 18.00),
(6, 2, 7, 1, 12.00),
# Pedido 3
(7, 3, 6, 1, 20.00),
(8, 3, 1, 3, 6.00),
# Pedido 4
(9, 4, 8, 1, 26.00),
(10, 4, 10, 2, 25.00),
# Pedido 5
(11, 5, 3, 1, 15.00),
(12, 5, 7, 2, 12.00),
(13, 5, 6, 1, 20.00);
