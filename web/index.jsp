<!DOCTYPE html>

<html>
    <head>
	<link rel="stylesheet" type="text/css" href="style.css">
    <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="68style.css">
    </head>
    <body>
	<jsp:include page="menu.html" />  
	
	<jsp:include page="gall1.html" />  
	
	<div class="login" style="width: 200; float:center"><fieldset>
		<legend>Login Panel</legend>
		<form method="post" action="adminlogin.jsp">
		<label>User Name</label> <input type="text" name="user" placeholder="Username" /></br>
		</br>
		<label>Password &nbsp &nbsp</label><input type="password" name="pass" placeholder="Password" /></br>
		</br>
		<input type="submit" value="Login" style="float:center;" />&nbsp <input type="reset" style="float:center;" value="Reset" />&nbsp 
		</form>
		<hr>
		<a href="reset.jsp" >Forgot Password</a> &nbsp If not register <a href="register.html" >Register Here </a>
		</fieldset>
</div>
</div>
	<jsp:include page="footer.html" />  
    </body>
</html>
