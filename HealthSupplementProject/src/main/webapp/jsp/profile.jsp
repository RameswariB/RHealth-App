<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Calendar"%>
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
    
      <jsp:include page="header_inside.jsp"></jsp:include>
    
   
    <div id="site_content">
      
	  
      <jsp:include page="sidebar.jsp"></jsp:include>
     
      <div id="content">
         <!-- All the content should be goes here -->
        <!-- All the content should be goes here -->
        <h2>Profile page</h2>
        
	
	<jsp:useBean id="user" scope="request" class="com.rHealth.beans.User"></jsp:useBean>
	
	<section id="profile" class="section">
		<div class="container">
			<h2 class="headline">My Profile</h2>
			<table id="profile">

				<tr>
					<td>User Name</td>
					<td><jsp:getProperty property="userName" name="user" /></td>
				</tr>
				<tr>
					<td>First Name</td>
					<td><jsp:getProperty property="firstName" name="user" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><jsp:getProperty property="lastName" name="user" /></td>
				</tr>
				<tr>
					<td>Age</td>
					<td>${user.age}</td>
				</tr>
				<tr>
					<td>Interested in</td>
					<td>${user.activity}</td>
				</tr>

			</table>
		</div>
		<div class="container">
			<h2 class="headline">Weight summary</h2>
			<table id="profile">

				<tr>
					<td>January</td>
					<td>${requestScope.weightSummary["January"]}</td>
				</tr>
				<tr>
					<td>February</td>
					<td>${requestScope.weightSummary["February"]}</td>
				</tr>
				<tr>
					<td>March</td>
					<td>${requestScope.weightSummary["March"]}</td>
				</tr>
				

			</table>
		</div>
	</section>
       
      </div>
    </div>
    
    	<jsp:include page="footer.jsp"></jsp:include>
  </div>
  

</body>
</html>