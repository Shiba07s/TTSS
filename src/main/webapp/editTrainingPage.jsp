<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" />
  <title>Edit Training</title>
  <!-- Include jQuery -->
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <!-- Include Toastr CSS and JS -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>


<!-- <script src=" https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script> -->
<!-- <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" /> -->
   <link href="css/styles.css" rel="stylesheet" />
  <style>
    body {
      font-family: "Arial", sans-serif;
      background-color: #f8f9fa;
      margin: 0;
      padding: 20px;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    form {
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
     width: 100%;
      text-align: center;
      color: #007bff;
      margin-bottom: 20px;
    }

    label {
/*       width: calc(25% - 20px); */
      display: block;
      margin-bottom: 8px;
      color: #495057;
    }

    input {
/*       width: calc(100% - 16px); */
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
      margin-top: 10px;
      margin-left:10px;
    }

    button[type="submit"] {
      background-color: #28a745;
    }

    button[type="button"] {
      background-color: #dc3545;
    }
    .form-group{
    	width:20%;
    	margin-left:3rem;
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
    <h2>Edit Training</h2>

                                 <!--########### Row 1 #############-->
    <div class="row">
      <div class="form-group col-md-3">
        <label for="refplannerid">Training plannerId:</label>
        <div class="form-floating">
          <input type="text" id="refplannerid" name="refplannerid" value="<%=refplannerid%>" readonly="readonly" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="tsubject">Training Subject:</label>
        <div class="form-floating">
          <input type="text" id="tsubject" name="tsubject" value="<%=tsubject%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="tcategory">Training Category:</label>
        <div class="form-floating">
          <input type="text" id="tcategory" name="tcategory" value="<%=tcategory%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="tmode">Training Mode:</label>
        <div class="form-floating">
          <input type="text" id="tmode" name="tmode" value="<%=tmode%>" />
        </div>
      </div>
    </div>

                      <!--########### Row 2 #############-->
    <div class="row">
      <div class="form-group col-md-3">
        <label for="ttargetgroup">Target Group:</label>
        <div class="form-floating">
          <input type="text" id="ttargetgroup" name="ttargetgroup" value="<%=ttargetgroup%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="tmonth">Training Month:</label>
        <div class="form-floating">
          <input type="text" id="tmonth" name="tmonth" value="<%=tmonth%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="tyear">Training Year:</label>
        <div class="form-floating">
          <input type="text" id="tyear" name="tyear" value="<%=tyear%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="tname">Training Name:</label>
        <div class="form-floating">
          <input type="text" id="tname" name="tname" value="<%=tname%>" />
        </div>
      </div>
    </div>

                             <!--########### Row 3 #############-->
    <div class="row">
      <div class="form-group col-md-3">
        <label for="tdescription">Description:</label>
        <div class="form-floating">
          <input type="text" id="tdescription" name="tdescription" value="<%=tdescription%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="tgrade">Grade:</label>
        <div class="form-floating">
          <input type="text" id="tgrade" name="tgrade" value="<%=tgrade%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="tagency">Agency:</label>
        <div class="form-floating">
          <input type="text" id="tagency" name="tagency" value="<%=tagency%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="tspell">Training Spell:</label>
        <div class="form-floating">
          <input type="text" id="tspell" name="tspell" value="<%=tspell%>" />
        </div>
      </div>
    </div>

                                   <!--########### Row 4 #############-->
    <div class="row">
      <div class="form-group col-md-3">
        <label for="preferdlocation">Preferred Location:</label>
        <div class="form-floating">
          <input type="text" id="preferdlocation" name="preferdlocation" value="<%=preferdlocation%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="numberofstakeholder">No. Of Stakeholders:</label>
        <div class="form-floating">
          <input type="text" id="numberofstakeholder" name="numberofstakeholder" value="<%=numberofstakeholder%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="numberdayneeded">No. Of Day Needed:</label>
        <div class="form-floating">
          <input type="text" id="numberdayneeded" name="numberdayneeded" value="<%=numberdayneeded%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="thoursperday">Hours per Day:</label>
        <div class="form-floating">
          <input type="text" id="thoursperday" name="thoursperday" value="<%=thoursperday%>" />
        </div>
      </div>
    </div>

                                    <!--########### Row 1 #############-->
    <div class="row">
      <div class="form-group col-md-3">
        <label for="totalhours">Total Hours:</label>
        <div class="form-floating">
          <input type="text" id="totalhours" name="totalhours" value="<%=totalhours%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="trainingregstartdt">Tentative Start Date:</label>
        <div class="form-floating">
          <input type="text" id="trainingregstartdt" name="trainingregstartdt" value="<%=trainingregstartdt%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="trainingregenddt">Tentative End Date:</label>
        <div class="form-floating">
          <input type="text" id="trainingregenddt" name="trainingregenddt" value="<%=trainingregenddt%>" />
        </div>
      </div>
      <div class="form-group col-md-3">
        <label for="tstatus">Training Status:</label>
        <div class="form-floating">
          <input type="text" id="tstatus" name="tstatus" value="<%=tstatus%>" />
        </div>
      </div>
    </div>
	<button type="button" style="width:9%;margin-left:35%" onclick="cancelUpdate()">Cancel</button>
    <button type="submit" style="width:9%">Update</button>
  </form>

  <script>
  toastr.options = {
		  progressBar: true,
		  timeOut: 2000,
		  positionClass: "toast-bottom-right",
		};
    function updateTraining() {
      var formData = {
        refplannerid: $("#updateForm [name=refplannerid]").val(),
        tsubject: $("#updateForm [name=tsubject]").val(),
        tcategory: $("#updateForm [name=tcategory]").val(),
        tmode: $("#updateForm [name=tmode]").val(),
        ttargetgroup: $("#updateForm [name=ttargetgroup]").val(),
        tmonth: $("#updateForm [name=tmonth]").val(),
        tyear: $("#updateForm [name=tyear]").val(),
        tname: $("#updateForm [name=tname]").val(),
        tdescription: $("#updateForm [name=tdescription]").val(),
        tgrade: $("#updateForm [name=tgrade]").val(),
        tagency: $("#updateForm [name=tagency]").val(),
        tspell: $("#updateForm [name=tspell]").val(),
        preferdlocation: $("#updateForm [name=preferdlocation]").val(),
        numberofstakeholder: $("#updateForm [name=numberofstakeholder]").val(),
        numberdayneeded: $("#updateForm [name=numberdayneeded]").val(),
        thoursperday: $("#updateForm [name=thoursperday]").val(),
        totalhours: $("#updateForm [name=totalhours]").val(),
        trainingregstartdt: $("#updateForm [name=trainingregstartdt]").val(),
        trainingregenddt: $("#updateForm [name=trainingregenddt]").val(),
        tstatus: $("#updateForm [name=tstatus]").val(),
      };

      var jsonData = JSON.stringify(formData);


      $.ajax({
			type : "PUT",
			url : "/api/edit/" + $('[name=refplannerid]').val(),

			contentType : "application/json", // Set content type to JSON
			data : jsonData,
			success: function(response) {
				  toastr.success("Training updated successfully");
					window.location.href = "/AcademicCalender.jsp";

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
