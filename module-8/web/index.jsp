<%--
    Brady Heinz
    9/23/26
    Module 8.2 Assignment
    Provides access to the movie lookup, create, and update functions
    for the CSD430 project.
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
        <title>Marvel Movie Database</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="container">

            <header class="page-header">
                <h1>Marvel Movie Database</h1>
                <p>
                    Search existing movie records, add a new movie,
                    or update an existing record in the CSD430 database.
                </p>
            </header>

            <section class="content-section">

                <h2>Find a Movie</h2>

                <p>
                    The dropdown menu below contains the primary key values
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

                    <h2>Create a New Movie Record</h2>

                    <p>
                        Use the movie entry form to add a new record
                        to the bradymoviesdata table.
                    </p>

                    <p>
                        The Movie ID will be generated automatically
                        by the database when the new record is created.
                    </p>

                    <a class="back-link" href="addMovie.jsp">
                        Add New Movie
                    </a>

                </div>

                <div class="field-description">

                    <h2>Update an Existing Movie Record</h2>

                    <p>
                        Select an existing movie record and update any
                        of its editable fields.
                    </p>

                    <p>
                        The Movie ID is the primary key and will remain
                        unchanged during the update process.
                    </p>

                    <a class="back-link" href="selectMovieUpdate.jsp">
                        Update Movie
                    </a>

                </div>

                <div class="field-description">

                    <h2>About the Data</h2>

                    <p>
                        Each movie record contains the Movie ID, Title,
                        Release Year, Main Character, Genre, and Rating.
                    </p>

                    <p>
                        The Movie ID is the unique primary key used to
                        identify each movie record in the database.
                    </p>

                </div>

            </section>

        </div>
    </body>
</html>