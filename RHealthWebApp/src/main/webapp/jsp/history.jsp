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
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">R<span class="logo_colour">Health</span></a></h1>
          <h2>One stop destination.</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="index.jsp">Home</a></li>
          <li><a href="history.jsp">History</a></li>
          <li><a href="products.jsp">Products</a></li>
          <li><a href="login">login</a></li>
          <li><a href="search.jsp">Search</a></li>
          <li><a href="registration.jsp">new user?</a></li>
          <li><a href="https://www.linkedin.com/in/rameswari-bhoi-50b0322b/">linkedin</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      
	  <div id="sidebar_container">
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <!-- insert your sidebar items here -->
            <h3>Latest News</h3>
            <h4>New Website Launched</h4>
            <h5>February 1st, 2021</h5>
            <p>2021 sees the redesign of our website. Take a look around and let us know what you think.<br /><a href="#">Read more</a></p>
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Useful Links</h3>
            <ul>
              <li><a href="#">link 1</a></li>
              <li><a href="#">link 2</a></li>
              <li><a href="#">link 3</a></li>
              <li><a href="#">link 4</a></li>
            </ul>
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Search</h3>
            <form method="post" action="#" id="search_form">
              <p>
                <input class="search" type="text" name="search_field" value="Enter keywords....." />
                <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="style/search.png" alt="Search" title="Search" />
              </p>
            </form>
          </div>
          <div class="sidebar_base"></div>
        </div>
      </div>
      <div id="content">
        <!-- All the content should be goes here -->
        <h2>Login</h2>
        <p>These are the different heading formats:</p>
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      <p><a href="index.jsp">Home</a> | <a href="history.jsp">History</a> | <a href="product.jsp">Products</a> | <a href="login.jsp">login</a> | <a href="search.jsp">search</a>| <a href="registration.jsp">new user?</a>| <a href="https://www.linkedin.com/in/rameswari-bhoi-50b0322b/">linkedin</a></p>
      <p>Copyright &copy; R Health</p>
    </div>
  </div>
</body>
</html>