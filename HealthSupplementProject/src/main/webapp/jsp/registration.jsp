<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>simplestyle_banner</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<div id="main">
    
      <jsp:include page="header.jsp"></jsp:include>
    
   
    <div id="site_content">
      
	  
      <jsp:include page="sidebar.jsp"></jsp:include>
     
      <div id="content">
         <h2>Registration</h2>
        <!-- All the content should be goes here -->
        <form action="Registration" method="post">
        	<table style="border-collapse: separate;border-spacing: 15px 15px;">
        		<tr>
        			<td><label>Username</label>
        			</td>
        			<td><input type="text" name="username" id="username" class="search">
        			</td>
        		</tr>
        		<tr>
        			<td><label>Password</label> 
        			</td>
        			<td><input type="text" name="password" id="password" class="search">
        			</td>
        		</tr>
        		<tr>
        			<td><label>First Name</label>
        			</td>
        			<td><input type="text" name="firstname" id="firstname" class="search">
        			</td>
        		</tr>
        		<tr>
        			<td><label>Last Name</label> 
        			</td>
        			<td><input type="text" name="lastname" id="lastname" class="search">
        			</td>
        		</tr>
        		<tr>
        			<td><label>Age</label>
        			</td>
        			<td><input type="text" name="age" id="age" class="search">
        			</td>
        		</tr>
        		<tr>
        			<td><label>What do you want to do? </label> 
        			</td>
        			<td><input type="radio" name="activity" id="activity" value="Playing a sport">Play a Sport?
				<input type="radio" name="activity" id="activity" value="Exercise in Gym">Hit the Gym?
        			</td>
        		</tr>
        		<tr>
        			<td colspan="1">
        				<input type="submit" value="Register" class="search">
        			</td>
        		</tr>
        	</table>
			</form>	
      </div>
    </div>
    
    	<jsp:include page="footer.jsp"></jsp:include>
  </div>
  

</body>
</html>