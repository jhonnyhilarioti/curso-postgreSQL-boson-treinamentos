SELECT * FROM clientes;
SELECT * FROM produtos ORDER BY id_produto;
SELECT * FROM pedidos;

DROP TABLE usuarios;

CREATE TABLE usuarios(
	id_usuario SERIAL NOT NULL UNIQUE,
	nome varchar(100) NOT NULL,
	idade int NOT NULL,
	sexo char(1),
	cidade varchar (50)
);

INSERT INTO usuarios (nome, idade, sexo, cidade)
VALUES 
('Jhonny', 28, 'M', 'Tubarão'),
('Vitor', 45, 'M', 'Tubarão');

SELECT * FROM usuarios;

DROP TABLE usuario_novo;

CREATE TABLE usuario_novo(
	id_usuario int NOT NULL,
	nome varchar(100) NOT NULL,
	idade int NOT NULL,
	sexo char(1),
	cidade varchar (50)
);

INSERT INTO usuario_novo(id_usuario, nome, idade, sexo, cidade) 
SELECT id_usuario, nome, idade, sexo, cidade FROM usuarios;

