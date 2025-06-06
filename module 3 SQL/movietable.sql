create database Movie;
use Movie;

-- Create 'movies' table
CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year YEAR NOT NULL,
    genre_id INT NOT NULL,
    director_id INT NOT NULL,
    duration INT NOT NULL,
    rating DECIMAL(3, 1),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id),
    FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

-- Create 'genres' table
CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

-- Create 'directors' table
CREATE TABLE directors (
    director_id INT AUTO_INCREMENT PRIMARY KEY,
    director_name VARCHAR(255) NOT NULL
);

-- Create 'actors' table
CREATE TABLE actors (
    actor_id INT AUTO_INCREMENT PRIMARY KEY,
    actor_name VARCHAR(255) NOT NULL
);

-- Create 'movie_cast' table
CREATE TABLE movie_cast (
    movie_id INT NOT NULL,
    actor_id INT NOT NULL,
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);

-- Create 'ratings' table
CREATE TABLE ratings (
    movie_id INT NOT NULL,
    user_id INT NOT NULL,
    rating DECIMAL(3, 1) NOT NULL,
    review_date DATE NOT NULL,
    PRIMARY KEY (movie_id, user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);


-- Insert values into 'genres' table
INSERT INTO genres (genre_name) VALUES
('Action'), ('Comedy'), ('Drama'), ('Horror'), ('Sci-Fi');

-- Insert values into 'directors' table
INSERT INTO directors (director_name) VALUES
('Christopher Nolan'), ('Steven Spielberg'), ('James Cameron'),
('Quentin Tarantino'), ('Martin Scorsese');

-- Insert values into 'actors' table
INSERT INTO actors (actor_name) VALUES
('Leonardo DiCaprio'), ('Brad Pitt'), ('Scarlett Johansson'),
('Tom Cruise'), ('Emma Stone');

-- Insert values into 'movies' table
INSERT INTO movies (title, release_year, genre_id, director_id, duration, rating) VALUES
('Inception', 2010, 1, 1, 148, 8.8),
('Titanic', 1997, 3, 3, 195, 7.8),
('Pulp Fiction', 1994, 2, 4, 154, 8.9),
('The Wolf of Wall Street', 2013, 3, 1, 180, 8.2),
('Jurassic Park', 1993, 5, 2, 127, 8.1);

-- Insert values into 'movie_cast' table
INSERT INTO movie_cast (movie_id, actor_id) VALUES
(1, 1), (1, 2), (2, 1), (3, 2), (4, 1),
(5, 3);

-- Insert values into 'ratings' table
INSERT INTO ratings (movie_id, user_id, rating, review_date) VALUES
(1, 101, 9.0, '2023-01-15'),
(2, 102, 8.0, '2023-02-20'),
(3, 103, 8.5, '2023-03-10'),
(4, 104, 8.0, '2023-04-25'),
(5, 105,8.3, '2023-05-30');