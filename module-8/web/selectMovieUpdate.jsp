<%--
    Brady Heinz
    9/23/26
    Module 8.2 Assignment
    Displays a dropdown of movie IDs so the user can select a record to update.
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
        <title>Select Movie to Update</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="container">

            <header class="page-header">
                <h1>Select Movie to Update</h1>
                <p>
                    Choose a movie ID from the database to edit the selected record.
                </p>
            </header>

            <section class="content-section">

                <h2>Choose a Record</h2>

                <p>
                    The dropdown menu below contains the primary key values
                    currently stored in the bradymoviesdata table.
                </p>

                <div class="form-box">

                    <form action="editMovie.jsp" method="get">

                        <label for="movieId">Movie ID:</label>

                        <select name="movieId" id="movieId">

                            <% for (Integer movieId : movieIds) { %>

                                <option value="<%= movieId %>">
                                    <%= movieId %>
                                </option>

                            <% } %>

                        </select>

                        <input type="submit" value="Edit Movie">

                    </form>

                </div>

                <div class="field-description">
                    <h2>Update Process</h2>

                    <p>
                        After selecting a Movie ID, the complete record will
                        be retrieved from the database. The Movie ID will be
                        displayed as a non-editable value, while the remaining
                        fields can be updated.
                    </p>
                </div>

                <a class="back-link" href="index.jsp">
                    Return to Main Page
                </a>

            </section>

        </div>
    </body>
</html>