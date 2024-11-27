INSERT INTO Funcionario (nome, documento) VALUES
('João da Silva', '123.456.789-00'),
('Maria Oliveira', '987.654.321-00'),
('Carlos Souza', '321.654.987-00');

INSERT INTO Mesa (numero, status, id_funcionario) VALUES
(1, 'Livre', NULL),
(2, 'Ocupada', 1),  
(3, 'Ocupada', 2),  
(4, 'Livre', NULL),
(5, 'Ocupada', 3);  

INSERT INTO Cliente (nome, documento) VALUES
('Ana Costa', '111.222.333-44'),
('Pedro Almeida', '555.666.777-88'),
('Juliana Pereira', '999.888.777-66');

INSERT INTO Produto (nome, preco_unitario, quantidade_estoque, estoque_minimo, marca) VALUES
('Coca-Cola', 5.50, 100, 10, 'Coca-Cola'),
('Pizza Margherita', 35.00, 50, 5, 'Dominos'),
('Hambúrguer', 22.00, 30, 3, 'McDonald\'s'),
('Água Mineral', 3.00, 200, 20, 'Nestlé');

INSERT INTO Forma_Pagamento (descricao) VALUES
('Cartão de Crédito'),
('Dinheiro'),
('Pix');

INSERT INTO Pedido (id_mesa, id_cliente, data_hora, status_pedido) VALUES
(2, 1, '2024-11-27 12:30:00', 'Em andamento'), 
(3, 2, '2024-11-27 12:45:00', 'Em andamento'),  
(5, 3, '2024-11-27 13:00:00', 'Em andamento');  

INSERT INTO Item_Pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 2, 5.50),  
(1, 3, 1, 22.00), 
(2, 2, 1, 35.00), 
(2, 4, 3, 3.00),   
(3, 3, 2, 22.00); 

INSERT INTO Venda (id_pedido, id_cliente, valor_total, forma_pagamento, data_venda) VALUES
(1, 1, 33.00, 1, '2024-11-27 14:00:00'),  
(2, 2, 141.00, 2, '2024-11-27 14:15:00'), 
(3, 3, 88.00, 3, '2024-11-27 14:30:00');  


