/*
 * Operadors Aritméticos no postgreSQL
 * OPERADORES      SIGNIFICADO            SINTAXE
 *    -            Menos unário           -valor
 *    ^			   Exponenciação	      valor1^valor2
 *    *			   Multiplicação	      valor1*valor2
 *    /			   Divisão			      valor1/valor2
 *    %			   Módulo(resto da div)	  valor1%valor2
 *    +			   Soma				      valor1+valor2
 *    - 		   Subtração		      valor1-valor2
 *    |/		   Raiz quadrada	      |/valor
 *    ||/		   Raiz Cúbica		      ||/valor
 *    @			   Valor absoluto	      @valor
 */

SELECT 10 + 12 AS resultado;

SELECT -10 + 12 AS resultado;

SELECT 10 + 6 * 3 AS resultado;

SELECT (10 + 6) * 3 AS resultado;

SELECT 18 % 2 AS resultado;

SELECT 18 % 4 AS resultado;

SELECT 10 ^ 2 AS resultado;

SELECT 6.02 * 10 ^ 23 AS resultado;

SELECT |/ 144 AS resultado;

SELECT ||/ 27 AS resultado;

SELECT * FROM produtos;

SELECT preco*15 AS preco FROM produtos WHERE id_produto = 5; 

SELECT preco / 50 AS "Custo de um par de luvas" FROM produtos WHERE id_produto = 2;

SELECT sum(preco*qtd_estoque) FROM produtos;

