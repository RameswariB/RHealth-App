<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
         <!-- All the content should be goes here -->
        <h2>Login</h2>
        <p>
        	<c:if test="${requestScope.error !=null} }">
        		<h2>
        		<fmt:message key="label.header.orders" bundle="${message}"></fmt:message>
        		</h2>
        	</c:if>
        </p>
        <form action="login" method="post">
        	<table style="border-collapse: separate;border-spacing: 15px 15px;">
        		<tr>
        		<td><label>Username</label></td>
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
      </div>
    </div>
    
    	<jsp:include page="footer.jsp"></jsp:include>
  </div>
  
</body>
</html>