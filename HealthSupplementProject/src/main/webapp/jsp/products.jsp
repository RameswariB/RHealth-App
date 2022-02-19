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
            <section id="products" class="section">
 
  <div class="container">
    <h2 class="headline">Products</h2>
    <p>RHealth is <em>dedicated to creating</em> eco-friendly, high-quality, nutrient-rich, nutritional products that <em>enhance active lifestyles</em>. We <a href="#guarantee">guarantee</a> it. Take a look at some of our products.</p>
  </div><!-- container -->
  <ul class="product-list">
  <table>
  	<tr>
  		<td class="product-item">
  			<li >
		      <img class="product-image" src="./images/products/cod-fish-oil-capsule.jpg" alt="Cod fish oil capsules - Product Photo">
		      <h2 class="product-name">Cod fish oil capsules</h2>
		    </li>
  		</td>
  		<td class="product-item">
		    <li>
		      <img class="product-image" src="images/products/macro-oil-capsules.jpg" alt="Macro oil Capsules - Product Photo">
		      <h2 class="product-name">Macro oil Capsules</h2>
		    </li>
  		</td>
  	</tr>
  	
  	<tr>
  		<td class="product-item">
  			<li>
		      <img class="product-image" src="images/products/omega.jpg" alt="Omega fatty acid Capsules - Product Photo">
		      <h2 class="product-name">Omega fatty acid Capsules</h2>
		    </li>
  		</td>
  		
  		<td class="product-item">
  		 	<li>
		      <img class="product-image" src="images/products/protein-powder.jpg" alt="Protein powder - Product Photo">
		      <h2 class="product-name">Protein powder</h2>
		    </li>
  		</td>
  	</tr>
  	
  	<tr>
  		<td class="product-item">
		    <li>
		      <img class="product-image" src="images/products/selenium.jpg" alt="Selenium Capsules - Product Photo">
		      <h2 class="product-name">Selenium Capsules </h2>
		    </li>
  		</td>
  		
  		<td class="product-item">
		    <li>
		      <img class="product-image" src="images/products/spilled.jpg" alt="spilled - Product Photo">
		      <h2 class="product-name">spilled</h2>
		    </li>
  		</td>
  	</tr>
  	
  	<tr>
  		<td class="product-item">
		    <li>
		      <img class="product-image" src="images/products/vitamin.jpg" alt="Vitamin - Product Photo">
		      <h2 class="product-name">Vitamin </h2>
		    </li>
  		</td>
  		
  		<td class="product-item">
  			<li>
		      <img class="product-image" src="images/products/supplements.jpg" alt="Daily Supplements - Product Photo">
		      <h2 class="product-name">Flaxseed Oil Vitamin</h2>
		    </li>
  		</td>
  	</tr>
  	
  	<tr>
  		<td class="product-item">
  			<li>
		      <img class="product-image" src="images/products/mixed-fruit.jpg" alt="mixed fruit - Product Photo">
		      <h2 class="product-name">Mixed fruit bar</h2>
		    </li>
  		</td>
  		
  		<td class="product-item">
		  	<li>
		      <img class="product-image" src="images/products/muesli-bar.jpg" alt="Muesli bar - Product Photo">
		      <h2 class="product-name">Muesli bar</h2>
		    </li>
  		</td>
  	</tr>
  	<tr>
  		<td class="product-item">
		  	<li>
		      <img class="product-image" src="images/products/protein-bar.jpg" alt="Protein bar - Product Photo">
		      <h2 class="product-name">Protein bar</h2>
		    </li>
  		</td>
  		
  		<td class="product-item">
		    <li>
		      <img class="product-image" src="images/products/snack-bar-nuts-seeds.jpg" alt="Nuts and seeds bar - Product Photo">
		      <h2 class="product-name">Nuts and seeds bar</h2>
		    </li>
  		</td>
  	</tr>
  </table>
    
    
   
    
    
    
    
    
  </ul><!-- product-list -->
</section>
      </div>
    </div>
    
    	<jsp:include page="footer.jsp"></jsp:include>
  </div>
  
	



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
          <li class="selected"><a href="index">Home</a></li>
          <li><a href="contact">Contact</a></li>
          <li><a href="products">Products</a></li>
          <li><a href="login">login</a></li>
          <li><a href="search">Search</a></li>
          <li><a href="registration">new user?</a></li>
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
 
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      <p><a href="index">Home</a> | <a href="contact">Contact</a> | <a href="product">Products</a> | <a href="login">login</a> | <a href="search">search</a>| <a href="registration">new user?</a>| <a href="https://www.linkedin.com/in/rameswari-bhoi-50b0322b/">linkedin</a></p>
      <p>Copyright &copy; R Health</p>
    </div>
  </div>
</body>
</html>