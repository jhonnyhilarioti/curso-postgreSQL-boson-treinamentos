SELECT pedidos.id_pedido, produtos.nome_produto, pedidos.qtd_vendida 
FROM pedidos JOIN produtos ON pedidos.id_produto = produtos.id_produto;

SELECT p.id_pedido, pr.nome_produto, p.qtd_vendida
FROM pedidos p JOIN produtos pr ON p.id_produto = pr.id_produto;

SELECT p.id_pedido, pr.nome_produto, p.qtd_vendida
FROM pedidos p JOIN produtos pr ON p.id_produto = pr.id_produto
WHERE pr.preco BETWEEN 3.00 AND 5.00 ;

SELECT p.id_pedido, pr.nome_produto, c.nome_cliente, qtd_vendida 
FROM pedidos p JOIN produtos pr ON p.id_produto = pr.id_produto 
			   JOIN clientes c ON p.id_cliente = c.id_cliente;
			  

SELECT * FROM produtos p JOIN pedidos p2 ON p.id_produto = p2.id_pedido;

SELECT * FROM clientes c JOIN pedidos p ON c.id_cliente = p.id_cliente WHERE nome_cliente = 'Jhonny';



