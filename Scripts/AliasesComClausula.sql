SELECT * FROM produtos;
SELECT nome_produto AS "Produto" FROM produtos;

SELECT * FROM clientes;
SELECT nome_cliente AS "Nome", sobrenome_cliente AS "Sobrenome" FROM clientes AS "CL";

SELECT * FROM pedidos;
SELECT id_pedido AS "Código do Pedido", qtd_vendida AS "Quantidade Vendida" FROM pedidos
ORDER BY "Quantidade Vendida";

------------------------------

SELECT * FROM produtos;
SELECT nome_produto produto FROM produtos;

SELECT * FROM clientes;
SELECT nome_cliente nome, sobrenome_cliente sobrenome FROM clientes CL;

SELECT * FROM pedidos;
SELECT id_pedido codigo_produto, qtd_vendida quantidade_vendida FROM pedidos p
ORDER BY quantidade_vendida;



