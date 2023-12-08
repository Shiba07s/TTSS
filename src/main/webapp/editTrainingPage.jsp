<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Training</title>
<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!-- Include Toastr CSS and JS -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f8f9fa;
	margin: 2px;
	padding: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}
 
form {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 300px;
	max-width: 100%;
	height: 500px;
	
}
 
h1 {
	text-align: center;
	color: #007bff;
}
 
label {
	display: block;
	margin-bottom: 8px;
	color: #495057;
}
 
input {
	width: 100%;
	padding: 8px;
	margin-bottom: 16px;
	box-sizing: border-box;
	border: 1px solid #ced4da;
	border-radius: 4px;
	font-size: 14px;
}
 
button {
	background-color: #007bff;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
 
button[type="submit"] {
	background-color: #28a745;
}
 
button[type="button"] {
	background-color: #dc3545;
}
 
</style>
</head>
<body>
 
	<%-- Retrieve parameters from the request --%>
	<%
	String refplannerid = request.getParameter("refplannerid");
	String tsubject = request.getParameter("tsubject");
	String tcategory = request.getParameter("tcategory");
	String tmode = request.getParameter("tmode");
	String ttargetgroup = request.getParameter("ttargetgroup");
	String tmonth = request.getParameter("tmonth");
	String tyear = request.getParameter("tyear");
	String tname = request.getParameter("tname");
	String tdescription = request.getParameter("tdescription");
	String tgrade = request.getParameter("tgrade");
	String tagency = request.getParameter("tagency");
	String tspell = request.getParameter("tspell");
	String preferdlocation = request.getParameter("preferdlocation");
	String numberofstakeholder = request.getParameter("numberofstakeholder");
	String numberdayneeded = request.getParameter("numberdayneeded");
	String thoursperday = request.getParameter("thoursperday");
	String totalhours = request.getParameter("totalhours");
	String trainingregstartdt = request.getParameter("trainingregstartdt");
	String trainingregenddt = request.getParameter("trainingregenddt");
	String tstatus = request.getParameter("tstatus");
	%>
 
	<form id="updateForm" action="updateTraining" method="post">
		<label for="refplannerid">Training plannerId:</label> <input
			type="text" name="refplannerid" value="<%=refplannerid%>"
			readonly="readonly"> <label for="tsubject">Training
			Subject:</label> <input type="text" id="tsubject" name="tsubject"
			value="<%=tsubject%>"><br> <label for="tcategory">Training
			Category:</label> <input type="text" id="tcategory" name="tcategory"
			value="<%=tcategory%>"><br> <label for="tmode">Training
			Mode:</label> <input type="text" id="tmode" name="tmode" value="<%=tmode%>"><br>
		<label for="ttargetgroup">Target Group:</label> <input type="text"
			id="ttargetgroup" name="ttargetgroup" value="<%=ttargetgroup%>"><br>
 
		<label for="tmonth">Training Month:</label> <input type="text"
			id="tmonth" name="tmonth" value="<%=tmonth%>"><br> <label
			for="tyear">Training Year:</label> <input type="text" id="tyear"
			name="tyear" value="<%=tyear%>"><br> <label for="tname">Training
			Name:</label> <input type="text" id="tname" name="tname" value="<%=tname%>"><br>
		<label for="tdescription">Description:</label> <input type="text"
			id="tdescription" name="tdescription" value="<%=tdescription%>"><br>
 
		<label for="tgrade">Grade:</label> <input type="text" id="tgrade"
			name="tgrade" value="<%=tgrade%>"><br> <label
			for="tagency">Agency:</label> <input type="text" id="tagency"
			name="tagency" value="<%=tagency%>"><br> <label
			for="tspell">Training Spell:</label> <input type="text" id="tspell"
			name="tspell" value="<%=tspell%>"><br> <label
			for="preferdlocation">Preferred Location:</label> <input type="text"
			id="preferdlocation" name="preferdlocation"
			value="<%=preferdlocation%>"><br> <label
			for="numberofstakeholder">No. Of Stakeholders:</label> <input
			type="text" id="numberofstakeholder" name="numberofstakeholder"
			value="<%=numberofstakeholder%>"><br> <label
			for="numberdayneeded">No. Of Day Needed:</label> <input type="text"
			id="numberdayneeded" name="numberdayneeded"
			value="<%=numberdayneeded%>"><br> <label
			for="thoursperday">Hours per Day:</label> <input type="text"
			id="thoursperday" name="thoursperday" value="<%=thoursperday%>"><br>
 
		<label for="totalhours">Total Hours:</label> <input type="text"
			id="totalhours" name="totalhours" value="<%=totalhours%>"><br>
 
		<label for="trainingregstartdt">Tentative Start Date:</label> <input
			type="text" id="trainingregstartdt" name="trainingregstartdt"
			value="<%=trainingregstartdt%>"><br> <label
			for="trainingregenddt">Tentative End Date:</label> <input type="text"
			id="trainingregenddt" name="trainingregenddt"
			value="<%=trainingregenddt%>"><br> <label for="tstatus">Training
			Status:</label> <input type="text" id="tstatus" name="tstatus"
			value="<%=tstatus%>"><br>
 
		<!-- Add similar lines for other parameters -->
 
		<button type="submit">Update</button>
		<button type="button" onclick="cancelUpdate()">Cancel</button>
	</form>
 
	<script>
		// Define updateTraining globally
		function updateTraining() {
			// Create a JSON object from form fields
			var formData = {
				refplannerid : $('#updateForm [name=refplannerid]').val(),
				tsubject : $('#updateForm [name=tsubject]').val(),
				tcategory : $('#updateForm [name=tcategory]').val(),
				tmode : $('#updateForm [name=tmode]').val(),
				ttargetgroup : $('#updateForm [name=ttargetgroup]').val(),
				tmonth : $('#updateForm [name=tmonth]').val(),
				tyear : $('#updateForm [name=tyear]').val(),
				tname : $('#updateForm [name=tname]').val(),
				tdescription : $('#updateForm [name=tdescription]').val(),
				tgrade : $('#updateForm [name=tgrade]').val(),
				tagency : $('#updateForm [name=tagency]').val(),
				tspell : $('#updateForm [name=tspell]').val(),
				preferdlocation : $('#updateForm [name=preferdlocation]').val(),
				numberofstakeholder : $(
						'#updateForm [name=numberofstakeholder]').val(),
				numberdayneeded : $('#updateForm [name=numberdayneeded]').val(),
				thoursperday : $('#updateForm [name=thoursperday]').val(),
				totalhours : $('#updateForm [name=totalhours]').val(),
				trainingregstartdt : $('#updateForm [name=trainingregstartdt]')
						.val(),
				trainingregenddt : $('#updateForm [name=trainingregenddt]')
						.val(),
				tstatus : $('#updateForm [name=tstatus]').val()
			// Add similar lines for other form fields
			};
 
			// Stringify the JSON object
			var jsonData = JSON.stringify(formData);
 
			// Make AJAX request to /api/edit/ endpoint
			$.ajax({
				type : "PUT",
			url : "/api/edit/" + $('[name=refplannerid]').val(),
 
				contentType : "application/json", // Set content type to JSON
				data : jsonData,
				success : function(response) {
					toastr.success("Training updated successfully");
					// You can redirect to another page or perform other actions on success
				},
				error : function(xhr, status, error) {
					toastr.error("Failed to update training: " + error);
				}
			});
		}
 
		// 		$(document).ready(function() {
 
		// 		});
 
		function cancelUpdate() {
			// Redirect back to the original page or perform any other cancel action
			window.location.href = "/AcademicCalender.jsp";
		}
 
		$("#updateForm").submit(function(event) {
			// Prevent the default form submission
			event.preventDefault();
 
			// Call the updateTraining function on form submission
			updateTraining();
		});
	</script>
 
</body>
</html>
 