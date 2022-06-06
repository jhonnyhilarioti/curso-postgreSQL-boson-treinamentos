INSERT INTO clientes (id_cliente,nome_cliente,sobrenome_cliente) 
VALUES (1,'Jhonny','Hilário Goulart');

INSERT INTO clientes (id_cliente, nome_cliente, sobrenome_cliente) 
VALUES (2,'Kamilla','Ramos');

INSERT INTO clientes (id_cliente, nome_cliente, sobrenome_cliente) 
VALUES (3, 'Ana', 'Teixeira');

SELECT * FROM clientes;

INSERT INTO produtos (id_produto, nome_produto, descricao, preco, qtd_estoque)
VALUES 
(1, 'Àlcool', 'Garrafa de álcool em gel de 1 litro', 12.90, 20),
(2, 'Luvas de Látex', 'Caixa de luvas de látex com 100 unidades', 32.50, 25),
(3, 'Pasta de Dentes', 'Tubo de pasta de dentes com 90g', 3.60, 12),
(4, 'Sabonete', 'Sabonete antibacteriano', 3.50, 5),
(5, 'Enxaguante Bucal', 'Antisséptico bucal de 50ml', 17.00, 28);

INSERT INTO produtos (id_produto, nome_produto, descricao, preco, qtd_estoque)
VALUES 
(6, 'Detergente', 'Detergente líquido 500ml', 1.89,32),
(7, 'Leite Integral', 'Leite integral caixa de 1 litro',4.60,14),
(8, 'Refrugerante', 'Garrafa de refrigerante de 600ml', 3.70, 14),
(9, 'Refrigerante', 'Garrafa de refrigerante de 1 litro', 6.89, 16),
(10, 'Refrigerante', 'Lata de refrigerante de 350ml', 2.99, 45);

INSERT INTO produtos (id_produto, nome_produto, preco, qtd_estoque)
VALUES (11, 'Margarina', 3.20, 8);

SELECT * FROM produtos;

INSERT INTO pedidos (id_cliente, id_produto, qtd_vendida)
VALUES 
(1,2,3),
(2,3,2),
(1,3,4);

SELECT * FROM pedidos;

