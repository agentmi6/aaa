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
			<div class="col-md-12" style="margin: 90px 0 15px 0;">
				<h3>Book a room from the table</h3>
			</div>		
			
			<div class="col-md-12" style="margin: 20px 0 15px 0;">
				<h5 class="text-danger"> <span class="glyphicon glyphicon-info-sign"></span> Unavailable rooms = Booked!</h5>						
			</div>	

			<!--  table with room buttons -->	
				
			<div class="col-md-12">		
			<div class="row">
				<div class="roomTable col-md-12 col-sm-12">
				<h4><span><img src="${pageContext.request.contextPath}\resources\images\single.png" width="40px" height="40px"></span> Single rooms</h4>		
					<c:forEach var="room" items="${rooms}">
						<c:choose>
							<c:when test="${room.roomType.roomTypeId==1}">
								<c:choose>
								<c:when test="${room.roomAvailable==true}">							
									<div class="col-md-2 col-sm-4 col-xs-5">
										<button id="${room.roomId}" data-price="${room.roomType.roomTypePrice}" class="btn btn-lg btn-default roomBtn">
											Room ${room.roomId}
										</button>
									</div>									
								</c:when>
															
								<c:otherwise>
									<div class="col-md-2 col-sm-4 col-xs-5">
										<button id="${room.roomId}"	class="btn btn-lg roomBtn btn-danger disabled" disabled="disabled">											
											Booked!
										</button>
									</div>
								</c:otherwise>	
								</c:choose>			
							</c:when>									
						</c:choose>
					</c:forEach>
				</div>
			</div>	
			</div>
				
				<hr class="col-md-12" />
				
			<div class="col-md-12">		
			<div class="row">	
				<div class="roomTable col-md-12 col-sm-12">
					<h4><span><img src="${pageContext.request.contextPath}\resources\images\double.png" width="40px" height="40px"></span> Double rooms</h4>		
					<c:forEach var="room" items="${rooms}">
						<c:choose>
							<c:when test="${room.roomType.roomTypeId==2}">
								<c:choose>
								<c:when test="${room.roomAvailable==true}">							
									<div class="col-md-2 col-sm-4 col-xs-5">
										<button id="${room.roomId}" data-price="${room.roomType.roomTypePrice}" class="btn btn-lg btn-default roomBtn">
											Room ${room.roomId}
										</button>
									</div>									
								</c:when>
															
								<c:otherwise>
									<div class="col-md-2 col-sm-4 col-xs-5">
										<button id="${room.roomId}" class="btn btn-lg roomBtn btn-danger disabled" disabled="disabled">
											Booked!
										</button>
									</div>
								</c:otherwise>	
								</c:choose>			
							</c:when>									
						</c:choose>
					</c:forEach>
				</div>	
			</div>
			</div>
			
				<hr class="col-md-12" />
				
			<div class="col-md-12">
				
			<div class="row">	
				<div class="roomTable col-md-12 col-sm-12">
					<h4><span><img src="${pageContext.request.contextPath}\resources\images\apartment.png" width="40px" height="40px"></span> Apartments</h4>		
					<c:forEach var="room" items="${rooms}">
						<c:choose>
							<c:when test="${room.roomType.roomTypeId==3}">
								<c:choose>
								<c:when test="${room.roomAvailable==true}">							
									<div class="col-md-2 col-sm-4 col-xs-5">
										<button id="${room.roomId}" data-price="${room.roomType.roomTypePrice}" class="btn btn-lg btn-default roomBtn">
											Room ${room.roomId}
										</button>
									</div>									
								</c:when>
															
								<c:otherwise>
									<div class="col-md-2 col-sm-4 col-xs-5">
										<button id="${room.roomId}"	class="btn btn-lg roomBtn btn-danger disabled" disabled="disabled">
										Booked!
										</button>
									</div>
								</c:otherwise>	
								</c:choose>			
							</c:when>									
						</c:choose>
					</c:forEach>
				</div>
			</div>
			</div>				

			<div class="col-md-12" style="margin-top:30px;">			
				<form:form action="saveTableBooking" modelAttribute="booking" method="POST">
									
				<!--  readonly input for booked room -->

					<div class="form-group col-md-8">
						<label for="roomNumber">Booked room #</label>
						<form:input type="text" path="room.roomId" id="roomNumber" class="form-control rNumber" readonly="true"/>
					</div>
					
						<!--  readonly input for room price -->

					<div class="form-group col-md-8">
						<label for="roomNumber">Room price</label>
						<form:input type="text" path="room.roomType.roomTypePrice" id="roomPrice" class="form-control rNumber" readonly="true"/>
					</div>


					<!-- customer booking...-->
					
					<div class="form-group col-md-8 col-xs-10">
						<label for="booking1">Customer</label> 
						<form:select path="customer.id" class="form-control" id="booking1">
							<c:forEach var="reservation" items="${customers}">
								<form:option value="${reservation.id}">
									${reservation.firstName}
								</form:option>
							</c:forEach>							
						</form:select>
					</div>					
								
					<div class="col-md-10 col-xs-10 bookBtns">
						<button type="submit" class="btn btn-primary" style='margin-top:10px;'>Save</button>
					</div>
				</form:form>
				<div class="col-md-10 col-xs-10" style="margin-top:50px;">
				<p>
					<a href="${pageContext.request.contextPath}/booking/list">Back to List</a>
				</p>
			</div>							
			</div>			
		</div>	
	</div>

<script type="text/javascript">
	$(document).ready(function(){
		 $(".roomBtn").on("click", function(){
			 	var $selected = $(this);
			    var roomID = $(this).attr("id");
			    var roomPrice = $(this).attr("class")
			    var room_price = $(this).attr("data-price");
			    /*var room_price = parseInt(($(this).attr('class').split(' ').pop()));*/
			    $(this).removeClass("btn-default").addClass("btn-warning disabled").attr("disabled",true).text("ROOM " + roomID);
			    $(".roomBtn").attr("disabled", true);
			    $("#roomNumber").attr("value",roomID);
			    $("#roomPrice").attr("value", room_price);
			    
			    var $reset = "<button type='button' class='btn btn-info resetBtn' style='margin:10px 0px 0px 20px;'>Reset</button>";
			    $(".bookBtns").append($reset);
		 		 
		 		$(".resetBtn").on("click", function(){		 		
			    	if($(".roomTable > div").find("button.btn-warning").length != 0){
			 			 $(".bookBtns").children(".resetBtn").remove();
			 			 $(".roomBtn").not(".btn-danger").removeClass("btn-warning disabled").addClass("btn-default").attr("disabled", false);
			 			 $("#roomNumber").attr("value",0);
						 $("#roomPrice").attr("value", 0);
			 		}
			 		
		 		});		    			    		 		 		 
		 });			 		 
	});
</script>

</body>
</html>