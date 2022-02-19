<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.rHealth.beans.Product"%>
<%@page import="java.util.List" buffer="8kb" isELIgnored="false"
	session="true" contentType="text/html; charset=ISO-8859-1"
 isThreadSafe="true" isErrorPage="false"
	errorPage="error.jsp"%>
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
        <!-- All the content should be goes here -->
        <h2>Search</h2>
        <form action="search" method="post">
        	<table style="border-collapse: separate;border-spacing: 15px 15px;">
        		<tr>
        		<td><label>Enter text</label></td>
        		<td> <input type="text" name="searchtext"
					id="searchtext" class="search"></td>
        		</tr>
        		<tr>
        		<td colspan="2"><input
					type="submit" value="Search" class="search"></td>
        		
        		</tr>
        	</table>
				<br /><br />  <br /><br /> 
			</form>
			
		<section id="products" class="section">
		<div class="container">
			<h2 class="headline">Products</h2>
			<p>RHealth is <em>dedicated to creating</em> eco-friendly, high-quality, nutrient-rich, nutritional products that <em>enhance active lifestyles</em>. We <a href="#guarantee">guarantee</a> it. Take a look at some of our products.</p>
  
			<%
				if (session.getAttribute("cart") != null) {
			%>
			<span id="size"
				title="<%=(ArrayList) session.getAttribute("cart")%>">Items
				in Cart: <%=((ArrayList) session.getAttribute("cart")).size()%></span>
			<%
				} else {
			%>
			<span id="size">Items in Cart: 0</span>
			<%
				}
			%>

		</div>


		<%--fetch he products from the rqq object --%>
		<%-- iterate the list and generate the display for every product --%>


		<div class="productContainer">

			<%
				List<Product> products = (ArrayList) request.getAttribute("products");
				Iterator<Product> iterator = products.iterator();
				while (iterator.hasNext()) {
					Product product = iterator.next();
			%>
			<form method="get" action="addProducts">

				<div class="productContainerItem">
					<img id="pic3" src="<%=product.getProductImgPath()%>"> <input
						type="text" name="product" value="<%=product.getProductName()%>"><br />
					<button>Add to Cart</button>
				</div>
			</form>
			<%
				}
			%>
		</div>
	</section>
      </div>
    </div>
    
    	<jsp:include page="footer.jsp"></jsp:include>
  </div>
  

</body>
</html>