<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
			<div class="col-md-10" style="margin: 90px 0 15px 0;">
				<h3>Book Room</h3>
			</div>		
						
			<div class="col-md-10">			
				<form:form action="saveBooking" modelAttribute="booking" method="POST">

					<%-- <div class="form-group col-md-8">
						<label for="roomNumber1">Room Number:</label>
						<form:input type="text" path="roomNumber" id="roomNumber1"
							class="form-control" placeholder="Enter room number " />
					</div> --%>

					
					<!-- customer booking...-->
					
					<div class="form-group col-md-8">
						<label for="booking1">Customer</label> 
						<form:select path="customer.id" class="form-control" id="booking1">
							<c:forEach var="reservation" items="${customers}">
								<form:option value="${reservation.id}">
									${reservation.firstName}
								</form:option>
							</c:forEach>							
						</form:select>
					</div>
					
					<!-- room type booking...-->					
					
					<div class="form-group col-md-8">
						<label for="roomType1">Room Type</label> 
						<form:select path="room.roomId" class="form-control" id="roomType1">
							<c:forEach var="rm" items="${rooms}">
								<form:option value="${rm.roomId}">
									${rm.roomType.roomTypeName}, #${rm.roomNumber}
								</form:option>
							</c:forEach>							
						</form:select>
					</div>		
																					
								
					<div class="col-md-10">
						<button type="submit" class="btn btn-primary" style="margin-top:10px;">Save</button>											
					</div>
				</form:form>
				<div class="col-md-10" style="margin-top:50px;">
				<p>
					<a href="${pageContext.request.contextPath}/booking/list">Back to List</a>
				</p>
			</div>							
			</div>
			
		</div>	
	</div>


</body>
</html>