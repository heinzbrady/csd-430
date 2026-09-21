/*
 * Brady Heinz
 * 9/10/26
 * Module 5.2 Assignment
 * Creates the bradymoviesdata table for the CRUD project.
 */

USE CSD430;

CREATE TABLE bradymoviesdata (
    movie_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    release_year INT NOT NULL,
    main_character VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    rating VARCHAR(10) NOT NULL,
    PRIMARY KEY (movie_id)
);