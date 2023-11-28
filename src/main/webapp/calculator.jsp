<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Compound Calc</title>

    <style>
        /* Set background color for the whole page */
        body {
            background-color: darkcyan;

        }
        .text{
            color: black;
            font-style: italic;
            align-content: center;
            text-align: center;
        }
        .grid-container {
            display: grid;
            grid-template-columns: repeat(2, 1fr); /* Two columns with equal width */
            grid-gap: 5px; /* Gap between grid items */
            margin: auto; /* Optional: Center the grid container */
            align-items: center;
            max-width: 400px;
            margin: auto;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow:  4px 160px 320px rgba(0, 0, 0, 0.1);
            background-color: white;
        }
        /* Input and label styling */
        label {
            display: block;
            margin-bottom: 5px;
        }
        input{
            display: block;
            margin-bottom: 5px;
            border: 1px solid darkcyan; /* Blue border color */
            border-radius: 5px; /* Rounded corners */
            padding: 8px;
        }
        /* Button styling */
        button {
            background-color: darkcyan;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;

        }
        button:hover{
            background-color: deepskyblue;
            color: black;
        }

        /* Results styling */
        .results {
            text-align: center;
            margin-top: 10px;
            font-weight: bold;
            font-family: Arial;
        }
    </style>
</head>
<body>
<div class="text">
    <h2>Compound Interest Calculator</h2>
</div>



<form action="/" method="post">
    <div class="grid-container">

        <p> ${error}</p> <br>

        <label for="principle-amount">Principle Amount:</label>
        <input type="number" id="principle-amount" name="principleAmount" value="${principleAmount}">

        <label for="interest">Interest Percentage:</label>
        <input type="number" id="interest" min="1" max="100" name="interestPercentage" value="${interest}">

        <label for="years"># of years:</label>
        <input type="number" id="years" min="1" name="years" value="${years}">

        <label for="compoundingPeriod">Times per year:</label>
        <input type="number" id="compoundingPeriod" min="1" max="12" name="compoundingPeriod" value="${compoundingPeriod}">

        <button type="submit">Calculate</button>

        <p class="results">Results: ${results}</p>
    </div>

</form>
</body>
</html>