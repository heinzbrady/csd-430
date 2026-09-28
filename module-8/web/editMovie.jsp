<%--
    Brady Heinz
    9/23/26
    Module 8.2 Assignment
    Loads the selected movie record and allows the user to edit its values.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.heinz.beans.Movie"%>
<%@page import="com.heinz.beans.MovieDB"%>

<%
    int movieId = Integer.parseInt(
            request.getParameter("movieId")
    );

    Movie movie = MovieDB.getMovieById(movieId);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Edit Movie Record</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="container">

            <header class="page-header">
                <h1>Edit Movie Record</h1>
                <p>
                    Update the selected movie record in the CSD430 database.
                </p>
            </header>

            <section class="content-section">

                <% if (movie != null) { %>

                    <h2>Movie Information</h2>

                    <p>
                        The Movie ID is the record's primary key and cannot be changed.
                        All other fields may be updated.
                    </p>

                    <div class="form-box">

                        <form action="updateMovie.jsp" method="post">

                            <p>
                                <label>Movie ID:</label><br>
                                <strong><%= movie.getMovieId() %></strong>

                                <input type="hidden"
                                       name="movieId"
                                       value="<%= movie.getMovieId() %>">
                            </p>

                            <p>
                                <label for="title">Movie Title:</label><br>
                                <input type="text"
                                       id="title"
                                       name="title"
                                       value="<%= movie.getTitle() %>"
                                       required>
                            </p>

                            <p>
                                <label for="releaseYear">Release Year:</label><br>
                                <input type="number"
                                       id="releaseYear"
                                       name="releaseYear"
                                       value="<%= movie.getReleaseYear() %>"
                                       min="1900"
                                       max="2100"
                                       required>
                            </p>

                            <p>
                                <label for="mainCharacter">Main Character:</label><br>
                                <input type="text"
                                       id="mainCharacter"
                                       name="mainCharacter"
                                       value="<%= movie.getMainCharacter() %>"
                                       required>
                            </p>

                            <p>
                                <label for="genre">Genre:</label><br>
                                <input type="text"
                                       id="genre"
                                       name="genre"
                                       value="<%= movie.getGenre() %>"
                                       required>
                            </p>

                            <p>
                                <label for="rating">Rating:</label><br>

                                <select id="rating"
                                        name="rating"
                                        required>

                                    <option value="G"
                                        <%= "G".equals(movie.getRating()) ? "selected" : "" %>>
                                        G
                                    </option>

                                    <option value="PG"
                                        <%= "PG".equals(movie.getRating()) ? "selected" : "" %>>
                                        PG
                                    </option>

                                    <option value="PG-13"
                                        <%= "PG-13".equals(movie.getRating()) ? "selected" : "" %>>
                                        PG-13
                                    </option>

                                    <option value="R"
                                        <%= "R".equals(movie.getRating()) ? "selected" : "" %>>
                                        R
                                    </option>

                                </select>
                            </p>

                            <p>
                                <input type="submit"
                                       value="Update Movie">
                            </p>

                        </form>

                    </div>

                    <div class="field-description">
                        <h2>Field Descriptions</h2>

                        <p>
                            Movie ID is the unique key and is displayed in a
                            non-editable format. Title identifies the movie,
                            and Release Year identifies the year the movie
                            was released.
                        </p>

                        <p>
                            Main Character identifies the primary character
                            associated with the movie. Genre identifies the
                            movie category, and Rating identifies the movie's
                            content rating.
                        </p>
                    </div>

                <% } else { %>

                    <p>No movie record was found for the selected ID.</p>

                <% } %>

                <a class="back-link" href="selectMovieUpdate.jsp">
                    Select Another Movie
                </a>

                <br>

                <a class="back-link" href="index.jsp">
                    Return to Main Page
                </a>

            </section>

        </div>
    </body>
</html>