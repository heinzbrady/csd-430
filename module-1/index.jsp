<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Module 1.3 JSP Assignment</title>
</head>
<body>

    <h1>Module 1.3 JSP Assignment</h1>
    <p>My JSP application is running successfully.</p>

    <%
        String studentName = "Brady Heinz";
        int number1 = 10;
        int number2 = 20;
        int total = number1 + number2;
    %>

    <h2>JSP and Java Test</h2>

    <p>Student: <%= studentName %></p>
    <p>First Number: <%= number1 %></p>
    <p>Second Number: <%= number2 %></p>
    <p>Total: <%= total %></p>

    <%
        if (total > 20) {
    %>
        <p>The total is greater than 20.</p>
    <%
        } else {
    %>
        <p>The total is 20 or less.</p>
    <%
        }
    %>

</body>
</html>