SELECT director_id, COUNT(*) AS movie_count
FROM movies
GROUP BY director_id;
