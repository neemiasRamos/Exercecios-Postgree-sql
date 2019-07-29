CREATE TABLE students(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  grade NUMERIC
);


INSERT INTO students(id, name, grade)
VALUES (1, 'Terry B. Padilla',7.3),
       (2, 'William S. Ray',0.6),
       (3, 'Barbara A. Gongora',5.2),
       (4, 'Julie B. Manzer', 6.7),
       (5, 'Teresa J. Axtell', 4.6),
       (6, 'Ben M. Dantzler', 9.6);

Questão
O semestre acabou na Universidade do Sul da Transilvânia. Todos os cursos tiveram suas notas fechadas, apenas a disciplina de Alquimia 104 não teve a lista de alunos aprovados.
Portanto, você deverá mostrar a frase 'Approved: ' junto com o nome do aluno e a sua nota, para os alunos que foram aprovados (grade ≥7).
Lembre-se de ordenar a lista pela maior nota.

Resposta
select 'Approved: ' || name, grade from students where grade >= 7 order by grade desc;
