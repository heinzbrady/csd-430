<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- Brady Heinz 8/23/26  2.2 Assignment --%>

<%
    String[] names = {
        "Iron Man",
        "Captain America",
        "Thor",
        "Spider-Man",
        "Black Panther"
    };

    String[] realNames = {
        "Tony Stark",
        "Steve Rogers",
        "Thor Odinson",
        "Peter Parker",
        "T'Challa"
    };

    String[] abilities = {
        "Powered Armor",
        "Super Strength",
        "God of Thunder",
        "Spider Abilities",
        "Enhanced Strength"
    };
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Marvel Character Data</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>

    <header>
        <h1>Marvel Characters</h1>
        <h2>Character Data</h2>
    </header>

    <main>

        <section>
            <h2>Overall Data Description</h2>
            <p>
                This page contains information about five popular Marvel characters.
                The data includes each character's superhero name, real name,
                and primary ability or power.
            </p>
        </section>

        <section>
            <h2>Field Descriptions</h2>

            <p><strong>Character Name:</strong> The superhero name used by the character.</p>
            <p><strong>Real Name:</strong> The character's real or civilian name.</p>
            <p><strong>Ability:</strong> One of the character's primary powers or abilities.</p>
        </section>

        <section>
            <h2>Marvel Character Records</h2>

            <table>
                <thead>
                    <tr>
                        <th>Character Name</th>
                        <th>Real Name</th>
                        <th>Ability</th>
                    </tr>
                </thead>

                <tbody>
                    <%
                        for (int i = 0; i < names.length; i++) {
                    %>

                    <tr>
                        <td><%= names[i] %></td>
                        <td><%= realNames[i] %></td>
                        <td><%= abilities[i] %></td>
                    </tr>

                    <%
                        }
                    %>
                </tbody>
            </table>
        </section>

    </main>

    <footer>
        <p>Marvel Character Data</p>
    </footer>

</body>
</html>