<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Upload Success</title>
    <link rel="stylesheet" href="style/upload.css">
    <style>
        /* Pop-up modal styling */
        .modal {
            display: none; /* Hidden by default */
            position: fixed;
            z-index: 1;
            padding-top: 100px;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
        }
        
        .modal-content {
            background-color: #fff;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 400px;
            text-align: center;
            border-radius: 8px;
        }

        .modal-content p {
            font-size: 1.2em;
            color: #4CAF50; /* Success color */
        }

        .close-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            margin-top: 15px;
            border-radius: 5px;
        }

        .close-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div id="successModal" class="modal">
    <div class="modal-content">
        <p>Upload Successful!</p>
        <button class="close-btn" onclick="closeModal()">OK</button>
    </div>
</div>

<script>
    // Function to open the modal when page loads
    window.onload = function() {
        document.getElementById('successModal').style.display = 'block';
    };

    // Function to close the modal
    function closeModal() {
        document.getElementById('successModal').style.display = 'none';
        window.location.href = "submissions.jsp"; // Redirect to submissions page after closing
    }
</script>

</body>
</html>
