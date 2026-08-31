/* Brady Heinz 8/30/26 3.2 Assignment */

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String customerName = request.getParameter("customerName");
    String meal = request.getParameter("meal");
    String foodRating = request.getParameter("foodRating");
    String serviceRating = request.getParameter("serviceRating");
    String[] enjoyedItems = request.getParameterValues("enjoyed");
    String comments = request.getParameter("comments");

    String enjoyed = "";

    if (enjoyedItems != null) {
        for (int i = 0; i < enjoyedItems.length; i++) {
            enjoyed += enjoyedItems[i];

            if (i < enjoyedItems.length - 1) {
                enjoyed += ", ";
            }
        }
    } else {
        enjoyed = "None selected";
    }

    if (comments == null || comments.trim().equals("")) {
        comments = "No comments provided";
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurant Feedback Results</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>

    <div class="container">

        <h1>Restaurant Feedback Results</h1>

        <p class="description">
            The table below displays the information submitted through
            the restaurant experience feedback form.
        </p>

        <table>

            <tr>
                <th>Field</th>
                <th>Description</th>
                <th>Response</th>
            </tr>

            <tr>
                <td>Customer Name</td>
                <td>Name of the customer completing the survey</td>
                <td><%= customerName %></td>
            </tr>

            <tr>
                <td>Meal Ordered</td>
                <td>Meal selected by the customer</td>
                <td><%= meal %></td>
            </tr>

            <tr>
                <td>Food Rating</td>
                <td>Customer rating of the food</td>
                <td><%= foodRating %></td>
            </tr>

            <tr>
                <td>Service Rating</td>
                <td>Customer rating of the service received</td>
                <td><%= serviceRating %></td>
            </tr>

            <tr>
                <td>Enjoyed</td>
                <td>Parts of the restaurant experience the customer enjoyed</td>
                <td><%= enjoyed %></td>
            </tr>

            <tr>
                <td>Comments</td>
                <td>Additional feedback provided by the customer</td>
                <td><%= comments %></td>
            </tr>

        </table>

        <a class="button" href="index.jsp">Submit Another Review</a>

    </div>

</body>
</html>