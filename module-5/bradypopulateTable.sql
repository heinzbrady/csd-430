/*
 * Brady Heinz
 * 9/10/26
 * Module 5.2 Assignment
 * Populates the bradymoviesdata table with movie records.
 */

USE CSD430;

INSERT INTO bradymoviesdata
    (title, release_year, main_character, genre, rating)
VALUES
    ('Iron Man', 2008, 'Tony Stark', 'Action', 'PG-13'),
    ('The Incredible Hulk', 2008, 'Bruce Banner', 'Action', 'PG-13'),
    ('Iron Man 2', 2010, 'Tony Stark', 'Action', 'PG-13'),
    ('Thor', 2011, 'Thor', 'Action', 'PG-13'),
    ('Captain America: The First Avenger', 2011, 'Steve Rogers', 'Action', 'PG-13'),
    ('The Avengers', 2012, 'The Avengers', 'Action', 'PG-13'),
    ('Iron Man 3', 2013, 'Tony Stark', 'Action', 'PG-13'),
    ('Thor: The Dark World', 2013, 'Thor', 'Action', 'PG-13'),
    ('Captain America: The Winter Soldier', 2014, 'Steve Rogers', 'Action', 'PG-13'),
    ('Guardians of the Galaxy', 2014, 'Peter Quill', 'Action', 'PG-13');