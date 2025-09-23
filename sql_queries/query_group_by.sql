SELECT director_id, AVG(year_released) AS avg_release_year
FROM movies
GROUP BY director_id;
