<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
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

			<div class="col-md-10" style="margin:90px 0px 50px 0px;">
				<h3>Add Room Type</h3>
			</div>
			
		
			<div class="col-md-10">
				<form:form action="saveRoomType" modelAttribute="roomType" method="POST">
		
					<div class="form-group col-md-8">
						<label for="roomTypeName1">Room Type Name:</label> 
						<form:input type="text" path="roomTypeName" id="roomTypeName1" class="form-control"  placeholder="Enter room type name "/> 
					</div>		
					<div class="form-group col-md-8">
						<label for="roomTypePrice1">Room Type Price:</label> 
						<form:input type="text" path="roomTypePrice" id="roomTypePrice1" class="form-control"  placeholder="Enter room type price "/> 
					</div>	
						
					<button type="submit" class="btn btn-primary" style="margin-top:10px;">Save</button>						
				</form:form>
			</div>
			
			<div class="col-md-10" style="margin-top:50px;">
				<p>
					<a href="${pageContext.request.contextPath}/roomType/list">Back to List</a>
				</p>
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