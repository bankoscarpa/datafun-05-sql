INSERT INTO directors (director_id, first, last) VALUES
('d01','Steven','Spielberg'),
('d02','Christopher','Nolan'),
('d03','Quentin','Tarantino');

INSERT INTO movies (movie_id, title, year_released, director_id) VALUES
('m01','Jaws',1975,'d01'),
('m02','E.T.',1982,'d01'),
('m03','Inception',2010,'d02'),
('m04','Dunkirk',2017,'d02'),
('m05','Pulp Fiction',1994,'d03');
