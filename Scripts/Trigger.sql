
/**
 * No SQL abaixo, foi criado uma TRIGGER para impedir o update da quantidade de itens vendido,
 * quando a quantidade em estoque for menor
 */
CREATE TRIGGER atualiza_estoque
BEFORE UPDATE ON pedidos
FOR EACH ROW 
EXECUTE PROCEDURE atualiza_estoque()

/**
 * No SQL abaixo foi criado a Function para ser usada na Trigger
 */
CREATE OR REPLACE FUNCTION atualiza_estoque()
RETURNS TRIGGER AS 
$$
DECLARE qtde integer; --quantidade em estoque de cada produto  
BEGIN 
	SELECT qtd_estoque FROM produtos WHERE id_produto = NEW.id_produto INTO qtde;
	IF NEW.qtd_vendida > qtde THEN
		RAISE EXCEPTION 'Quantidade indisponivel em estoque';
	ELSE
		UPDATE produtos SET qtd_estoque  = qtd_estoque - NEW.qtd_vendida
			WHERE id_produto  = NEW.id_produto;
	END IF;
	RETURN NEW;
END
$$ language plpgsql;

SELECT * FROM produtos ORDER BY id_produto;

SELECT * FROM pedidos ORDER BY id_pedido;

SELECT P.id_produto, P.qtd_vendida, PR.nome_produto, PR.qtd_estoque  FROM pedidos P JOIN produtos PR ON P.id_produto = PR.id_produto;

UPDATE pedidos SET qtd_vendida = 35 WHERE id_produto = 8;

