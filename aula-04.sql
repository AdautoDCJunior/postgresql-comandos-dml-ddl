SELECT * FROM teste.cursos_programacao;

UPDATE academico.curso SET nome = 'PHP Básico' WHERE id = 4;
UPDATE academico.curso SET nome = 'Java Básico' WHERE id = 5;
UPDATE academico.curso SET nome = 'C++ Básico' WHERE id = 6;

SELECT * FROM academico.curso;

UPDATE teste.cursos_programacao
SET
	nome_curso = nome
FROM academico.curso
WHERE
	teste.cursos_programacao.id_curso = academico.curso.id AND
	academico.curso.id < 10;
	
SELECT * FROM teste.cursos_programacao;

DELETE FROM academico.curso
USING academico.categoria
WHERE
	academico.categoria.id = academico.curso.categoria_id AND
	academico.categoria.nome = 'Teste';
	
BEGIN;
DELETE FROM teste.cursos_programacao;
ROLLBACK;

SELECT * FROM teste.cursos_programacao;

BEGIN;
DELETE FROM teste.cursos_programacao WHERE id_curso = 50;
COMMIT;

SELECT * FROM teste.cursos_programacao;
