CREATE TABLE IF NOT EXISTS academico.aluno (
    id SERIAL PRIMARY KEY,
    primeiro_nome VARCHAR(255) NOT NULL,
    ultimo_nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TEMPORARY TABLE a (
	coluna VARCHAR(255) NOT NULL CHECK (coluna <> '')
);

INSERT INTO a VALUES ('');

INSERT INTO a VALUES ('Vinicius');

DROP TABLE a;

CREATE TEMPORARY TABLE a (
	coluna1 VARCHAR(255) NOT NULL CHECK (coluna1 <> ''),
	coluna2 VARCHAR(255) NOT NULL,
	UNIQUE (coluna1, coluna2)
);

INSERT INTO a VALUES ('a', 'b');

INSERT INTO a VALUES ('a', 'b');

INSERT INTO a VALUES ('a', 'c');

ALTER TABLE a RENAME TO teste;

SELECT * FROM teste;

ALTER TABLE teste RENAME coluna1 TO primeira_coluna;
ALTER TABLE teste RENAME coluna2 TO segunda_coluna;

SELECT * FROM teste;