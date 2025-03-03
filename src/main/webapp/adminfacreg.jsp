<!DOCTYPE html>
<html>
<head>
    <title>Faculty Registration</title>
    <style>
        /* General Styling */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa; /* Light grayish-blue background */
            color: #333; /* Dark gray text */
        }

        h3 {
            text-align: center;
            margin-top: 20px;
            font-size: 1.8em;
            color: #1f618d; /* Rich blue for heading */
        }

        /* Form Container Styling */
        .form-container {
            width: 450px;
            margin: 30px auto;
            background: #fff;
            padding: 25px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table td {
            padding: 10px 5px;
            vertical-align: top;
        }

        label {
            font-weight: bold;
            font-size: 1em;
            color: #333;
        }

        /* Input Fields */
        input[type="text"],
        input[type="number"],
        input[type="date"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px 12px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 1em;
            transition: border-color 0.3s ease;
        }

        input:focus,
        select:focus {
            border-color: #1f618d; /* Highlighted blue border */
            outline: none;
        }

        /* Gender Radio Buttons */
        input[type="radio"] {
            margin-right: 5px;
            cursor: pointer;
        }

        label[for="male"],
        label[for="female"],
        label[for="others"] {
            margin-right: 10px;
            font-weight: normal;
        }

        /* Button Styling */
        .button-container {
            text-align: center;
            margin-top: 15px;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #1f618d; /* Rich blue */
            color: #fff;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin: 0 10px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #145a7b; /* Darker blue */
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .form-container {
                width: 90%;
                padding: 20px;
            }

            table td {
                display: block;
                width: 100%;
            }

            label {
                margin-bottom: 5px;
            }

            .button-container {
                display: flex;
                justify-content: space-evenly;
            }
        }
    </style>
</head>
<body>

    <h3><u>Faculty Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertfac">
            <table>
                <tr>
                    <td><label for="fname">Enter Name</label></td>
                    <td><input type="text" id="fname" name="fname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="fgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="fgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="fgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="fdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="fdob" name="fdob" required/></td>
                </tr>
                <tr>
                    <td><label for="fdept">Select Department</label></td>
                    <td>
                        <select id="fdept" name="fdept" required>
                            <option value="">---Select---</option>
                            <option value="CSE">CSE</option>
                            <option value="AI-DS">AI-DS</option>
                            <option value="CSIT">CSIT</option>
                            <option value="MECH">Mech</option>
                            <option value="CIVIL">Civil</option>
                            <option value="EEE">EEE</option>
                            <option value="ECE">ECE</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="fsalary">Enter Salary</label></td>
                    <td><input type="number" id="fsalary" name="fsalary" step="0.01" required/></td>
                </tr>
                <tr>
                    <td><label for="flocation">Enter Location</label></td>
                    <td><input type="text" id="flocation" name="flocation" required/></td>
                </tr>
                <tr>
                    <td><label for="femail">Enter Email ID</label></td>
                    <td><input type="email" id="femail" name="femail" required/></td>
                </tr>
                <tr>
                    <td><label for="fpwd">Enter Password</label></td>
                    <td><input type="password" id="fpwd" name="fpwd" required/></td>
                </tr>
                <tr>
                    <td><label for="fcontact">Enter Contact</label></td>
                    <td><input type="number" id="fcontact" name="fcontact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
