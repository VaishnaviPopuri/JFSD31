<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="admin/login.css">
    <style> 
    
    body{
    margin: 30px;
     background-color:  #f4f6f9;
    
    }
    h3{
    text-align: center;
    font-size: 30px;
    margin-top: 50px;
    margin-bottom: 50px;
    }
    .form-container{
    height: 220px;
    width: 500px;
    border: 1px solid black; 
    border-radius: 28px;
    margin: 30px;
    padding: 30px;
    text-align: center;
    margin-left: 500px;
    }
    label{
    font-size: 23px;
    border-radius: 12px;
    margin: 10px;
    
    
    }
    
    input{
    
    font-size: 20px;
    border-radius: 12px;
    padding: 8px;
    margin: 10px;
    
    }
    #submit{
    background-color: skyblue;
    font-size: 27px;
    border-radius: 15px;
    margin: 10px;
    padding: 14px;
    }
    
    #clear{
    
    background-color: skyblue;
    font-size: 27px;
    border-radius: 15px;
    margin: 10px;
    padding: 14px;
    
    }
    
    
    </style>
</head>
<body>
  
    <h3><u>Admin Login</u></h3>
    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                 <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login" id="submit"/>
                        <input type="reset" value="Clear" id="clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>