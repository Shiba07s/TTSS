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
            color: #3366cc; /* Adjust the color based on your preference */
        }

        form {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 0;
        }

        label {
            font-size: 12px;
            display: block;
            margin-bottom: 8px;
            color: #333;
            flex-basis: 100%; /* Each label takes full width */
        }

        input,
        select {
            display: block;
            width: 300%; /* Each input takes full width */
            padding: 8px;
            font-size: 1rem;
            border-radius: 4px;
            border: 1px solid #ccc;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1.2rem;
            width: 100%; /* Button spans all columns */
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>

    <h2>Edit Mapping Details</h2>

    <form action="#" method="post" id="editMapping">

        <!-- Container to dynamically append fields -->
        <div id="dynamicFieldsContainer"></div>

        <input type="submit" id="submitbtn" value="Update">
    </form>

   <script>
    $(document).ready(function () {
        // Call editVenue() when the document is ready
        editVenue();

        $('#submitbtn').click(function (event) {
            event.preventDefault(); // Prevent default form submission
            addData();
        });

        function addData() {
            var venueId = getUrlParameter('slno');

            // Fetch existing data
            $.ajax({
                type: 'GET',
                url: '/api/mapping/data?mappingcode=' + venueId,
                dataType: 'json',
                success: function (existingData) {
                    // Construct formData based on the input fields
                    var formData = {};

                    $('#dynamicFieldsContainer input').each(function () {
                        var inputId = $(this).attr('id');
                        var inputValue = $(this).val();

                        // If the field already exists in the existing data, update the specific value
                        if (existingData[inputId]) {
                            var existingArray = existingData[inputId].split(',');

                            // Update the specific value
                            existingArray.forEach(function (existingValue, index) {
                                if (existingValue.trim() !== inputValue.trim()) {
                                    existingArray[index] = inputValue.trim();
                                }
                            });

                            // Join the array back into a comma-separated string
                            inputValue = existingArray.join(',');
                        }

                        formData[inputId] = inputValue;
                    });

                    // Perform the update
                    $.ajax({
                        type: 'PUT',
                        url: '/api/updateMapping/' + venueId, // Replace with your actual API endpoint
                        contentType: 'application/json',
                        data: JSON.stringify(formData),
                        success: function (response) {
                            alert('Data Updated successfully: ' + response);
                            // Optionally, you can redirect or perform other actions on success
                        },
                        error: function () {
                            alert('Error updating data.');
                        }
                    });
                },
                error: function (xhr, status, error) {
                    console.error('Error fetching venue data:', xhr.responseText);
                    alert('Error fetching venue data. Please check the console for details.');
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

            if (mappingcode) {
                $.ajax({
                    type: 'GET',
                    url: '/api/mapping/data?mappingcode=' + mappingcode,
                    dataType: 'json',
                    success: function (data) {
                        if (data && data.length > 0) {
                            var firstRecord = data[0];

                            // Create a container for dynamic fields
                            var dynamicFieldsContainer = $('#dynamicFieldsContainer');

                            // Iterate through the data and create fields dynamically
                            $.each(firstRecord, function (key, value) {
                                // Create a label for each field
                                dynamicFieldsContainer.append('<label for="' + key + '">' + key + '</label>');

                                // Create an input field based on the data type
                                if (value !== null) {
                                    if (typeof value === 'string' && value.includes(',')) {
                                        // If the value contains commas, create multiple input fields
                                        var valuesArray = value.split(',');
                                        $.each(valuesArray, function (index, val) {
                                            var levelName = key + '_' + (index + 1);
                                            dynamicFieldsContainer.append('<input type="text" id="' + levelName + '" value="' + val.trim() + '">');
                                        });
                                    } else {
                                        // Otherwise, create a single input field
                                        dynamicFieldsContainer.append('<input type="text" id="' + key + '" value="' + value + '">');
                                    }
                                } else {
                                    // Display a blank box if the value is null
                                    dynamicFieldsContainer.append('<input type="text" id="' + key + '" value="">');
                                }
                            });

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
                // Handle the case where Venue ID is not provided in the URL
                // alert('Venue ID not provided in the URL.');
            }
        }

        // On the EditTraining.jsp page
        var editTrainingData = JSON.parse(localStorage.getItem("editTrainingData"));
        console.log("edit data:" + editTrainingData);

        // Retrieve the stored training data from localStorage
        var trainingData = localStorage.getItem("editTrainingData");
        console.log(trainingData);

        // Parse the JSON string back into an object
        var trainingObject = JSON.parse(trainingData);
        console.log(trainingObject);

        // Now, you can use trainingObject to access the data associated with the selected training

    });
</script>
</body>

</html>
