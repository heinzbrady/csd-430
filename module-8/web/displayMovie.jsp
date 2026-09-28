<%--
    Brady Heinz
    9/10/26
    Module 5.3 Assignment
    Displays the selected movie record from the CSD430 database.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.heinz.beans.Movie"%>
<%@page import="com.heinz.beans.MovieDB"%>

<%
    int movieId = Integer.parseInt(request.getParameter("movieId"));
    Movie movie = MovieDB.getMovieById(movieId);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Marvel Movie Record</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="container">

            <header class="page-header">
                <h1>Marvel Movie Record</h1>
                <p>
                    View the complete movie record retrieved from the CSD430 database.
                </p>
            </header>

            <section class="content-section">

                <h2>Selected Movie Record</h2>

                <p>
                    The table below displays all fields associated with the selected
                    movie ID.
                </p>

                <% if (movie != null) { %>

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
                            <tr>
                                <td><%= movie.getMovieId() %></td>
                                <td><%= movie.getTitle() %></td>
                                <td><%= movie.getReleaseYear() %></td>
                                <td><%= movie.getMainCharacter() %></td>
                                <td><%= movie.getGenre() %></td>
                                <td><%= movie.getRating() %></td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="field-description">
                        <h2>Field Descriptions</h2>

                        <p>
                            Movie ID is the unique primary key used to identify each record.
                            Title identifies the movie, while Release Year shows when the movie
                            was released.
                        </p>

                        <p>
                            Main Character identifies the primary character associated with the
                            movie. Genre describes the movie category, and Rating displays the
                            movie's content rating.
                        </p>
                    </div>

                <% } else { %>

                    <p>No movie record was found for the selected ID.</p>

                <% } %>

                <a class="back-link" href="index.jsp">
                    Return to Movie Lookup
                </a>

            </section>

        </div>
    </body>
</html>