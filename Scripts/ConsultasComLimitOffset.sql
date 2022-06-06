SELECT * FROM produtos;

/*
Ordenado por preço, buscando os 4 produtos mais baratos com a cláusula "LIMIT"
*/
SELECT * FROM produtos ORDER BY preco LIMIT 4;

/*
Ordenado por preço, buscando os 3 produtos mais caros, utilizando a cláusula "DESC LIMIT"
*/
SELECT * FROM produtos ORDER BY preco DESC LIMIT 3;

/*
Ordenado por preço, buscando o terceiro quarto e quinto produtos mais caros, 
pulando os 2 primeiros com a cláusula "OFFSET"
*/
SELECT * FROM produtos ORDER BY preco DESC LIMIT 3 OFFSET 2;

/*
 Ordenado por preço, buscando os produtos mais caros, pulando os 2 primerios registro utilizando a cláusula "OFFSET"
 */
SELECT * FROM produtos ORDER BY preco DESC OFFSET  2


