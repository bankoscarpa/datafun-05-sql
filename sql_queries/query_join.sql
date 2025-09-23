SELECT d.first || ' ' || d.last AS director_name, m.title
FROM directors d
INNER JOIN movies m ON d.director_id = m.director_id;
