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
        select {
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
    <title>Edit Venue</title>
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
        var vid = getUrlParameter("vid");
        var vname = getUrlParameter("vname");
        var vstatus = getUrlParameter("vstatus");
        var vmandal = getUrlParameter("vmandal");
        var vdistrict = getUrlParameter("vdistrict");
        var vtype = getUrlParameter("vtype");
        var vstate = getUrlParameter("vstate");
        var vcapacity = getUrlParameter("vcapacity");
        var vaddress = getUrlParameter("vaddress");
        var landmark = getUrlParameter("landmark");
        var vcontactname = getUrlParameter("vcontactname");
        var vcontactno = getUrlParameter("vcontactno");
        var vcontactmailid = getUrlParameter("vcontactmailid");
        var vlocation = getUrlParameter("vlocation");
        var maplocation = getUrlParameter("maplocation");

        // Set initial values in the input fields
        $("#vid").val(vid);
        $("#vname").val(vname);
        $("#vstatus").val(vstatus);
        $("#vmandal").val(vmandal);
        $("#vdistrict").val(vdistrict);
        $("#vtype").val(vtype);
        $("#vstate").val(vstate);
        $("#vcapacity").val(vcapacity);
        $("#vaddress").val(vaddress);
        $("#landmark").val(landmark);
        $("#vcontactname").val(vcontactname);
        $("#vcontactno").val(vcontactno);
        $("#vcontactmailid").val(vcontactmailid);
        $("#vlocation").val(vlocation);
        $("#maplocation").val(maplocation);

        // Event handler for Save button
        $("#saveButton").click(function () {
            // Get modified data from input fields
            var modifiedUid = $("#vid").val();
            var modifiedData = {
            		  vname: $("#vname").val(),
            		  vaddress: $("#vaddress").val(),
            		  vcapacity: $("#vcapacity").val(),
            		  vmandal: $("#vmandal").val(),
            		  vdistrict: $("#vdistrict").val(),
            		  vtype: $("#vtype").val(),
            		  vstate: $("#vstate").val(),
            		  vstatus: $("#vstatus").val(),
            		  maplocation: $("#maplocation").val(),
            		  status: $("#status").val(),
            		  vlocation: $("#vlocation").val(),
            		  vcontactname: $("#vcontactname").val(),
            		  vcontactmailid: $("#vcontactmailid").val(),
            		  landmark: $("#landmark").val()
            		};

           

            // Perform AJAX request to update the data
            $.ajax({
                type: "PUT",  // Assuming you are using PUT method for updates
                url: "/TTSS03/api/updateTrainingSpell/" + modifiedUid,
                data: {
                    spell: modifiedSpell
                },
                success: function (response) {
                    console.log("Spell updated successfully");
                    alert("Spell updated successfully");
                    window.location.href = "/TTSS03/TrainingSpell.jsp";

                },
                error: function (xhr, status, error) {
                    console.error("Failed to update training: " + error);
                    alert("Failed to update spell: " + error);
                }
            });
        });

        // Event handler for Exit button
        $("#exitButton").click(function () {
            window.location.href = "/TTSS03/TrainingSpell.jsp";
        });
    });
</script>


<script>
  // Flags to check if dropdowns are already populated
  var districtDropdownPopulated = false;
  var mandalDropdownPopulated = false;

  // Variables to store fetched data
  var districtData;
  var mandalData;

  // Function to fetch districts
  function fetchDistricts() {
    $.ajax({
      url: '/TTSS03/api/search/districts',
      type: 'GET',
      dataType: 'json',
      success: function (data) {
        const districtDropdown = $('#vdistrict');
        districtDropdown.append('<option value="" selected disabled>Select District</option>');

        // Populate the district dropdown
        data.forEach(district => {
          const option = $('<option></option>');
          option.val(district);
          option.text(district);
          districtDropdown.append(option);
        });

        // Update flags and data variables
        districtDropdownPopulated = true;
        districtData = data;
      },
      error: function (error) {
        console.error('Error fetching district data:', error);
      }
    });
  }

  // Function to fetch mandals
  function fetchMandals(selectedDistrict) {
    $.ajax({
      url: '/TTSS03/api/mandals?district=' + selectedDistrict,
      type: 'GET',
      dataType: 'json',
      success: function (data) {
        const mandalDropdown = $('#vmandal');
        mandalDropdown.html('<option value="" selected disabled>Select Mandal</option>');

        // Populate the mandal dropdown
        data.forEach(mandal => {
          const option = $('<option></option>');
          option.val(mandal);
          option.text(mandal);
          mandalDropdown.append(option);
        });

        // Update data variable
        mandalData = data;
      },
      error: function (error) {
        console.error('Error fetching mandal data:', error);
      }
    });
  }

  // Fetch districts on document load
  $(document).ready(function () {
    fetchDistricts();
  });

  // Attach event listener to district dropdown
  $(document).on('change', '#vdistrict', function () {
    const selectedDistrict = $(this).val();
    if (selectedDistrict) {
      fetchMandals(selectedDistrict);
    }
  });
</script>


</head>
<body>
    <h1>Edit Venue</h1>
    <div>
        <label for="vid">Venue Id:</label>
        <input type="text" id="vid" readonly>
    </div>
    <div>
        <label for="vname">Venue Name:</label>
    <input type="text" id="vname" placeholder="Enter venue name" required>
    </div>
    <div>
        <label for="vstate">Venue State:</label>
    <input type="text" id="vstate" placeholder="Enter state" required>
 
    </div>
    <div>
        <label for="vdistrict">Venue District:</label>
      <select id="vdistrict" placeholder="Enter district" required></select>
 
    </div>
    <div>
        <label for="vmandal">Venue Mandal:</label>
      <select id="vmandal" placeholder="Enter mandal" required></select>
 
    </div>
    <div>
        <label for="vlocation">Venue Location :</label>
    <input type="text" id="vlocation" placeholder="Enter spell" required>
 
    </div>
    <div>
         <label for="vcapacity">Venue Capacity:</label>
    <input type="text" id="vcapacity" placeholder="Enter spell" required>
 
    </div>
    <div>
       <label for="vaddress">Venue Address:</label>
    <input type="text" id="vaddress" placeholder="Enter spell" required>
 
    </div>
    <div>
       <label for="landmark">Landmark:</label>
    <input type="text" id="landmark" placeholder="Enter spell" required>
 
    </div>
    <div>
       <label for="vtype">Venue Type:</label>
    <input type="text" id="vtype" placeholder="Enter spell" required>
 
    </div>
    <div>
       <label for="vcontactname">Venue Co-Ordinator Name:</label>
    <input type="text" id="vcontactname" placeholder="Enter spell" required>
 
    </div>
      <div>
       <label for="vcontactno">Venue Co-Ordinator Mobile:</label>
    <input type="text" id="vcontactno" placeholder="Enter spell" required>
 
    </div>
      <div>
        <label for="vcontactmailid">Venue Co-Ordinator Email:</label>
    <input type="text" id="vcontactmailid" placeholder="Enter spell" required>
 
    </div>
      <div>
      <label for="maplocation">Map Location:</label>
    <input type="text" id="maplocation" placeholder="Enter spell" required>
 
    </div>
    <div>
      <label for="vstatus">Venue Status:</label>
    <input type="text" id="vstatus" placeholder="Enter spell" required>
 
    </div>
     
    <button id="saveButton">Save</button>
    <button id="exitButton">Exit</button>
</body>
</html>

