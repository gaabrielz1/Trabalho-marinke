SELECT 
    p.nome AS produto_nome,
    ip.quantidade AS quantidade_consumida,
    ip.preco_unitario AS preco_unitario
FROM 
    Item_Pedido ip
JOIN 
    Produto p ON ip.id_produto = p.id_produto
JOIN 
    Pedido pd ON ip.id_pedido = pd.id_pedido
WHERE 
    pd.id_mesa = 	3;  
