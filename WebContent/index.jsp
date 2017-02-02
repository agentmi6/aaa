<%-- <% response.sendRedirect("customer/list"); %> --%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Crud</title>
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-paper.min.css">


<!-- jquery -->
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>
    
    <style>
    	.footer {
    		position: absolute;
    		bottom: 0;
    		width: 100%;
    		height: 60px;
    		background-color: #f5f5f5;
    	}
    	.credits {
    		margin-top: 20px !important;    		
    	}
    </style>

</head>
<body>
    <div class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>   
                <a href="${pageContext.request.contextPath}\" class="navbar-brand">CrudApp</a>            
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath}\customer\list">Customers</a></li>
                    <li><a href="${pageContext.request.contextPath}\customerType\list">CustomerTypes</a></li>
                    <li><a href="${pageContext.request.contextPath}\roomType\list">RoomTypes</a></li>
                    <li><a href="${pageContext.request.contextPath}\room\list">Rooms</a></li>   
                    <li><a href="${pageContext.request.contextPath}\booking\list">Bookings</a></li>       
                    <li><a href="${pageContext.request.contextPath}\booking\addTableBooking">TableBooking</a></li>                                 
                </ul> 
                <ul class="nav navbar-nav navbar-right">
                	<li><a href="#">Login</a></li>
                	<li><a href="#">Register</a></li>
                </ul>             
            </div>
        </div>
    </div>
    <div class="container" style="margin-top:80px;">      
        <div class="row">
            <h3>Home page for crud app</h3>
            <img src="${pageContext.request.contextPath}/resources/images/noJavaNoJar.jpg" style="margin-top:50px;"/>
        </div>                                 
    </div>
	<footer class="footer">
		<div class="container">
			<p class="text-muted credits">&copy; ${year} CRUD application</p>
		</div>
	</footer>
</body>
</html>