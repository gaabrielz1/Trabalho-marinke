SELECT 
    f.nome AS funcionario_nome,
    m.numero AS numero_mesa,
    SUM(v.valor_total) AS total_gasto
FROM 
    Venda v
JOIN 
    Pedido p ON v.id_pedido = p.id_pedido
JOIN 
    Mesa m ON p.id_mesa = m.id_mesa
JOIN 
    Funcionario f ON f.id_funcionario = m.id_funcionario  -- Supondo que exista uma tabela Funcionario
GROUP BY 
    f.nome, m.numero;
