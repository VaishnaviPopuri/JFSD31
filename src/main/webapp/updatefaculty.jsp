<%@ page import="com.klef.jfsd.springboot.model.Faculty" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Faculty</title>
    <link rel="stylesheet" type="text/css" href="style/updatefaculty.css"> <!-- Include CSS for styling -->
</head>
<body>

    <!-- Display any message if available -->
    <h4 align="center" style="color:red">
        <c:out value="${message}"></c:out>
    </h4>

    <h3 style="text-align: center; margin: 30px;"><u>Update Faculty Profile</u></h3>
<div class="form-container">
    <form method="post" action="updatefaculty" enctype="multipart/form-data">
        <table>
            <!-- Faculty ID -->
            <tr>
                <td><label for="fid">Faculty ID</label></td>
                <td><input type="number" id="fid" name="fid" readonly value="${faculty.id}" required /></td>
            </tr>
            <!-- Name -->
            <tr>
                <td><label for="fname">Enter Name</label></td>
                <td><input type="text" id="fname" name="fname" value="${faculty.username}" required /></td>
            </tr>
            <!-- Gender -->
            <tr>
                <td><label>Select Gender</label></td>
                <td>
                    <label><input type="radio" name="gender" value="Male" ${faculty.gender == 'Male' ? 'checked' : ''} /> Male</label>
                    <label><input type="radio" name="gender" value="Female" ${faculty.gender == 'Female' ? 'checked' : ''} /> Female</label>
                    <label><input type="radio" name="gender" value="Other" ${faculty.gender == 'Other' ? 'checked' : ''} /> Other</label>
                </td>
            </tr>
            <!-- Email -->
            <tr>
                <td><label for="femail">Enter Email</label></td>
                <td><input type="email" id="femail" name="femail" readonly value="${faculty.email}" required /></td>
            </tr>
            <!-- Department -->
            <tr>
                <td><label for="fdept">Select Department</label></td>
                <td>
                    <select id="fdept" name="fdept" required>
                        <option value="">---Select---</option>
                        <option value="CSE" ${faculty.department == 'CSE' ? 'selected' : ''}>CSE</option>
                        <option value="ECE" ${faculty.department == 'ECE' ? 'selected' : ''}>ECE</option>
                        <option value="MECH" ${faculty.department == 'MECH' ? 'selected' : ''}>MECH</option>
                        <option value="CSIT" ${faculty.department == 'CSIT' ? 'selected' : ''}>CSIT</option>
                    </select>
                </td>
            </tr>
            <!-- Contact -->
            <tr>
                <td><label for="fcontact">Enter Contact</label></td>
                <td><input type="text" id="fcontact" name="fcontact" value="${faculty.contact}" required /></td>
            </tr>
            <!-- Password -->
            <tr>
                <td><label for="fpwd">Enter Password</label></td>
                <td><input type="password" id="fpwd" name="fpwd" value="${faculty.password}" required /></td>
            </tr>
            <!-- Image -->
            <tr>
                <td><label for="fimage">Update Image</label></td>
                <td><input type="file" id="fimage" name="fimage" accept="image/*" /></td>
            </tr>
        </table>

        <!-- Buttons -->
        <div class="button-container">
            <input type="submit" class="btn btn-update" value="Update" />
            <input type="reset" class="btn btn-clear" value="Clear" />
        </div>
    </form>
</div>
</body>
</html>
