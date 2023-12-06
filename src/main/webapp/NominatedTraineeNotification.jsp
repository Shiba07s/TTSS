<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Apply Trainings Soon</title>
    <!-- Include jQuery library -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #007bff;
            margin: 20px 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }
    </style>
   <script>
    $(document).ready(function () {
        // Retrieve the stored data from sessionStorage
        $.ajax({
            type: "GET",
            url: "api/scheduledTrainings",
            dataType: "json",
            success: function (data) {
                // Display training data in the table
                displayTrainingData(data);
            },
            error: function (xhr, status, error) {
                console.error("API request error: " + error);
            }
        });

        function displayTrainingData(data) {
            var table = $("#trainingTable tbody");

            // Clear existing rows
            table.empty();

            for (var i = 0; i < data.length; i++) {
                var training = data[i];
                var row = $("<tr></tr>");

                // Populate the row with data from the 'training' object
                row.append("<td>" + training.ref_planner_id + "</td>");
                row.append("<td>" + training.venue_id + "</td>");
                row.append("<td>" + training.tmode + "</td>");
                row.append("<td>" + training.tmonth + "</td>");
                row.append("<td>" + training.tyear + "</td>");
                row.append("<td>" + training.tname + "</td>");
                row.append("<td>" + training.tmodule + "</td>");
                row.append("<td>" + training.tdescription + "</td>");

                var actionCell = $("<td></td>");
                var applyNowButton = $("<a></a>")
                    .attr("href", "./NominatedForm.jsp")
                    .text("Apply Nomination");

                actionCell.append(applyNowButton);
                row.append(actionCell);

                table.append(row);
            }
        }
    });
</script>

</head>
<body>
    <h2>Apply Trainings Soon</h2>
    <table border="1" id="trainingTable">
        <tr>
            <th>Training Ref Id</th>
            <th>Venue</th>
            <th>Training Type</th>
            <th>Training Mode</th>
            <th>Training Month</th>
            <th>Training Year</th>
            <th>Training Name</th>
            <th>Module</th>
            <th>Description</th>
            <th>Action</th>
        </tr>
    </table>
</body>
</html>
