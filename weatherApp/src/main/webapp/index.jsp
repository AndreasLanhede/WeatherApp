<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="javax.servlet.http.Cookie"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Weather Search</title>
</head>
<body>
	<div class="wrapper">
 		<header>
            <div><img src="img/weather100.png" alt="Nice looking picture of the sun and a cloud"></div>
            <div>
                <h1>Weather Search</h1>
            </div>
        </header>
		 <nav>
            <a href="index.jsp">Main Page</a>
            <div class="dropdown">
                <button class="dropbtn">resources</button>
                <div class="dropdown-content">
                    <a href="https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes">Country Codes</a>
                    <a href="https://openweathermap.org/">Open weather map</a>
                </div>
            </div>
        </nav>
		

	<main>
 		<form action="WServlet" method="get">  
    		City (only use letters a-z):  <input type="text" name="city"/><br/>  
    		Country code (info in resources):  <input type="text" name="country"/><br/>  
    		<input type="submit" value="Search weather"/>
    	</form>  

	<div>	
<%
//Kollar om det finns en cookie och skriver ut den i sådana fall
	Cookie[] cookies = request.getCookies();
	if( cookies != null ) {
    String ckcity = cookies[0].getValue().toString();
    String ckcountry = cookies[1].getValue().toString();

    out.print("<h1>" + "Earlier search: " + "</h1>");
    // Skriver ut som en länk så man kan snabbsöka p tidigare sökning
    out.print("<a href=\"http://localhost:8080/weatherApp/WServlet?city="+ ckcity + "&country="+ ckcountry + "\">" + "<h2>" + ckcity + "</h2>"  + "</a>");}
 else{
    out.println("<h2>No cookie of earlier search found</h2>");
 }
%>
	 </div>
 	</main>

 		<footer>
            <h3>This is a good looking footer for design points.</h3>
        </footer>



	</div>
</body>
</html>





