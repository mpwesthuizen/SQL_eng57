USE Northwind;

CREATE DATABASE marcus_1_db;

USE marcus_1_db;

CREATE TABLE film_table
(
    film_id INT IDENTITY(1,1) PRIMARY KEY,
    film_name VARCHAR(20),
    film_type VARCHAR(20),
    director VARCHAR(20),     
    star_rating VARCHAR(10),
    plot_summary VARCHAR(MAX),
);

-- Discussion on improvements
--Create 2 tables and have primary keys in both
--In one of the tables add a foreign key and reference that to the primary key in another table
--ON DELETE CASCADE which if you apply to a primary key will automatically delete that data from foreign key
--Discussioin(Improvements)

/*DROP TABLE film_table;*/

ALTER TABLE film_table
ADD release_date DATETIME;

ALTER TABLE film_table
DROP COLUMN plot_summary;


INSERT INTO film_table
(
    film_name,film_type,director,star_rating,release_date
)
VALUES
(
    'Django Unchained', 'Action', 'Tarantino', 4, '20121111' 
),
(
    'Bad Boys 2', 'Comedy', 'Bay', 3.5, '20030101' 
),
(
    'Wolf of Wallstreet', 'Comedy/Crime', 'Scoresese', 5, '20131225' 
)

/*SELECT * FROM film_table*/


CREATE TABLE table_2
(
    film_id INT IDENTITY(1,1),
    film_name VARCHAR(20),
    film_type VARCHAR(20),
    dvd_price VARCHAR(20),
    lowest_new_rrp VARCHAR(10),
    PRIMARY KEY (film_id),
    FOREIGN KEY (film_name) REFERENCES film_table(film_name)
);

SP_HELP table_2