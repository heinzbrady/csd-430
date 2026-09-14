<%--
    Brady Heinz
    9/10/26
    Module 5.3 Assignment
    Displays a dropdown list of movie IDs from the CSD430 database.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.heinz.beans.MovieDB"%>

<%
    ArrayList<Integer> movieIds = MovieDB.getMovieIds();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Marvel Movie Lookup</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="container">

            <header class="page-header">
                <h1>Marvel Movie Lookup</h1>
                <p>
                    Search the CSD430 movie database by selecting a unique movie ID.
                </p>
            </header>

            <section class="content-section">

                <h2>Select a Movie</h2>

                <p>
                    The dropdown menu below is populated with the primary key values
                    stored in the bradymoviesdata table.
                </p>

                <div class="form-box">
                    <form action="displayMovie.jsp" method="get">

                        <label for="movieId">Movie ID:</label>

                        <select name="movieId" id="movieId">

                            <% for (Integer movieId : movieIds) { %>

                                <option value="<%= movieId %>">
                                    <%= movieId %>
                                </option>

                            <% } %>

                        </select>

                        <input type="submit" value="View Movie">

                    </form>
                </div>

                <div class="field-description">
                    <h2>About the Data</h2>

                    <p>
                        Each movie record contains the movie ID, title, release year,
                        main character, genre, and rating.
                    </p>

                    <p>
                        After selecting a movie ID, the complete matching record will
                        be retrieved from the database and displayed in an HTML table.
                    </p>
                </div>

            </section>

        </div>
    </body>
</html>