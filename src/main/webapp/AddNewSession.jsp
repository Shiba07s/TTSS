<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Add Session</title>
 <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <style>
        h1 {
            color: #333;
            text-align: center;
        }

        form {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input,
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #3e8e41;
        }

        .invalid-feedback {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <h1>Add Session</h1>
       <form id="addSessionForm" onsubmit="return submitForm()">
       
       <label for="sessionCode">Session Code:</label>
<input type="text" id="sessionCode" name="sessionCode" pattern="\d{4}-\d{2}" title="Please enter a numeric year range (e.g., 2023-24)" placeholder="Please enter a session code (e.g., 2023-24)" required>
<div class="invalid-feedback" id="sessionCodeError"></div>

    
       <label for="sessionName">Session Name :</label>
<input type="text" id="sessionName" name="sessionName" pattern="\d{4}-\d{4}" title="Please enter a numeric year range (e.g., 2023-2024)" placeholder="Enter Year Range (e.g., 2023-2024)" required>
<div class="invalid-feedback" id="sessionNameError"></div>

    
        <label for="fromDate">From Date:</label> 
        <input type="date" id="fromDate" name="fromDate" required>
        <div class="invalid-feedback" id="fromDateError"></div>
    
        <label for="toDate">To Date:</label>
        <input type="date" id="toDate" name="toDate" required>
        <div class="invalid-feedback" id="toDateError"></div>
    
        <label for="status">Status:</label>
        <select id="status" name="status" required>
            <option value="" disabled selected>Select Status</option>
            <option value="Current">Current</option>
            <option value="Old">Old</option>
            <option value="Plan">Plan</option>
        </select>
    
     <button type="submit" class="btn btn-primary">Submit</button>
	<button type="button" class="btn btn-danger" onclick="closeForm();">Cancel</button>
    </form>

 <!--     <script>
        function validateForm() {
            var sessionCode = document.getElementById("sessionCode").value;
            var sessionName = document.getElementById("sessionName").value;
            var fromDate = document.getElementById("fromDate").value;
            var toDate = document.getElementById("toDate").value;
            var status = document.getElementById("status").value;

            if (sessionCode.trim() === "") {
                document.getElementById("sessionCodeError").innerHTML = "Session Code is required";
                return false;
            } else {
                document.getElementById("sessionCodeError").innerHTML = "";
            }

            if (sessionName.trim() === "") {
                document.getElementById("sessionNameError").innerHTML = "Session Name is required";
                return false;
            } else {
                document.getElementById("sessionNameError").innerHTML = "";
            }

            if (fromDate.trim() === "") {
                document.getElementById("fromDateError").innerHTML = "From Date is required";
                return false;
            } else {
                document.getElementById("fromDateError").innerHTML = "";
            }

            if (toDate.trim() === "") {
                document.getElementById("toDateError").innerHTML = "To Date is required";
                return false;
            } else {
                document.getElementById("toDateError").innerHTML = "";
            }

            if (status.trim() === "") {
                alert("Please select a status");
                return false;
            }

            return true;
        }
        
    </script> -->
   <script>
        $(document).ready(function() {
            function validateForm() {
                var sessionCode = $("#sessionCode").val();
                var sessionName = $("#sessionName").val();
                var fromDate = $("#fromDate").val();
                var toDate = $("#toDate").val();
                var status = $("#status").val();

                if (sessionCode.trim() === "") {
                    document.getElementById("sessionCodeError").innerHTML = "Session Code is required";
                    return false;
                } else {
                    document.getElementById("sessionCodeError").innerHTML = "";
                }

                if (sessionName.trim() === "") {
                    document.getElementById("sessionNameError").innerHTML = "Session Name is required";
                    return false;
                } else {
                    document.getElementById("sessionNameError").innerHTML = "";
                }

                if (fromDate.trim() === "") {
                    document.getElementById("fromDateError").innerHTML = "From Date is required";
                    return false;
                } else {
                    document.getElementById("fromDateError").innerHTML = "";
                }

                if (toDate.trim() === "") {
                    document.getElementById("toDateError").innerHTML = "To Date is required";
                    return false;
                } else {
                    document.getElementById("toDateError").innerHTML = "";
                }

                if (status.trim() === "") {
                    alert("Please select a status");
                    return false;
                }

                return true;
            }

            window.submitForm = function() {
                if (validateForm()) {
                    // Collect form data and create a JSON object
                    var formData = {
                        sessionCode : $("#sessionCode").val(),
                        sessionName : $("#sessionName").val(),
                        fromDate : $("#fromDate").val(),
                        toDate : $("#toDate").val(),
                        status : $("#status").val()
                    };

                    // Make a POST request to the api/savedata endpoint
                    $.ajax({
                        type : "POST",
                        url : "/api/session/create",
                        contentType : "application/json",
                        data : JSON.stringify(formData),
                        success : function(response) {
                            console.log(response);
                            toastr.success("Training data saved successfully");
                            window.location.href = "/session_master.jsp";
                        },
                        error : function(xhr, status, error) {
                            console.error("API request error: " + error);
                            toastr.error("Failed to save training data");
                        }
                    });
                }

                // Prevent the default form submission
                return false;
            }
            window.closeForm = function() {
                // Redirect to session.jsp
                window.location.href = "/session_master.jsp";
            }
        });
    </script>
</body>
</html>