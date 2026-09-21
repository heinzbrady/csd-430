<%--
    Brady Heinz
    9/20/26
    Module 7.2 Assignment
    Gathers movie information from the user to create a new database record.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add Marvel Movie</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <div class="container">

            <header class="page-header">
                <h1>Add Marvel Movie</h1>
                <p>
                    Enter the information below to add a new movie
                    to the CSD430 database.
                </p>
            </header>

            <section class="content-section">

                <h2>New Movie Information</h2>

                <p>
                    Complete all fields below. The Movie ID is generated
                    automatically by the database when the record is added.
                </p>

                <div class="form-box">

                    <form action="createMovie.jsp" method="post">

                        <p>
                            <label for="title">Movie Title:</label><br>
                            <input type="text"
                                   id="title"
                                   name="title"
                                   required>
                        </p>

                        <p>
                            <label for="releaseYear">Release Year:</label><br>
                            <input type="number"
                                   id="releaseYear"
                                   name="releaseYear"
                                   min="1900"
                                   max="2100"
                                   required>
                        </p>

                        <p>
                            <label for="mainCharacter">Main Character:</label><br>
                            <input type="text"
                                   id="mainCharacter"
                                   name="mainCharacter"
                                   required>
                        </p>

                        <p>
                            <label for="genre">Genre:</label><br>
                            <input type="text"
                                   id="genre"
                                   name="genre"
                                   required>
                        </p>

                        <p>
                            <label for="rating">Rating:</label><br>
                            <select id="rating"
                                    name="rating"
                                    required>
                                <option value="">Select Rating</option>
                                <option value="G">G</option>
                                <option value="PG">PG</option>
                                <option value="PG-13">PG-13</option>
                                <option value="R">R</option>
                            </select>
                        </p>

                        <p>
                            <input type="submit"
                                   value="Add Movie">
                        </p>

                    </form>

                </div>

                <div class="field-description">
                    <h2>Field Descriptions</h2>

                    <p>
                        Title identifies the movie. Release Year identifies
                        the year the movie was released. Main Character
                        identifies the primary character associated with
                        the movie.
                    </p>

                    <p>
                        Genre identifies the movie category, and Rating
                        identifies the movie's content rating.
                    </p>
                </div>

                <a class="back-link" href="index.jsp">
                    Return to Movie Lookup
                </a>

            </section>

        </div>
    </body>
</html>