CREATE TABLE genres (
  id numeric PRIMARY KEY,
  description varchar(50)
);

CREATE TABLE movies (
  id numeric PRIMARY KEY,
  name varchar(50),
  id_genres numeric REFERENCES genres (id)
);

CREATE TABLE actors (
  id numeric PRIMARY KEY,
  name varchar(50)
);

CREATE TABLE movies_actors (
  id_movies numeric REFERENCES movies (id),
  id_actors numeric REFERENCES actors (id)
); 

INSERT INTO genres (id, description)
VALUES
  (1,	'Animation'),
  (2,	'Horror'),
  (3,	'Action'),
  (4,	'Drama'),
  (5,	'Comedy');
  
INSERT INTO movies (id, name, id_genres)
VALUES
  (1,	'Batman',	3),
  (2,	'The Battle of the Dark River',	3),
  (3,	'White Duck',	1),
  (4,	'Breaking Barriers',	4),
  (5,	'The Two Hours',	2);
  
INSERT INTO actors (id, name)
VALUES
  (1,	'Brad Antonio'),
  (2,	'Marcelo Silva'),
  (3,	'Miguel Silva'),
  (4,	'Drake Frost'),
  (5,	'Rodrigo Juares Rodriguez');
    
INSERT INTO movies_actors (id_movies, id_actors)
VALUES
  (1,1),
  (2,3),
  (2,2),
  (4,1),
  (5,2);


Questão
Depois que atores ganham grandes prêmios e reconhecimento no mundo do cinema, a demanda por filmes em que eles participam aumentam. Por isso queremos saber quais filmes dos irmãos Silva temos no nosso catálogo.
Para fazer isso, selecione o código e o nome dos filmes em que atuaram os atores ‘Marcelo Silva’ ou ‘Miguel Silva’ e que o gênero do filme seja 'Action'.

Resposta
select m.id, m.name from movies m join genres g on g.id = m.id_genres join movies_actors ma on m.id = ma.id_movies join actors a on a.id = ma.id_actors where a.name like 'Marcelo Silva' or a.name like 'Miguel Silva' and g.description like 'Action';
