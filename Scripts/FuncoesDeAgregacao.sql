SELECT count(*) AS "Qtd clientes" FROM clientes; 

SELECT count(nome_cliente) FROM clientes; 

SELECT count(nome_produto) FROM produtos; 

SELECT * FROM produtos ORDER BY id_produto;

SELECT count(DISTINCT nome_produto) FROM produtos; 

SELECT count(*) FROM produtos WHERE preco >= 10.00; 

SELECT max(preco) FROM produtos; 

SELECT min(preco) FROM produtos; 

SELECT sum(preco) FROM produtos;

SELECT avg(preco) FROM produtos;

SELECT ROUND(AVG(preco),2) FROM produtos;

SELECT avg(preco) FROM produtos WHERE nome_produto = 'Refrigerante';

SELECT sum(preco) FROM produtos;


