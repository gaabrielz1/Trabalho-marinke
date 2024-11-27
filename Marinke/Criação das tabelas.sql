CREATE TABLE Mesa (
    id_mesa INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL,
    status ENUM('Livre', 'Ocupada', 'Sobremesa', 'Ocupada-Ociosa') NOT NULL
);

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    documento VARCHAR(20) NOT NULL
);

CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    estoque_minimo INT NOT NULL,
    marca VARCHAR(50) NOT NULL
);

CREATE TABLE Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_mesa INT,
    id_cliente INT,
    data_hora DATETIME NOT NULL,
    status_pedido ENUM('Em andamento', 'Fechado') NOT NULL,
    FOREIGN KEY (id_mesa) REFERENCES Mesa(id_mesa),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente) ON DELETE SET NULL
);

CREATE TABLE Item_Pedido (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Forma_Pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE Venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_cliente INT,
    valor_total DECIMAL(10,2) NOT NULL,
    forma_pagamento INT,
    data_venda DATETIME NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente) ON DELETE SET NULL,
    FOREIGN KEY (forma_pagamento) REFERENCES Forma_Pagamento(id_pagamento)
);

CREATE TABLE Funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    documento VARCHAR(20) NOT NULL  
);

ALTER TABLE Mesa
ADD COLUMN id_funcionario INT,
ADD CONSTRAINT fk_funcionario
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario) 
    ON DELETE SET NULL;

