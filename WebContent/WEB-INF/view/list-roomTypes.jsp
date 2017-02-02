<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
		crossorigin="anonymous">
</script>
<link type="text/css" 
		rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/bootstrap-paper.min.css" />
		
		<link type="text/css" 
		rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/style.css" />
		
		
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
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
	
	<div class="container">
		<div class="row">		
			<div class="col-md-10" style="margin: 90px 0px 15px 0px;">
				<h3>Add Room Types</h3>
			</div>
					
					
			<div class="col-md-10" style="margin: 20px 0px 15px 0px;">
				<input type="button" 
					   value="Add Room Type"
					   onclick="window.location.href='addRoomType'; return false;"
					   class="btn btn-primary"
				/>
			</div>
			
			
			
			<div class="col-md-10">			
				<table class="table table-bordered">
					<thead>
						<tr>							
							<th>Room Type Name</th>
							<th>Room Type Price</th>							
						</tr>
					</thead>					
					<tbody>
						<c:forEach var="roomType" items="${roomTypes}"> 
							<tr>
								<td>${roomType.roomTypeName}</td>
								<td>${roomType.roomTypePrice}</td>															
							</tr>
						</c:forEach>
					</tbody>									
				</table>				
			</div>
			
		</div>	
	</div>
	
	<footer class="footer">
		<div class="container">
			<p class="text-muted credits">&copy; ${year} CRUD application</p>
		</div>
	</footer>


</body>
</html>