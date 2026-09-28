<%--
    Brady Heinz
    9/23/26
    Module 8.2 Assignment
    Updates the selected movie record and displays the updated data.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.heinz.beans.Movie"%>
<%@page import="com.heinz.beans.MovieDB"%>

<%
    int movieId = Integer.parseInt(
            request.getParameter("movieId")
    );

    String title =
            request.getParameter("title");

    int releaseYear = Integer.parseInt(
            request.getParameter("releaseYear")
    );

    String mainCharacter =
            request.getParameter("mainCharacter");

    String genre =
            request.getParameter("genre");

    String rating =
            request.getParameter("rating");

    Movie movie = new Movie();

    movie.setMovieId(movieId);
    movie.setTitle(title);
    movie.setReleaseYear(releaseYear);
    movie.setMainCharacter(mainCharacter);
    movie.setGenre(genre);
    movie.setRating(rating);

    MovieDB.updateMovie(movie);

    Movie updatedMovie =
            MovieDB.getMovieById(movieId);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Updated Movie Record</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="container">

            <header class="page-header">
                <h1>Movie Updated Successfully</h1>
                <p>
                    The selected movie record has been updated
                    in the CSD430 database.
                </p>
            </header>

            <section class="content-section">

                <h2>Updated Movie Record</h2>

                <p>
                    The table below displays the complete updated record.
                    Each table header includes the database field type.
                </p>

                <% if (updatedMovie != null) { %>

                    <table>
                        <thead>
                            <tr>
                                <th>Movie ID (INT)</th>
                                <th>Title (VARCHAR)</th>
                                <th>Release Year (INT)</th>
                                <th>Main Character (VARCHAR)</th>
                                <th>Genre (VARCHAR)</th>
                                <th>Rating (VARCHAR)</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>
                                    <%= updatedMovie.getMovieId() %>
                                </td>

                                <td>
                                    <%= updatedMovie.getTitle() %>
                                </td>

                                <td>
                                    <%= updatedMovie.getReleaseYear() %>
                                </td>

                                <td>
                                    <%= updatedMovie.getMainCharacter() %>
                                </td>

                                <td>
                                    <%= updatedMovie.getGenre() %>
                                </td>

                                <td>
                                    <%= updatedMovie.getRating() %>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="field-description">
                        <h2>Field Descriptions</h2>

                        <p>
                            Movie ID is an INT value and serves as the unique
                            primary key for the record. Title is stored as
                            VARCHAR data and identifies the movie. Release Year
                            is stored as an INT value.
                        </p>

                        <p>
                            Main Character, Genre, and Rating are stored as
                            VARCHAR values. These fields identify the primary
                            character, movie category, and content rating.
                        </p>
                    </div>

                <% } else { %>

                    <p>No updated movie record was found.</p>

                <% } %>

                <a class="back-link" href="selectMovieUpdate.jsp">
                    Update Another Movie
                </a>

                <br>

                <a class="back-link" href="index.jsp">
                    Return to Main Page
                </a>

            </section>

        </div>
    </body>
</html>