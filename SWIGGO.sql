USE SWIGGO;

CREATE TABLE VENDA (
    id_venda INT PRIMARY KEY,
    dt_venda DATE,
    valor_total DECIMAL(10, 2)
);

CREATE TABLE PRODUTO (
    id_prod INT PRIMARY KEY,
    nome VARCHAR(255),
    validade DATE,
    categoria VARCHAR(100)
);

CREATE TABLE ESTOQUE (
    id_estoque INT PRIMARY KEY,
    id_produto INT,
    dt_saida DATE,
    dt_entrada DATE,
    qtde INT,
    FOREIGN KEY (id_produto) REFERENCES Produto(id_prod)
);

CREATE TABLE PRECO (
    id_preco INT PRIMARY KEY,
    id_prod INT,
    pre_custo DECIMAL(10, 2),
    pre_venda DECIMAL(10, 2),
    dt_inicial DATE,  -- Data de início da promoção (se houver)
    dt_final DATE,    -- Data de término da promoção (se houver)
    FOREIGN KEY (id_prod) REFERENCES Produto(id_prod)
);