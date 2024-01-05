<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>TTSS</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<style>
.container {
	width: 100%;
	font-size: 14px;
}

#tab2 {
	display: none;
}

.table {
	height: 500px;
}

.table thead th {
	background-color: blue; /* Blue color for the table heading */
	color: white; /* White text for the table heading */
}
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.3/xlsx.full.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
	<div class="container tab-content" id="tab2">
		<div class="mt-1">
			<b></b>
		</div>
		<table class="table table-hover" id="trainingTable">
			<thead>
				<tr>
					<th>slno</th>
					<th>Reference Id</th>
					<th>Training Name</th>
					<th>Training Mode</th>
					<th>Description</th>
					<th>Application start Date</th>
					
					<th>Application End Date</th>
					<th>Training start Date</th>
					<th>Training Start Time</th>
					
					<th>Training End Date</th>
					<th>Training End Time</th>
					<th>Venue Id</th>
					<th>venue Address</th>
					<th>Map Location</th>
					<th>Co-ordinater Details</th>
					<th>Resource Type</th>
					
										<th>Action</th>
					
					
				</tr>
			</thead>
			<tbody></tbody>
		</table>
	</div>
	<script>
		$(document)
				.ready(
						function() {
							fetchDataAndDisplay();

							function fetchDataAndDisplay() {
								$.ajax({
									type : "GET",
									url : "/TTSS03/api/scheduledTrainings",
									dataType : "json",
									success : function(data) {
										displayTrainingData(data);
										$("#tab2").css("display", "block");
									},
									error : function(xhr, status, error) {
										console.error("API request error: "
												+ error);
									}
								});
							}

							function displayTrainingData(data) {
								var trainings = data;
								trainings.reverse();

								var table = document
										.getElementById("trainingTable");

								//table.innerHTML = "<tr><th>slno</th><th>Reference Id</th><th>Training Name</th><th>Training Mode</th><th>Description</th><th>Application start to end</th><th>Training start to end</th><th>Venue Id</th><th>venue Address</th><th>Map Location</th><th>Co-ordinater Details</th><th>Resource Type</th><th>Action</th></tr>";

								for (var i = 0; i < trainings.length; i++) {
									var training = trainings[i];
									var row = table.insertRow(i + 1);
						            row.insertCell(0).innerHTML = i + 1;

						            row.insertCell(1).innerHTML = training.ref_planner_id;
					                row.insertCell(2).innerHTML = training.tname;
					                row.insertCell(3).innerHTML = training.tmode;
					                row.insertCell(4).innerHTML = training.tdescription;
					                row.insertCell(5).innerHTML = training.apply_start_dt;
					                row.insertCell(6).innerHTML = training.apply_end_dt;
					                row.insertCell(7).innerHTML = training.training_start_dt;
					                row.insertCell(8).innerHTML = training.tstarttime;
					                row.insertCell(9).innerHTML = training.training_end_dt;
					                row.insertCell(10).innerHTML = training.tendtime;
					                row.insertCell(11).innerHTML = training.venue_id;
					                row.insertCell(12).innerHTML = training.venue_name + ', ' + training.vaddress;
					                row.insertCell(13).innerHTML = training.maplocation;
					                row.insertCell(14).innerHTML = training.coordinatorname;
					                row.insertCell(15).innerHTML = training.resourcetype;

					                var applyNowButton = document.createElement("button");
					                applyNowButton.textContent = "Apply Now";
					                applyNowButton.className = "btn btn-success";

					                applyNowButton.onclick = createApplyButtonClickHandler(training.ref_planner_id, training.venue_id);

					                var actionCell = row.insertCell(16);
					                actionCell.appendChild(applyNowButton);
					            }
					        }

					        function createApplyButtonClickHandler(refPlannerId, venueId) {
					            return function () {
					                checkApplicationStatusAndRedirect(refPlannerId, venueId);
					            };
					        }

					        function checkApplicationStatusAndRedirect(refPlannerId, venueId) {
					        	 var treasuryId = sessionStorage.getItem("treasuryId");
					        	 
					        	 console.log(treasuryId);
					        	 console.log(refPlannerId);
					        	 
					            $.ajax({
					                type: "Get",
					                url: "/TTSS03/api/HaveAnyTrainings",
					                data: {
					                    ref_planner_id: refPlannerId,
					                    treasuryId: treasuryId
					                },
					                success: function (response) {
					                	if (response && Array.isArray(response) && response.length != 0) {
					                        alert("You have already applied.");
					                    } else {
					                        redirectToApplyPage(refPlannerId, venueId);
					                    }
					                },
					                error: function (xhr, status, error) {
					                    console.error("API request error: " + error);
					                }
					            });
					        }

					        function redirectToApplyPage(refPlannerId, venueId) {
					            var applyPageUrl = '/TTSS03/TrainingApplyForm.jsp';
					            applyPageUrl += '?ref_planner_id=' + encodeURIComponent(refPlannerId);

					            if (venueId !== null && venueId !== undefined) {
					                applyPageUrl += '&venue_id=' + encodeURIComponent(venueId);
					            }

					            window.location.href = applyPageUrl;
					        }
					    });
					</script>
</body>
</html>
