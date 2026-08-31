/* Brady Heinz 8/30/26 3.2 Assignment */


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurant Experience Feedback</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>

    <div class="container">

        <h1>Restaurant Experience Feedback</h1>

        <p class="description">
            Please complete the form below to tell us about your dining
            experience. Your feedback helps us improve our food and service.
        </p>

        <form action="results.jsp" method="post">

            <label for="customerName">Customer Name:</label>
            <input type="text"
                   id="customerName"
                   name="customerName"
                   required>

            <label for="meal">Meal Ordered:</label>
            <select id="meal" name="meal">
                <option value="Burger">Burger</option>
                <option value="Steak">Steak</option>
                <option value="Chicken">Chicken</option>
                <option value="Pasta">Pasta</option>
                <option value="Salad">Salad</option>
            </select>

            <p class="field-label">Food Rating:</p>

            <div class="options">
                <input type="radio"
                       id="excellent"
                       name="foodRating"
                       value="Excellent"
                       required>
                <label for="excellent">Excellent</label>

                <input type="radio"
                       id="good"
                       name="foodRating"
                       value="Good">
                <label for="good">Good</label>

                <input type="radio"
                       id="average"
                       name="foodRating"
                       value="Average">
                <label for="average">Average</label>

                <input type="radio"
                       id="poor"
                       name="foodRating"
                       value="Poor">
                <label for="poor">Poor</label>
            </div>

            <label for="serviceRating">Service Rating:</label>
            <select id="serviceRating" name="serviceRating">
                <option value="5 - Excellent">5 - Excellent</option>
                <option value="4 - Very Good">4 - Very Good</option>
                <option value="3 - Good">3 - Good</option>
                <option value="2 - Fair">2 - Fair</option>
                <option value="1 - Poor">1 - Poor</option>
            </select>

            <p class="field-label">What did you enjoy?</p>

            <div class="checkboxes">
                <input type="checkbox"
                       id="food"
                       name="enjoyed"
                       value="Food">
                <label for="food">Food</label>

                <input type="checkbox"
                       id="service"
                       name="enjoyed"
                       value="Service">
                <label for="service">Service</label>

                <input type="checkbox"
                       id="atmosphere"
                       name="enjoyed"
                       value="Atmosphere">
                <label for="atmosphere">Atmosphere</label>
            </div>

            <label for="comments">Additional Comments:</label>
            <textarea id="comments"
                      name="comments"
                      rows="5"></textarea>

            <input type="submit" value="Submit Feedback">

        </form>

    </div>

</body>
</html>