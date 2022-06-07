SELECT * FROM produtos ORDER BY id_produto;

DELETE FROM produtos WHERE id_produto = 12;

DELETE FROM produtos WHERE nome_produto = 'Manteiga';

DELETE FROM produtos WHERE qtd_estoque <= 5;

SELECT * FROM pedidos;

TRUNCATE TABLE pedidos;

INSERT INTO pedidos (id_cliente, id_produto, qtd_vendida)
VALUES 
(1,2,3),
(2,3,2),
(1,3,4),
(2,6,3),
(2,5,2),
(3,8,5);

