<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Mapping Details</title>
    
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
        }

        #content {
            width: 60%;
            margin: 2rem auto;
            padding: 1rem;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 1.5rem;
            color: #333;
        }

        form {
            margin: 0;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        input, select {
            display: block;
            width: 100%;
            padding: 8px;
            font-size: 1rem;
            border-radius: 4px;
            border: 1px solid #ccc;
            margin-bottom: 16px;
            box-sizing: border-box;
        }
        h2 {
            text-align: center;
            margin-bottom: 1.5rem;
            color: #3366cc; /* Adjust the color based on your preference */
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1.2rem;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Style for the row container */
        .row {
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 16px;
        }

        /* Style for each column */
        .column {
            flex: 1;
            margin-bottom: 16px;
        }
    </style>
</head>
<body>

<h2>Edit Mapping Details</h2>

<form action="#" method="post" id="editMapping">

   <!-- ##################### common 5 field ############# -->
<div class="row">
    <div class="column">
        <label for="slNo">Sl no:</label>
        <input type="text" id="slNo" name="slNo"  >
    </div>

    <!-- <input type="hidden" name="id" value="123"> -->

    <div class="column">
        <label for="trainingRefId">Training Ref Id:</label>
        <input type="text" id="trainingRefId" name="trainingRefId" required>
    </div>

    <div class="column">
        <label for="trainingName">Training Name:</label>
        <input type="text" id="trainingName" name="trainingName" required>
    </div>

    <div class="column">
        <label for="venueId">Venue Id:</label>
        <input type="text" id="venueId" name="venueId" required>
    </div>

    <div class="column">
        <label for="venueName">Venue Name:</label>
        <input type="text" id="venueName" name="venueName" required>
    </div>
</div>

   <!-- #######################  Co-ordinator  ############################ -->
<!-- #########row-1###### -->

<div class="row">
    <div class="column">
        <label for="coordinatorFlag">Co-ordinator Flag:</label>
        <input type="text" id="coordinatorFlag" name="coordinatorFlag" required>
    </div>

    <div class="column">
        <label for="coordinatorTreasuryId">Co-ordinator TreasuryId:</label>
        <input type="text" id="coordinatorTreasuryId" name="coordinatorTreasuryId" required>
    </div>

    <div class="column">
        <label for="coordinatorName">Co-ordinator Name:</label>
        <input type="text" id="coordinatorName" name="coordinatorName" required>
    </div>

    <div class="column">
        <label for="coordinatorDesignation">Co-ordinator Designation:</label>
        <input type="text" id="coordinatorDesignation" name="coordinatorDesignation" required>
    </div>
</div>

<!-- #########row-1###### -->

<div class="row">
    <div class="column">
        <label for="coordinatorEmail">Co-ordinator Email:</label>
        <input type="text" id="coordinatorEmail" name="coordinatorEmail" required>
    </div>

    <div class="column">
        <label for="coordinatorMobile">Co-ordinator Mobile:</label>
        <input type="text" id="coordinatorMobile" name="coordinatorMobile" required>
    </div>

    <div class="column">
        <label for="coordinatorDistrict">Co-ordinator District:</label>
        <input type="text" id="coordinatorDistrict" name="coordinatorDistrict" required>
    </div>

    <div class="column">
        <label for="coordinatorMandal">Co-ordinator Mandal:</label>
        <input type="text" id="coordinatorMandal" name="coordinatorMandal" required>
    </div>
</div>


<!-- ####################### Asst. Co-ordinator  ############################ -->
    <!-- #########row-1###### -->
<div class="row">
    <div class="column">
        <label for="asstCoordinatorFlag">Asst. Co-ordinator Flag:</label>
        <input type="text" id="asstCoordinatorFlag" name="asstCoordinatorFlag" required>
    </div>

    <div class="column">
        <label for="asstCoordinatorTreasuryId">Asst. Co-ordinator TreasuryId:</label>
        <input type="text" id="asstCoordinatorTreasuryId" name="asstCoordinatorTreasuryId" required>
    </div>

    <div class="column">
        <label for="asstCoordinatorName">Asst. Co-ordinator Name:</label>
        <input type="text" id="asstCoordinatorName" name="asstCoordinatorName" required>
    </div>

    <div class="column">
        <label for="asstCoordinatorDesignation">Asst. Co-ordinator Designation:</label>
        <input type="text" id="asstCoordinatorDesignation" name="asstCoordinatorDesignation" required>
    </div>
    </div>

        <!-- #########row-2###### -->
<div class="row">
    <div class="column">
        <label for="asstCoordinatorEmail">Asst. Co-ordinator Email:</label>
        <input type="text" id="asstCoordinatorEmail" name="asstCoordinatorEmail" required>
    </div>

    <div class="column">
        <label for="asstCoordinatorMobile">Asst. Co-ordinator Mobile:</label>
        <input type="text" id="asstCoordinatorMobile" name="asstCoordinatorMobile" required>
    </div>

    <div class="column">
        <label for="asstCoordinatorDistrict">Asst. Co-ordinator District:</label>
        <input type="text" id="asstCoordinatorDistrict" name="asstCoordinatorDistrict" required>
    </div>

    <div class="column">
        <label for="asstCoordinatorMandal">Asst. Co-ordinator Mandal:</label>
        <input type="text" id="asstCoordinatorMandal" name="asstCoordinatorMandal" required>
    </div>
</div>

<!-- ####################### Trainer  ############################ -->
    <!-- #########row-1###### -->
<div class="row">
    <div class="column">
        <label for="trainerFlag">Trainer Flag:</label>
        <input type="text" id="trainerFlag" name="trainerFlag" required>
    </div>

    <div class="column">
        <label for="trainerTreasuryId">Trainer TreasuryId:</label>
        <input type="text" id="trainerTreasuryId" name="trainerTreasuryId" required>
    </div>

    <div class="column">
        <label for="trainerName">Trainer Name:</label>
        <input type="text" id="trainerName" name="trainerName" required>
    </div>

    <div class="column">
        <label for="trainerDesignation">Trainer Designation:</label>
        <input type="text" id="trainerDesignation" name="trainerDesignation" required>
    </div>
</div>

 <!-- #########row-2###### -->
<div class="row">
    <div class="column">
        <label for="trainerEmail">Trainer Email:</label>
        <input type="text" id="trainerEmail" name="trainerEmail" required>
    </div>

    <div class="column">
        <label for="trainerMobile">Trainer Mobile:</label>
        <input type="text" id="trainerMobile" name="trainerMobile" required>
    </div>

    <div class="column">
        <label for="trainerDistrict">Trainer District:</label>
        <input type="text" id="trainerDistrict" name="trainerDistrict" required>
    </div>

    <div class="column">
        <label for="trainerMandal">Trainer Mandal:</label>
        <input type="text" id="trainerMandal" name="trainerMandal" required>
    </div>
</div>


    <!-- ####################### Office-staffs  ############################ -->
    <!-- #########row-1###### -->
    <div class="row">
        <div class="column">
            <label for="officeStaffsFlag">Office-staffs Flag:</label>
            <input type="text" id="officeStaffsFlag" name="officeStaffsFlag" required>
        </div>

        <div class="column">
            <label for="officeStaffsTreasuryId">Office-staffs TreasuryId:</label>
            <input type="text" id="officeStaffsTreasuryId" name="officeStaffsTreasuryId" required>
        </div>

        <div class="column">
            <label for="officeStaffsName">Office-staffs Name:</label>
            <input type="text" id="officeStaffsName" name="officeStaffsName" required>
        </div>

        <div class="column">
            <label for="officeStaffsDesignation">Office-staffs Designation:</label>
            <input type="text" id="officeStaffsDesignation" name="officeStaffsDesignation" required>
        </div>
</div>

 <!-- #########row-2###### -->
<div class="row">
        <div class="column">
            <label for="officeStaffsEmail">Office-staffs Email:</label>
            <input type="text" id="officeStaffsEmail" name="officeStaffsEmail" required>
        </div>

        <div class="column">
            <label for="officeStaffsMobile">Office-staffs Mobile:</label>
            <input type="text" id="officeStaffsMobile" name="officeStaffsMobile" required>
        </div>

        <div class="column">
            <label for="officeStaffsDistrict">Office-staffs District:</label>
            <input type="text" id="officeStaffsDistrict" name="officeStaffsDistrict" required>
        </div>

        <div class="column">
            <label for="officeStaffsMandal">Office-staffs Mandal:</label>
            <input type="text" id="officeStaffsMandal" name="officeStaffsMandal" required>
        </div>
    </div>


    <!-- ####################### participants  ############################ -->
    <!-- #########row-1###### -->
    <div class="row">
        <div class="column">
            <label for="participantsFlag">Participants Flag:</label>
            <input type="text" id="participantsFlag" name="participantsFlag" required>
        </div>

        <div class="column">
            <label for="participantsTreasuryId">Participants TreasuryId:</label>
            <input type="text" id="participantsTreasuryId" name="participantsTreasuryId" required>
        </div>

        <div class="column">
            <label for="participantsName">Participants Name:</label>
            <input type="text" id="participantsName" name="participantsName" required>
        </div>

        <div class="column">
            <label for="participantsDesignation">Participants Designation:</label>
            <input type="text" id="participantsDesignation" name="participantsDesignation" required>
        </div>
        </div>

         <!-- #########row-2###### -->
        <div class="row">
        <div class="column">
            <label for="participantsEmail">Participants Email:</label>
            <input type="text" id="participantsEmail" name="participantsEmail" required>
        </div>

        <div class="column">
            <label for="participantsMobile">Participants Mobile:</label>
            <input type="text" id="participantsMobile" name="participantsMobile" required>
        </div>

        <div class="column">
            <label for="participantsDistrict">Participants District:</label>
            <input type="text" id="participantsDistrict" name="participantsDistrict" required>
        </div>

        <div class="column">
            <label for="participantsMandal">Participants Mandal:</label>
            <input type="text" id="participantsMandal" name="participantsMandal" required>
        </div>
    </div>

    <!-- <label for="status">Status:</label>
    <select id="status" name="status">
        <option value="active">Active</option>
        <option value="inactive">Inactive</option>
    </select><br> -->

    <input type="submit" id="submitbtn" onclickvalue="Update">
</form>

 
 <script>
 $(document).ready(function () {
     // Call editVenue() when the document is ready
     editVenue();

        $('#submitbtn').click(function (event) {
            event.preventDefault(); // Prevent default form submission

            // Get form field values
           var slNo = $('#slNo').val();
    var trainingRefId = $('#trainingRefId').val();
    var trainingName = $('#trainingName').val();
    var venueId = $('#venueId').val();
    var venueName = $('#venueName').val();

    // Get Coordinator fields
    var coordinatorFlag = $('#coordinatorFlag').val();
    var coordinatorTreasuryId = $('#coordinatorTreasuryId').val();
    var coordinatorName = $('#coordinatorName').val();
    var coordinatorDesignation = $('#coordinatorDesignation').val();
    var coordinatorEmail = $('#coordinatorEmail').val();
    var coordinatorMobile = $('#coordinatorMobile').val();
    var coordinatorDistrict = $('#coordinatorDistrict').val();
    var coordinatorMandal = $('#coordinatorMandal').val();
            addData();
        });

        function addData() {
            var venueId = getUrlParameter('slno');

            var formData = {
            		updatedCommaSeparatedString: $('#coordinatorTreasuryId').val(),
                venueLandMark: $('#venueLandMark').val(),
                venueMandal: $('#venueMandal').val(),
                coOrdinatorName: $('#coOrdinatorName').val(),
                emailAddress: $('#emailAddress').val(),
                venueCapacity: $('#venueCapacity').val(),
                venueType: $('#venueType').val(),
                venueDistrict: $('#venueDistrict').val(),
                venueState: $('#venueState').val(),
                phone: $('#phone').val(),
                address: $('#address').val(),
                mapLocation: $('#mapLocation').val()
            };

            $.ajax({
                type: 'PUT',
                url: '/api/updateMapping/' + venueId, // Replace with your actual API endpoint
                contentType: 'application/json',
                data: JSON.stringify(formData),
                success: function (response) {
                    alert('Data Updated successfully: ' + response);
//                     window.location.href = '/venue/';
                    // Optionally, you can redirect or perform other actions on success
                },
                error: function () {
                    alert('Error adding data.');
                }
            });
        }

        function getUrlParameter(name) {
            name = name.replace(/[[]/, '\\[').replace(/[\]]/, '\\]');
            var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
            var results = regex.exec(location.search);
            return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
        }

        function editVenue() {
            var mappingcode = getUrlParameter('slno');
            console.log("map code:"+mappingcode);

            if (mappingcode) {
                $.ajax({
                    type: 'GET',
                    url: '/api/mapping/data?mappingcode='+ mappingcode, // Replace with your actual endpoint
                    dataType: 'json',
                    success: function (data) {
                    	 if (data && data.length > 0) {
                             var firstRecord = data[0];

                             
                             $('#slNo').val(firstRecord.slno);
                             
                             $('#trainingRefId').val(firstRecord.trainingid);
                             $('#trainingName').val(firstRecord.trainingname);
                             $('#venueId').val(firstRecord.venueid);
                             $('#venueName').val(firstRecord.venuename);
                       
                             var existingArray = firstRecord.ccTreasuryid.split(',');
                             
                             existingArray[1] = cctreasuryid; 
                             var otherArrayData = ["additional_value1", "additional_value2"];
                             var concatenatedArray = existingArray.concat(otherArrayData);
                             
                             var updatedCommaSeparatedString = concatenatedArray.join(',');


                             
                             $('#coordinatorFlag').val(firstRecord.ccflag);
                             $('#coordinatorTreasuryId').val(firstRecord.cctreasuryid);
                             $('#coordinatorName').val(firstRecord.ccname);
                             $('#coordinatorDesignation').val(firstRecord.ccdesignation);
                             $('#coordinatorEmail').val(firstRecord.ccemail);
                             $('#coordinatorMobile').val(firstRecord.ccmobile);
                             $('#coordinatorDistrict').val(firstRecord.ccdistrict);
                             $('#coordinatorMandal').val(firstRecord.ccmandal);
                        
                        // Populate Asst. Co-ordinator fields
                        $('#asstCoordinatorFlag').val(firstRecord.accflag);
                        $('#asstCoordinatorTreasuryId').val(firstRecord.acctreasuryid);
                        $('#asstCoordinatorName').val(firstRecord.accname);
                        $('#asstCoordinatorDesignation').val(firstRecord.accdesignation);
                        $('#asstCoordinatorEmail').val(firstRecord.accemail);
                        $('#asstCoordinatorMobile').val(firstRecord.accmobile);
                        $('#asstCoordinatorDistrict').val(firstRecord.accdistrict);
                        $('#asstCoordinatorMandal').val(firstRecord.accmandal);

                        // Populate Trainer fields
                        $('#trainerFlag').val(firstRecord.rpflag);
                        $('#trainerTreasuryId').val(firstRecord.rptreasuryid);
                        $('#trainerName').val(firstRecord.rpname);
                        $('#trainerDesignation').val(firstRecord.rpdesignation);
                        $('#trainerEmail').val(firstRecord.rpemail);
                        $('#trainerMobile').val(firstRecord.rpmobile);
                        $('#trainerDistrict').val(firstRecord.rpdistrict);
                        $('#trainerMandal').val(firstRecord.rpmandal);

                        // Populate Office-staffs fields
                        $('#officeStaffsFlag').val(firstRecord.osflag);
                        $('#officeStaffsTreasuryId').val(firstRecord.ostreasuryid);
                        $('#officeStaffsName').val(firstRecord.osname);
                        $('#officeStaffsDesignation').val(firstRecord.osdesignation);
                        $('#officeStaffsEmail').val(firstRecord.osemail);
                        $('#officeStaffsMobile').val(firstRecord.osmobile);
                        $('#officeStaffsDistrict').val(firstRecord.osdistrict);
                        $('#officeStaffsMandal').val(firstRecord.osmandal);

                        // Populate Participants fields
                        $('#participantsFlag').val(firstRecord.ppflag);
                        $('#participantsTreasuryId').val(firstRecord.pptreasuryid);
                        $('#participantsName').val(firstRecord.ppname);
                        $('#participantsDesignation').val(firstRecord.ppdesignation);
                        $('#participantsEmail').val(firstRecord.ppemail);
                        $('#participantsMobile').val(firstRecord.ppmobile);
                        $('#participantsDistrict').val(firstRecord.ppdistrict);
                        $('#participantsMandal').val(firstRecord.ppmandal);

                        // Populate Status and Remark fields if available
                        $('#status').val(firstRecord.status);
                        $('#remark').val(firstRecord.remark);
                        $('#recordstatus').val(firstRecord.recordstatus);

                        // Add similar lines for other form fields
                    	 } else {
                                console.error('No data found in the response.');
                                alert('No data found in the response.');
                            }
                    },
                    error: function (xhr, status, error) {
                        console.error('Error fetching venue data:', xhr.responseText);
                        alert('Error fetching venue data. Please check the console for details.');
                    }
                });
            } else {
//                 alert('Venue ID not provided in the URL.');
            }
        }
     // On the EditTraining.jsp page
        var editTrainingData = JSON.parse(localStorage.getItem("editTrainingData"));
        console.log("edit data:"+editTrainingData);

     // Retrieve the stored training data from localStorage
        var trainingData = localStorage.getItem("editTrainingData");
        console.log(trainingData);

        // Parse the JSON string back into an object
        var trainingObject = JSON.parse(trainingData);
        console.log(trainingObject);

        // Now, you can use trainingObject to access the data associated with the selected training

    });
</script>
<script>
    // Retrieve the collection array from sessionStorage
    // Retrieve the stored selected training data from session storage
    var selectedTrainingData = JSON.parse(sessionStorage.getItem("selectedTrainingData"));

 // Now you can use the selectedTrainingData in your editMapping.jsp page as needed
 console.log("Selected Training Data:", selectedTrainingData);

</script>
<script>
    // Retrieve the stored training data from session storage
    var selectedTrainingData = JSON.parse(sessionStorage.getItem("selectedTrainingData"));

    // Check if the data exists
    if (selectedTrainingData) {
        // Now you can use the selectedTrainingData as needed
        console.log("Editing Training:", selectedTrainingData);

        // Add your logic for handling the edit operation
        // For example, you might populate form fields with the training data
        // You can access individual fields like selectedTrainingData.trainingid, selectedTrainingData.ccFlag, etc.
    } else {
        console.error("No training data found for editing");
        // Handle the case where no training data is found, e.g., redirect to an error page
    }
</script>

<!-- <script>  
// //Function to populate form fields with data
// function populateFormFields(data) {
//     document.getElementById('slNo').value = data.slNo || '';
//     document.getElementById('trainingRefId').value = data.trainingRefId || '';
//     document.getElementById('trainingName').value = data.trainingName || '';
//     document.getElementById('venueId').value = data.venueId || '';
//     document.getElementById('venueName').value = data.venueName || '';

//     // Co-ordinator
//     document.getElementById('coordinatorFlag').value = data.coordinatorFlag || '';
//     document.getElementById('coordinatorTreasuryId').value = data.coordinatorTreasuryId || '';
//     document.getElementById('coordinatorName').value = data.coordinatorName || '';
//     document.getElementById('coordinatorDesignation').value = data.coordinatorDesignation || '';
//     document.getElementById('coordinatorEmail').value = data.coordinatorEmail || '';
//     document.getElementById('coordinatorMobile').value = data.coordinatorMobile || '';
//     document.getElementById('coordinatorDistrict').value = data.coordinatorDistrict || '';
//     document.getElementById('coordinatorMandal').value = data.coordinatorMandal || '';

//     // Asst. Co-ordinator
//     document.getElementById('asstCoordinatorFlag').value = data.asstCoordinatorFlag || '';
//     document.getElementById('asstCoordinatorTreasuryId').value = data.asstCoordinatorTreasuryId || '';
//     document.getElementById('asstCoordinatorName').value = data.asstCoordinatorName || '';
//     document.getElementById('asstCoordinatorDesignation').value = data.asstCoordinatorDesignation || '';
//     document.getElementById('asstCoordinatorEmail').value = data.asstCoordinatorEmail || '';
//     document.getElementById('asstCoordinatorMobile').value = data.asstCoordinatorMobile || '';
//     document.getElementById('asstCoordinatorDistrict').value = data.asstCoordinatorDistrict || '';
//     document.getElementById('asstCoordinatorMandal').value = data.asstCoordinatorMandal || '';

//     // Trainer
//     document.getElementById('trainerFlag').value = data.trainerFlag || '';
//     document.getElementById('trainerTreasuryId').value = data.trainerTreasuryId || '';
//     document.getElementById('trainerName').value = data.trainerName || '';
//     document.getElementById('trainerDesignation').value = data.trainerDesignation || '';
//     document.getElementById('trainerEmail').value = data.trainerEmail || '';
//     document.getElementById('trainerMobile').value = data.trainerMobile || '';
//     document.getElementById('trainerDistrict').value = data.trainerDistrict || '';
//     document.getElementById('trainerMandal').value = data.trainerMandal || '';

//     // Office-staffs
//     document.getElementById('officeStaffsFlag').value = data.officeStaffsFlag || '';
//     document.getElementById('officeStaffsTreasuryId').value = data.officeStaffsTreasuryId || '';
//     document.getElementById('officeStaffsName').value = data.officeStaffsName || '';
//     document.getElementById('officeStaffsDesignation').value = data.officeStaffsDesignation || '';
//     document.getElementById('officeStaffsEmail').value = data.officeStaffsEmail || '';
//     document.getElementById('officeStaffsMobile').value = data.officeStaffsMobile || '';
//     document.getElementById('officeStaffsDistrict').value = data.officeStaffsDistrict || '';
//     document.getElementById('officeStaffsMandal').value = data.officeStaffsMandal || '';

//     // Participants
//     document.getElementById('participantsFlag').value = data.participantsFlag || '';
//     document.getElementById('participantsTreasuryId').value = data.participantsTreasuryId || '';
//     document.getElementById('participantsName').value = data.participantsName || '';
//     document.getElementById('participantsDesignation').value = data.participantsDesignation || '';
//     document.getElementById('participantsEmail').value = data.participantsEmail || '';
//     document.getElementById('participantsMobile').value = data.participantsMobile || '';
//     document.getElementById('participantsDistrict').value = data.participantsDistrict || '';
//     document.getElementById('participantsMandal').value = data.participantsMandal || '';
// }


// // Function to fetch data and populate the form
// function fetchDataAndPopulateForm(mappingcode) {
//     // Replace this URL with your actual API endpoint
//     var apiUrl = '/api/mapping/data/' + mappingcode;

//     fetch(apiUrl)
//         .then(response => {
//             if (!response.ok) {
//                 throw new Error('Network response was not ok');
//             }
//             return response.json();
//         })
//         .then(data => populateFormFields(data))
//         .catch(error => console.error('Error fetching data:', error));
// }


  </script> -->
<!-- <script >  

// document.addEventListener("DOMContentLoaded", function() {
//     // Get the URL parameters
//     const params = new URLSearchParams(window.location.search);
    
//     // Check if the slNo parameter exists
//     if (params.has('slno')) {
//         // Get the slNo value from the URL
//         const slNoValue = params.get('slno');
        
//         // Set the slNo value to the input field
//         document.getElementById('slNo').value = slNoValue;
//     }
// });

  </script> -->


</body>
</html>

