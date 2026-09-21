package com.heinz.beans;

/*
 * Brady Heinz
 * 9/20/26
 * Module 7.2 Assignment
 * Connects to the CSD430 database, retrieves movie records,
 * and adds new movie records.
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MovieDB {

    private static final String URL =
            "jdbc:mysql://localhost:3306/CSD430";

    private static final String USER = "student1";
    private static final String PASSWORD = "pass";

    public static Connection getConnection()
            throws SQLException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC Driver not found.", e);
        }

        return DriverManager.getConnection(
                URL,
                USER,
                PASSWORD
        );
    }

    public static ArrayList<Integer> getMovieIds()
            throws SQLException {

        ArrayList<Integer> movieIds =
                new ArrayList<>();

        String sql =
                "SELECT movie_id FROM bradymoviesdata ORDER BY movie_id";

        try (
            Connection connection = getConnection();
            PreparedStatement statement =
                    connection.prepareStatement(sql);
            ResultSet results =
                    statement.executeQuery()
        ) {

            while (results.next()) {
                movieIds.add(
                        results.getInt("movie_id")
                );
            }
        }

        return movieIds;
    }

    public static Movie getMovieById(int movieId)
            throws SQLException {

        Movie movie = null;

        String sql =
                "SELECT movie_id, title, release_year, " +
                "main_character, genre, rating " +
                "FROM bradymoviesdata " +
                "WHERE movie_id = ?";

        try (
            Connection connection = getConnection();
            PreparedStatement statement =
                    connection.prepareStatement(sql)
        ) {

            statement.setInt(1, movieId);

            try (
                ResultSet results =
                        statement.executeQuery()
            ) {

                if (results.next()) {

                    movie = new Movie();

                    movie.setMovieId(
                            results.getInt("movie_id")
                    );

                    movie.setTitle(
                            results.getString("title")
                    );

                    movie.setReleaseYear(
                            results.getInt("release_year")
                    );

                    movie.setMainCharacter(
                            results.getString("main_character")
                    );

                    movie.setGenre(
                            results.getString("genre")
                    );

                    movie.setRating(
                            results.getString("rating")
                    );
                }
            }
        }

        return movie;
    }

    public static void addMovie(Movie movie)
            throws SQLException {

        String sql =
                "INSERT INTO bradymoviesdata " +
                "(title, release_year, main_character, genre, rating) " +
                "VALUES (?, ?, ?, ?, ?)";

        try (
            Connection connection = getConnection();
            PreparedStatement statement =
                    connection.prepareStatement(sql)
        ) {

            statement.setString(1, movie.getTitle());
            statement.setInt(2, movie.getReleaseYear());
            statement.setString(3, movie.getMainCharacter());
            statement.setString(4, movie.getGenre());
            statement.setString(5, movie.getRating());

            statement.executeUpdate();
        }
    }

    public static ArrayList<Movie> getAllMovies()
            throws SQLException {

        ArrayList<Movie> movies =
                new ArrayList<>();

        String sql =
                "SELECT movie_id, title, release_year, " +
                "main_character, genre, rating " +
                "FROM bradymoviesdata " +
                "ORDER BY movie_id";

        try (
            Connection connection = getConnection();
            PreparedStatement statement =
                    connection.prepareStatement(sql);
            ResultSet results =
                    statement.executeQuery()
        ) {

            while (results.next()) {

                Movie movie = new Movie();

                movie.setMovieId(
                        results.getInt("movie_id")
                );

                movie.setTitle(
                        results.getString("title")
                );

                movie.setReleaseYear(
                        results.getInt("release_year")
                );

                movie.setMainCharacter(
                        results.getString("main_character")
                );

                movie.setGenre(
                        results.getString("genre")
                );

                movie.setRating(
                        results.getString("rating")
                );

                movies.add(movie);
            }
        }

        return movies;
    }
}