CREATE TABLE publicacao(
	id SERIAL CONSTRAINT pk_id_pub PRIMARY KEY,
	nome varchar(50),
	dataPub date,
	idioma varchar(25)
);

CREATE TABLE livros(
	isbn13 char(13) UNIQUE,
	tipo_capa varchar(20),
	adicao smallint
)INHERITS(publicacao);

ALTER TABLE livros RENAME adicao TO edicao;

CREATE TABLE revistas(
	issn char(8) UNIQUE,
	numero SMALLINT UNIQUE
)INHERITS(publicacao);

INSERT INTO publicacao (nome, dataPub, idioma)
VALUES ('Le Monde', '20220411', 'Francês');

SELECT * FROM publicacao;
SELECT * FROM livros;
SELECT * FROM revistas;

INSERT INTO livros (nome, datapub, idioma, isbn13, tipo_capa, edicao)
VALUES ('50 Ideia de Química', '20220202', 'Português', '9786555356519', 'Brochura', 2);

INSERT INTO revistas(nome, datapub, idioma, issn, numero)
VALUES ('Saber Eletrônica', '09981101', 'Português', '01016717', 299);

ALTER TABLE publicacao 
ADD COLUMN numero_paginas SMALLINT;

UPDATE publicacao SET datapub = '20200415' WHERE id = 3

