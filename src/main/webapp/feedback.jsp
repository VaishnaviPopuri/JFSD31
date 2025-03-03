<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <style>
        /* General Reset and Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #74b9ff, #00cec9);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Align to the top */
            padding-top: 30px; /* Small top gap */
            color: #333;
        }

        .container {
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            width: 400px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            animation: slideIn 0.5s ease-in-out;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            text-align: center;
            margin-bottom: 20px; /* Increased margin for better spacing */
            color: #0984e3;
        }

        label {
            display: block;
            margin: 8px 0 5px; /* Adjusted margin */
            font-weight: bold;
            color: #555;
        }

        input, select, textarea {
            width: 100%;
            padding: 10px; /* Increased padding for better user experience */
            margin-bottom: 15px; /* Increased margin for space between fields */
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            outline: none;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input:focus, select:focus, textarea:focus {
            border-color: #0984e3;
            box-shadow: 0 0 5px rgba(9, 132, 227, 0.5);
        }

        .rating-group {
            display: flex;
            justify-content: space-between;
            margin: 10px 0 15px; /* Increased margins */
        }

        .rating-group label {
            font-weight: normal;
            text-align: center;
            width: 40px;
        }

        button {
            width: 100%;
            background: #0984e3;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: #0652dd;
            transform: translateY(-2px);
        }

        /* Footer */
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 12px;
            color: #888;
        }
    </style>
</head>
<body>
    <div class="container">
        <form method="POST" action="feedbacksuccess">
            <h2>Feedback Form</h2>
            
            <label for="user_type">I am a:</label>
            <select name="user_type" id="user_type" required>
                <option value="">Select User Type</option>
                <option value="Student">Student</option>
                <option value="Faculty">Faculty</option>
            </select>

            <label for="name">Your Name:</label>
            <input type="text" id="name" name="name" required placeholder="Enter your name">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required placeholder="Enter your email">

            <h3>Rate the following (1 = Poor, 5 = Excellent):</h3>

            <label>1. Platform Design and Usability:</label>
            <div class="rating-group">
                <label><input type="radio" name="design_rating" value="1" required> 1</label>
                <label><input type="radio" name="design_rating" value="2"> 2</label>
                <label><input type="radio" name="design_rating" value="3"> 3</label>
                <label><input type="radio" name="design_rating" value="4"> 4</label>
                <label><input type="radio" name="design_rating" value="5"> 5</label>
            </div>

            <label>2. Ease of Project Management:</label>
            <div class="rating-group">
                <label><input type="radio" name="upload_rating" value="1" required> 1</label>
                <label><input type="radio" name="upload_rating" value="2"> 2</label>
                <label><input type="radio" name="upload_rating" value="3"> 3</label>
                <label><input type="radio" name="upload_rating" value="4"> 4</label>
                <label><input type="radio" name="upload_rating" value="5"> 5</label>
            </div>

            <label>3. Feedback Response Time:</label>
            <div class="rating-group">
                <label><input type="radio" name="response_rating" value="1" required> 1</label>
                <label><input type="radio" name="response_rating" value="2"> 2</label>
                <label><input type="radio" name="response_rating" value="3"> 3</label>
                <label><input type="radio" name="response_rating" value="4"> 4</label>
                <label><input type="radio" name="response_rating" value="5"> 5</label>
            </div>

            <label for="additional_feedback">Additional Feedback:</label>
            <textarea id="additional_feedback" name="additional_feedback" rows="3" placeholder="Enter your additional feedback here"></textarea>

            <button type="submit">Submit Feedback</button>
        </form>
        <div class="footer">
            © 2024 Yours PORTFOLIOHUB
        </div>
    </div>
</body>
</html>
