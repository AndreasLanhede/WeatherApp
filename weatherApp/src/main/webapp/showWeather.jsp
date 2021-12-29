<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.weatherBean"%>
<%@ page import="javax.servlet.http.Cookie"%>
<%@ page import="java.text.DecimalFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show weather</title>
<link rel="stylesheet" href="css/style.css">
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
 	
	<div>	
<%
	weatherBean wBean = (weatherBean) request.getAttribute("wBean");
	//Gör om tempertaturen från kelvin till Celsius
	double C = Double.parseDouble(wBean.getTemperatureStr())-273.15;
	//Avrundar till en decimal
	DecimalFormat df = new DecimalFormat("#.#");
	
	//Tar bort sista Z på getTimeStr()
	String cutTimeString = wBean.getTimeStr().substring(0, 19);
	

	// Delar upp cutTimeString i en datum string och en tids string
	 String split[] = cutTimeString.split("[T]");
     for (String s: split)
         System.out.println(s);
	
	out.print("<h1>" + "The temperature in " + wBean.getCityStr() + " is " + df.format(C) + "°C " + "</h1>" + "<h2>" + "the local time is " + split[1] + " and the date is " + split[0] + "</h2>");
	%>


	 </div>
 	</main>

 		<footer>
            <h3>This is a good looking footer for design points.</h3>
        </footer>



	</div>
</body>
</html>








</body>
</html>