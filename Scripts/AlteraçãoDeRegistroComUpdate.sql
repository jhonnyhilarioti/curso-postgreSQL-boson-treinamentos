SELECT * FROM produtos ORDER BY id_produto;

UPDATE produtos SET descricao = 'Pote de margarina vegetal' WHERE id_produto = 11;

UPDATE produtos SET preco = 3.95 WHERE nome_produto = 'Sabonete';

UPDATE produtos SET qtd_estoque = qtd_estoque -4 WHERE preco > 15.00;

UPDATE produtos SET preco = preco * 1.10;
