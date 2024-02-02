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
        var id = getUrlParameter("id");
        var sessionCode = getUrlParameter("sessionCode");
        var sessionName = getUrlParameter("sessionName");
        var fromDate = getUrlParameter("fromDate");
        var toDate = getUrlParameter("toDate");
        var status = getUrlParameter("status");
        var recordstatus = getUrlParameter("recordstatus");
       
 
        // Set initial values in the input fields
        $("#id").val(id);
        $("#sessionCode").val(sessionCode);
        $("#sessionName").val(sessionName);
        $("#fromDate").val(fromDate);
        $("#toDate").val(toDate);
        $("#status").val(status);
        $("#recordstatus").val(recordstatus);
       
 
        // Event handler for Save button
        $("#saveButton").click(function () {
            // Get modified data from input fields
            var id = $("#id").val();
            var modifiedData = {
            		sessionCode: $("#sessionCode").val(),
            		sessionName: $("#sessionName").val(),
            		fromDate: $("#fromDate").val(),
            		toDate: $("#toDate").val(),
            		status: $("#status").val(),
            		recordstatus: $("#recordstatus").val()
            		
          		  
          		};


 
            // Perform AJAX request to update the data
            $.ajax({
                type: "PUT",  // Assuming you are using PUT method for updates
                url: "/api/session/updateSession/" + id,
                contentType: "application/json",
                data: JSON.stringify(modifiedData),
                success: function (response) {
                    console.log("Training session updated successfully");
                    alert("Training session updated successfully");
                    window.location.href = "/session_master.jsp";
 
                },
                error: function (xhr, status, error) {
                    console.error("Failed to update training session: " + error);
                    alert("Failed to update Training session: " + error);
                }
            });
        });
 
        // Event handler for Exit button
        $("#exitButton").click(function () {
            window.location.href = "/session_master.jsp";
        });
    });
</script>
 
</head>
<body>
    <h1>Edit Training Session</h1>
    <div>
        <label for="id">Session UID:</label>
        <input type="text" id="id" readonly>
    </div>
    <div>
        <label for="sessionCode">Session Code:</label>
        <input type="text" id="sessionCode" readonly>
    </div>
    <div>
        <label for="sessionName">Session Name:</label>
        <input type="text" id="sessionName" >
    </div>
    
    
    <div>
        <label for="fromDate">From Date:</label>
        <input type="text" id="fromDate" >
    </div>
    <div>
        <label for="toDate">To Date:</label>
        <input type="text" id="toDate">
    </div>
    <div>
        <label for="status"> Status:</label>
        <input type="text" id="status" readonly>
    </div>
    <div>
        <label for="recordstatus"> Record Status:</label>
        <input type="text" id="recordstatus" readonly>
    </div>
    <button id="saveButton">Save</button>
    <button id="exitButton">Exit</button>
</body>
</html>