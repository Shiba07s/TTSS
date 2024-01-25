<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
 
        h1 {
            text-align: center;
            margin-top: 20px;
        }
 
        div {
            margin: 10px 0;
        }
 
        label {
            display: block;
            margin-bottom: 5px;
        }
 
        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
 
        button {
            background-color: #4caf50;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
        }
 
        button:hover {
            background-color: #45a049;
        }
    </style>
    <meta charset="ISO-8859-1">
    <title>Edit Training</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
   <script>
    $(document).ready(function () {
        // Function to get URL parameters by name
        function getUrlParameter(name) {
            name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
            var regex = new RegExp("[\\?&]" + name + "=([^&#]*)");
            var results = regex.exec(location.search);
            return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
        }
 
        // Get field values from URL parameters
        var trainingModecode = getUrlParameter("trainingModecode");
        var trainingMode = getUrlParameter("trainingMode");
        var trainingStatus = getUrlParameter("trainingStatus");
 
        // Set initial values in the input fields
        $("#trainingModecode").val(trainingModecode);
        $("#trainingMode").val(trainingMode);
        $("#trainingStatus").val(trainingStatus);
 
        // Event handler for Save button
        $("#saveButton").click(function () {
            // Get modified data from input fields
            var modifiedUid = $("#trainingModecode").val();
            var modifiedTrainingMode = $("#trainingMode").val();
            var modifiedStatus = $("#trainingStatus").val();
 
            // Perform AJAX request to update the data
            $.ajax({
                type: "PUT",  // Assuming you are using PUT method for updates
                url: "/TTSS03/api/updateTrainingMode/" + modifiedUid,
                data: {
                	trainingMode: modifiedTrainingMode
                },
                success: function (response) {
                    console.log("Training Mode updated successfully");
                    alert("Training updated successfully");
                    window.location.href = "/TTSS03/TrainingMode.jsp";
 
                },
                error: function (xhr, status, error) {
                    console.error("Failed to update training: " + error);
                    alert("Failed to update TrainingMode: " + error);
                }
            });
        });
 
        // Event handler for Exit button
        $("#exitButton").click(function () {
            window.location.href = "/TTSS03/TrainingMode.jsp";
        });
    });
</script>
 
</head>
<body>
    <h1>Edit Training Spell</h1>
    <div>
        <label for="trainingModecode">TrainingMode Code:</label>
        <input type="text" id="trainingModecode" readonly>
    </div>
    <div>
        <label for="trainingMode">TrainingMode:</label>
        <input type="text" id="trainingMode">
    </div>
    <div>
        <label for="trainingStatus">Training Status:</label>
        <input type="text" id="trainingStatus" readonly>
    </div>
    <button id="saveButton">Save</button>
    <button id="exitButton">Exit</button>
</body>
</html>