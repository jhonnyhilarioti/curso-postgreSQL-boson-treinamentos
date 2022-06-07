/**
 * Sintaxe para criação de Arrays no postgreSQL:
 * nome_coluna tipo[]
 * como 1 sendo o primeiro elemento
 */

CREATE TABLE escala_trabalho(
id_funcionario SMALLINT PRIMARY KEY NOT NULL,
escala char(3)[]
);

/**
 * O código abaixo mostra como inserir registros no Aray criado
 */
INSERT INTO escala_trabalho (id_funcionario, escala) 
VALUES (1,'{"SEG","TER","QUA"}'),
	   (2,'{"QUI","SEX","SAB"}'),
	   (3,'{"SEG","QUA","SEX"}');
	  
SELECT * FROM escala_trabalho;

SELECT * FROM escala_trabalho WHERE id_funcionario = 2;

/**
 * O select abaixo traz a primeira posição do Array criado, de todos os funcionarios
 */
SELECT id_funcionario, escala[1] FROM escala_trabalho;

/**
 * Quais os funcionários trabalham querta-feira?
 * O filtro "WHERE 'QUA' = ANY(escala)" 
 * significa que ele irá procurar onde 'QUA' apareça em quanquer lugar da coluna escala
 */
SELECT id_funcionario FROM escala_trabalho WHERE 'QUA' = ANY(escala);

/**
 * O SQL abaixo está alterando um registro do Array criado(Alterando a escala de trabalho do funcionario)
 */
UPDATE escala_trabalho SET escala = '{"TER","QUI","SAB"}' WHERE id_funcionario = 3;

SELECT * FROM escala_trabalho;

