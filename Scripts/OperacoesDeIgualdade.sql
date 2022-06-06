SELECT nome_produto, preco FROM produtos WHERE preco > 12;

SELECT nome_produto, qtd_estoque FROM produtos  WHERE qtd_estoque <= 20;

SELECT nome_produto, qtd_estoque FROM produtos WHERE qtd_estoque <= 20 AND qtd_estoque  > 10;

SELECT * FROM produtos WHERE nome_produto <> 'Refrigerante';

SELECT * FROM produtos WHERE nome_produto != 'Refrigerante';