SELECT * FROM clientes;
SELECT id_cliente, nome_cliente FROM clientes;

SELECT * FROM produtos;
SELECT nome_produto, qtd_estoque FROM produtos;
SELECT nome_produto, preco, * FROM produtos WHERE id_produto = 3 AND qtd_estoque = 12;
SELECT * FROM produtos WHERE preco > 15;

SELECT * FROM pedidos;
SELECT id_cliente, id_produto FROM pedidos;
SELECT id_produto, qtd_vendida FROM pedidos WHERE id_cliente = 1;
