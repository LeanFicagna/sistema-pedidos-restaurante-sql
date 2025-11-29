# 1) Listar todos os pedidos com nome do cliente, mesa e garçom
SELECT 
    p.id_pedido,
    c.nome AS cliente,
    g.nome AS garcom,
    m.nu_mesa AS mesa,
    p.total,
    p.dt_pedido
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id_cliente
JOIN mesa m ON p.id_mesa = m.id_mesa
JOIN garcom g ON p.id_garcom = g.id_garcom
ORDER BY p.dt_pedido;

# 2) Listar os itens de um pedido específico (ex: pedido 1)
SELECT 
    ip.id_item,
    pr.nome AS produto,
    ip.quantidade,
    ip.preco_unitario,
    (ip.quantidade * ip.preco_unitario) AS subtotal
FROM item_pedido ip
JOIN produto pr ON ip.id_produto = pr.id_produto
WHERE ip.id_pedido = 1;

# 3) Listar produtos acima de R$ 15, ordenados do maior para o menor preço
SELECT 
    id_produto,
    nome,
    categoria,
    preco
FROM produto
WHERE preco > 15
ORDER BY preco DESC;

# 4) Top 5 produtos mais vendidos
SELECT 
    pr.nome,
    SUM(ip.quantidade) AS total_vendido
FROM item_pedido ip
JOIN produto pr ON ip.id_produto = pr.id_produto
GROUP BY pr.nome
ORDER BY total_vendido DESC
LIMIT 5;

# 5) Total gasto por cliente (somatório dos pedidos)
SELECT 
    c.nome AS cliente,
    SUM(p.total) AS valor_gasto
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id_cliente
GROUP BY c.nome
ORDER BY valor_gasto DESC;
