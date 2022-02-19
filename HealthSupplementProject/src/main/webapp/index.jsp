<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="login" method="post">
        	<table style="border-collapse: separate;border-spacing: 15px 15px;">
        		<tr>
        		<td><label>User Name</label></td>
        		<td> <input type="text" name="username"
					id="username" class="search"></td>
        		</tr>
        		<tr>
        		<td><label>Password</label></td>
        		<td><input
					type="password" name="password" id="password" class="search"></td>
        		</tr>
        		<tr>
        		<td colspan="2"><input
					type="submit" value="Login" class="search"></td>
        		
        		</tr>
        	</table>
				<br /><br />  <br /><br /> 
			</form>
</body>
</html>