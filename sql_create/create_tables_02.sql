CREATE TABLE directors (
    director_id TEXT PRIMARY KEY,
    first TEXT NOT NULL,
    last TEXT NOT NULL
);

CREATE TABLE movies (
    movie_id TEXT PRIMARY KEY,
    title TEXT NOT NULL,
    year_released INTEGER NOT NULL,
    director_id TEXT NOT NULL,
    FOREIGN KEY (director_id) REFERENCES directors(director_id)
);
