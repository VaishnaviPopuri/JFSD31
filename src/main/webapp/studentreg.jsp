<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <link rel="stylesheet" href="style/signup.css">
</head>
<body>
  
  <h3 style="text-align: center;"><u>Student Registration</u></h3>
  <div class="form-container">
      <form method="post" action="addstudent">
          <table>
              <!-- Fields omitted for brevity -->
              <tr>
                  <td colspan="2" class="button-container">
                      <input type="submit" value="Register"/>
                      <input type="reset" value="Clear"/>
                  </td>
              </tr>
          </table>
      </form>
      <p style="color:red;text-align:center;">
          <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
      </p>
  </div>
</body>
</html>
