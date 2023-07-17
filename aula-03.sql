INSERT INTO academico.aluno (primeiro_nome, ultimo_nome, data_nascimento)
VALUES
	('Vinicius', 'Dias', '1997-10-15'),
	('Patricia', 'Freitas', '1986-10-25'),
	('Diogo', 'Oliveira', '1984-08-27'),
	('Maria', 'Rosa', '1985-01-01');

INSERT INTO academico.categoria (nome) VALUES
	('Front-end'), ('Programação'), ('Bancos de dados'), ('Data Science');

INSERT INTO academico.curso (nome, categoria_id) VALUES
    ('HTML', 1),
    ('CSS', 1),
    ('JS', 1),
    ('PHP', 2),
    ('Java', 2),
    ('C++', 2),
    ('PostgreSQL', 3),
    ('MySQL', 3),
    ('Oracle', 3),
    ('SQL Server', 3),
    ('SQLite', 3),
    ('Pandas', 4),
    ('Machine Learning', 4),
    ('Power BI', 4);

INSERT INTO academico.aluno_curso VALUES
	(1, 4), (1, 11), (2, 1), (2, 2), (3, 4), (3, 3), (4, 4), (4, 6), (4, 5);

CREATE TEMPORARY TABLE cursos_programacao (
    id_curso INTEGER PRIMARY KEY,
    nome_curso VARCHAR(255) NOT NULL
);

INSERT INTO cursos_programacao
SELECT
	academico.curso.id,
	academico.curso.nome
FROM academico.curso
JOIN academico.categoria
ON academico.categoria.id = academico.curso.categoria_id
WHERE categoria_id = 2;

SELECT * FROM cursos_programacao;

CREATE SCHEMA teste;

CREATE TABLE teste.cursos_programacao (
    id_curso INTEGER PRIMARY KEY,
    nome_curso VARCHAR(255) NOT NULL
);

INSERT INTO TESTE.cursos_programacao
SELECT
	academico.curso.id,
	academico.curso.nome
FROM academico.curso
JOIN academico.categoria
ON academico.categoria.id = academico.curso.categoria_id
WHERE categoria_id = 2;

SELECT * FROM TESTE.cursos_programacao;