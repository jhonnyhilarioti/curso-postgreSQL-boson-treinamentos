CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY,
	nome_cliente VARCHAR(20) NOT NULL,
	sobrenome_cliente VARCHAR(40) NOT NULL
);

CREATE TABLE produtos(
	id_produto IN PRIMARY KEY,
	nome_produto VARCHAR(30) NOT NULL,
	descricao TEXT NULL,
	preco REAL CHECK(preco > 0) NOT NULL,
	qtd_estoque INT DEFAULT 0
);

CREATE TABLE pedidos(
	id_pedido SERIAL PRIMARY KEY,
	id_cliente INT NOT NULL REFERENCES clientes(id_clientes),
	id_produto IN NOT NULL,
	qtd_vendida INT NOT NULL,
	FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);


SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM pedidos;




