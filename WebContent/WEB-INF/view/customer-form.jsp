<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
		
		<style>
    	.footer {
    		position: absolute;
    		bottom:0;
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
				<h3>Add Customer </h3>
			</div>
										
			<div class="col-md-10">			
				<form:form action="saveCustomer" modelAttribute="customer" method="POST">					
					
					<div class="form-group col-md-8">
						<label for="customerFn">First Name</label>
						<form:input type="text" path="firstName" id="customerFn"
							class="form-control" placeholder="Enter first name" />														
					</div>
					
					<div class="form-group col-md-8">
						<label for="customerLn">Last Name</label>
						<form:input type="text" path="lastName" id="customerLn"
							class="form-control" placeholder="Enter last name" />
					</div>
					
					<div class="form-group col-md-8">
						<label for="customerEmail">Email</label>
						<form:input type="email" path="email" id="customerEmail"
							class="form-control" placeholder="Enter email address" />
					</div>

					<div class="form-group col-md-8">
						<label for="customerType1">Customer Type</label> 
						<form:select path="customerType.customerTypeId" class="form-control" id="customerType1">
							<c:forEach var="cType" items="${customerTypes}">
								<form:option value="${cType.customerTypeId}">
									${cType.customerTypeName}
								</form:option>
							</c:forEach>							
						</form:select>
					</div>

					<div class='col-sm-6'>
					<label for="datetimepicker1">Check-in date</label> 
						<div class="form-group">
							<div class='input-group date' id='datetimepicker1'>
								<form:input path="checkInDate" type='text' class="form-control" /> <span
									class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
						</div>
					</div>
					
					<div class='col-sm-6'>
					<label for="datetimepicker2">Check-out date</label> 
						<div class="form-group">
							<div class='input-group date' id='datetimepicker2'>
								<form:input path="checkOutDate" type='text' class="form-control" /> <span
									class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>
						</div>
					</div>


					<div class="col-md-10">
						<button type="submit" class="btn btn-primary" style="margin-top:10px;">Save</button>											
					</div>
				</form:form>						
			</div>	
			<div class="col-md-10" style="margin-top:50px;">
				<p>
					<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
				</p>
			</div>				
		</div>				
	</div>
		
	<footer class="footer">
		<div class="container">
			<p class="text-muted credits">&copy; ${year} CRUD application</p>
		</div>
	</footer>
	
	<script type="text/javascript">
	 $(document).ready(function(){
		 $(function () {
			 var tomorrow = new Date();
			 tomorrow.setDate(tomorrow.getDate() + 1);
         	$("#datetimepicker1").datetimepicker({
         		format: 'DD-MM-YYYY HH:mm:ss',
         		minDate: tomorrow
         	});
         	$("#datetimepicker2").datetimepicker({
         		format: 'DD-MM-YYYY HH:mm:ss',
         		minDate: tomorrow
         	});
		 });
     });
		
	</script>
	
</body>
</html>