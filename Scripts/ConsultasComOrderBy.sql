SELECT * FROM produtos;
SELECT * FROM ORDER BY nome_produto;

SELECT * FROM produtos ORDER BY qtd_estoque DESC;

SELECT nome_produto, descricao, preco FROM produtos 
WHERE nome_produto IN ('Refrigerante') ORDER BY id_produto, preco;

SELECT nome_produto, descricao FROM produtos
ORDER BY descricao NULLS FIRST;

SELECT nome_produto, descricao FROM produtos
ORDER BY descricao NULLS LAST;

SELECT * FROM produtos WHERE preco > 10.00 ORDER BY preco;