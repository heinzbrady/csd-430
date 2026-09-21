<%--
    Brady Heinz
    9/20/26
    Module 7.2 Assignment
    Creates a new movie record and displays all records from the database.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.heinz.beans.Movie"%>
<%@page import="com.heinz.beans.MovieDB"%>

<%
    String title = request.getParameter("title");
    int releaseYear = Integer.parseInt(
            request.getParameter("releaseYear")
    );
    String mainCharacter =
            request.getParameter("mainCharacter");
    String genre =
            request.getParameter("genre");
    String rating =
            request.getParameter("rating");

    Movie newMovie = new Movie();

    newMovie.setTitle(title);
    newMovie.setReleaseYear(releaseYear);
    newMovie.setMainCharacter(mainCharacter);
    newMovie.setGenre(genre);
    newMovie.setRating(rating);

    MovieDB.addMovie(newMovie);

    ArrayList<Movie> movies =
            MovieDB.getAllMovies();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Movie Added</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="container">

            <header class="page-header">
                <h1>Movie Added Successfully</h1>
                <p>
                    The new movie was added to the CSD430 database.
                </p>
            </header>

            <section class="content-section">

                <h2>Movie Database Records</h2>

                <p>
                    The table below displays all movie records currently
                    stored in the bradymoviesdata table.
                </p>

                <table>
                    <thead>
                        <tr>
                            <th>Movie ID</th>
                            <th>Title</th>
                            <th>Release Year</th>
                            <th>Main Character</th>
                            <th>Genre</th>
                            <th>Rating</th>
                        </tr>
                    </thead>

                    <tbody>

                        <% for (Movie movie : movies) { %>

                            <tr>
                                <td>
                                    <%= movie.getMovieId() %>
                                </td>

                                <td>
                                    <%= movie.getTitle() %>
                                </td>

                                <td>
                                    <%= movie.getReleaseYear() %>
                                </td>

                                <td>
                                    <%= movie.getMainCharacter() %>
                                </td>

                                <td>
                                    <%= movie.getGenre() %>
                                </td>

                                <td>
                                    <%= movie.getRating() %>
                                </td>
                            </tr>

                        <% } %>

                    </tbody>
                </table>

                <div class="field-description">
                    <h2>About the Data</h2>

                    <p>
                        Movie ID is the unique key generated automatically
                        by the database. Title identifies the movie, and
                        Release Year identifies the year the movie was released.
                    </p>

                    <p>
                        Main Character identifies the primary character
                        associated with the movie. Genre identifies the movie
                        category, and Rating identifies the movie's content
                        rating.
                    </p>
                </div>

                <a class="back-link" href="addMovie.jsp">
                    Add Another Movie
                </a>

                <br>

                <a class="back-link" href="index.jsp">
                    Return to Movie Lookup
                </a>

            </section>

        </div>
    </body>
</html>