<%--
    Brady Heinz
    9/6/26
    Module 4.2 Assignment
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.heinz.beans.MarvelCharacter"%>

<%
    MarvelCharacter[] characters = {
        new MarvelCharacter(
            "Iron Man",
            "Tony Stark",
            "Avengers",
            "Powered armor, advanced technology, and intelligence",
            "Iron Man (2008)",
            "Hero"
        ),

        new MarvelCharacter(
            "Captain America",
            "Steve Rogers",
            "Avengers",
            "Super strength, agility, and shield combat",
            "Captain America: The First Avenger (2011)",
            "Hero"
        ),

        new MarvelCharacter(
            "Spider-Man",
            "Peter Parker",
            "Avengers",
            "Spider abilities, web-slinging, and spider-sense",
            "Spider-Man (2002)",
            "Hero"
        ),

        new MarvelCharacter(
            "Thor",
            "Thor Odinson",
            "Avengers",
            "Super strength, lightning, and Mjolnir",
            "Thor (2011)",
            "Hero"
        ),

        new MarvelCharacter(
            "Loki",
            "Loki Laufeyson",
            "Asgard",
            "Magic, illusions, and shapeshifting",
            "Thor (2011)",
            "Villain / Antihero"
        )
    };
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Marvel Character Database</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>

        <div class="container">

            <header class="page-header">

                <h1>Marvel Character Database</h1>

                <h2>JavaBean Character Data Display</h2>

                <p>
                    This page displays information about several
                    <span class="highlight">Marvel heroes and villains</span>.
                    The character information is stored using JavaBean objects
                    and displayed through a JSP page.
                </p>

            </header>

            <section class="about-section">

                <h2>About the Data</h2>

                <p>
                    Each record represents a Marvel character and contains
                    information about the character's identity, team,
                    abilities, first movie appearance, and alignment.
                </p>

                <h3>Field Descriptions</h3>

                <div class="field-grid">

                    <div class="field-box">
                        <h3>Character Name</h3>
                        <p>The superhero or villain name used by the character.</p>
                    </div>

                    <div class="field-box">
                        <h3>Real Name</h3>
                        <p>The actual or civilian identity of the character.</p>
                    </div>

                    <div class="field-box">
                        <h3>Team</h3>
                        <p>The team or organization associated with the character.</p>
                    </div>

                    <div class="field-box">
                        <h3>Power / Ability</h3>
                        <p>The character's primary powers or abilities.</p>
                    </div>

                    <div class="field-box">
                        <h3>First Movie</h3>
                        <p>The first movie appearance for the character.</p>
                    </div>

                    <div class="field-box">
                        <h3>Alignment</h3>
                        <p>Identifies the character as a hero, villain, or antihero.</p>
                    </div>

                </div>

            </section>

            <section class="data-section">

                <h2>Character Records</h2>

                <p>
                    The table below contains
                    <span class="highlight">five Marvel character records</span>
                    retrieved from JavaBean objects.
                </p>

                <table>

                    <thead>
                        <tr>
                            <th>Character Name</th>
                            <th>Real Name</th>
                            <th>Team</th>
                            <th>Power / Ability</th>
                            <th>First Movie</th>
                            <th>Alignment</th>
                        </tr>
                    </thead>

                    <tbody>

                        <% for (MarvelCharacter character : characters) { %>

                        <tr>
                            <td>
                                <span class="character-name">
                                    <%= character.getCharacterName() %>
                                </span>
                            </td>

                            <td>
                                <%= character.getRealName() %>
                            </td>

                            <td>
                                <%= character.getTeam() %>
                            </td>

                            <td>
                                <%= character.getPower() %>
                            </td>

                            <td>
                                <%= character.getFirstMovie() %>
                            </td>

                            <td>
                                <span class="alignment">
                                    <%= character.getAlignment() %>
                                </span>
                            </td>
                        </tr>

                        <% } %>

                    </tbody>

                </table>

            </section>

            <footer>

                <h3>About This Project</h3>

                <p>
                    Created by <span class="footer-name">Brady Heinz</span>
                    for Server-Side Development using JavaBeans, JSP,
                    HTML, and CSS.
                </p>

            </footer>

        </div>

    </body>
</html>