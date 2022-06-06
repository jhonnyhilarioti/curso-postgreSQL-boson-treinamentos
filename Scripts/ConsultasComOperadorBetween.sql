SELECT * FROM produtos;

SELECT nome_produto, preco FROM produtos WHERE preco BETWEEN 10.00 AND 20.00;

SELECT nome_produto, preco FROM produtos WHERE 
	preco BETWEEN 3.50 AND 5.00 OR 
	preco BETWEEN 10.00 AND 20.00;
	
SELECT nome_produto, preco FROM produtos 
	WHERE 
	preco BETWEEN 3.50 AND 5.00 
	OR 
	preco BETWEEN 10.00 AND 20.00 
	ORDER BY preco;
	
SELECT nome_produto, preco, qtd_estoque FROM produtos 
	WHERE 
	preco BETWEEN 2.00 AND 6.00 
	AND  
	qtd_estoque < 10 
	ORDER BY preco;

SELECT nome_produto, preco, qtd_estoque FROM produtos 
	WHERE 
	preco NOT BETWEEN 5.00 AND 12.00  
	ORDER BY preco;



