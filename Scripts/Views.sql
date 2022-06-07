/*
 * O código abaixo cria uma View
 * A parte do código "OR REPLACE" é opcional, usada apenas para alterar a estrutura da View
 */
CREATE OR REPLACE VIEW vendas AS 
	SELECT
		   CL.nome_cliente AS Clientes, 
		   PR.nome_produto AS Produto,
		   PE.qtd_vendida AS Quantidade,
		   PE.id_pedido AS Pedido,
		   PR.preco * PE.qtd_vendida AS Fatura
	FROM pedidos PE
	JOIN clientes CL 
		ON
		PE.id_cliente = CL.id_cliente
	JOIN produtos PR 
		ON
		PE.id_produto = PR.id_produto;

SELECT * FROM vendas;

SELECT Clientes, Pedido FROM vendas;

/*
 * O código abaixo traz a somatória de quando o cliente gastou, a partir dos registro da View
 */
SELECT Clientes, sum(fatura) FROM vendas GROUP BY Clientes;

/*
 * O código abaixo altera o nome da View
 */
ALTER VIEW vendas RENAME TO faturas;

SELECT * FROM faturas;

/*
 * O código abaixo exclui a View se ela existir, e caso ela dependa de outra irá exclui-las em cascata
 */
DROP VIEW IF EXISTS faturas CASCADE ;

