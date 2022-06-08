/**
 * Sintaxe da criação de uma função
 */
CREATE FUNCTION nome_funcao(param1 tipo, param2 tipo)
RETURNS text AS $$
BEGIN 
	
END;
$$ LANGUAGE plpgsql;

/**
 * Criando uma Function para somar dois números
 */
CREATE OR REPLACE FUNCTION soma(num1 int, num2 int)
RETURNS TEXT AS $$
BEGIN 	
	RETURN 'A soma dos dois números é: ' || num1 + num2;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION soma;

SELECT soma(1,2);

/**
 * No sql abaixo, foi criado uma Function para saber se o preco de um item da tabela de produto é caro ou barato
 */
CREATE OR REPLACE FUNCTION define_preco(preco REAL)
RETURNS TEXT AS $$
BEGIN
	IF preco <= 4.00 THEN 
		RETURN 'É barato!';
	ELSEIF preco > 20.00 THEN 
		RETURN 'É caro';
	ELSE 
		RETURN 'Não parametrizado';
	END IF;
END;
$$ LANGUAGE plpgsql;
/**
 * No select abaixo foi inserido a Function define_preco para saber quais itens são baratos e quais são caros
 */
SELECT id_produto, nome_produto, preco, define_preco(preco) FROM produtos;

/**
 * Function para multiplicar dois numeros
 */
CREATE FUNCTION multiplicacao(num1 REAL, num2 REAL)
RETURNS TEXT AS $$
BEGIN 
	RETURN 'Valor multiplicado' || num1 * num2;
END;
$$ LANGUAGE plpgsql;
/**
 * No SQL abaixo, foi aplicado a Function multiplicacao para somar a atd_vendida * preco
 */
SELECT P.id_pedido, P.id_produto, P.qtd_vendida, PR.nome_produto, PR.preco, 
multiplicacao(PR.preco, P.qtd_vendida)
FROM pedidos P JOIN produtos PR ON P.id_produto = PR.id_produto;

