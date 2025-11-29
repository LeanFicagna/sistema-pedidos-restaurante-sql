# UPDATES

# 1) Atualizar o nome do cliente de id_cliente = 1
UPDATE cliente
SET nome = 'Carlos Andrade'
WHERE id_cliente = 1;

# 2) Atualizar o preço de um produto (id_produto = 3)
UPDATE produto
SET preco = 22.50
WHERE id_produto = 3;

# 3) Atualizar o garçom (id_pedido = 2)
UPDATE pedido
SET id_garcom = 1
WHERE id_pedido = 2;

# DELETES

# 1) Excluir um item específico de um pedido (id_item = 5)
DELETE FROM item_pedido
WHERE id_item = 5;


# 2) Excluir um produto(id_produto = 10)
DELETE FROM produto
WHERE id_produto = 10;

# 3) Excluir pedido
DELETE FROM pedido
WHERE id_pedido = 4;

# 4) Excluir um cliente sem pedidos (id_cliente = 4)
# Só será removido se o item 3) for executado, pois o cliente id_cliente = 4 tem um pedido id_pedido = 4
DELETE FROM cliente
WHERE id_cliente = 4
  AND id_cliente NOT IN (
        SELECT id_cliente FROM pedido
     );
