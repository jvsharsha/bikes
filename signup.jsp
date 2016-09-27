<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
<title>Registration</title>

<style>
 body{
 background-image:url('http://media1.santabanta.com/full1/Bikes/Harley%20Davidson/harley-davidson-33a.jpg');
 background-size:cover;
 background-font:white;
 }
 </style>
</head>


<body>
<font color="white">	
<h1>Registration</h1>
<p>ALREADY REGISTERED? <a href= "signin">SIGN IN</a></p>
<a href="${flowExecutionUrl}&_eventId_home">Home</a>

		<form:form commandName="userDetails">
			<table>
			
				
<tr><td> User Id</td><td><form:input type="text" path="id" /></td></tr>
<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 
			
<tr><td>User Name</td><td><form:input type="text" path="name"/></td></tr>
 <!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 

<tr><td>
Enter Password</td><td><form:input type="password" path="password"  /></td></tr>
<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 

<tr><td>
Confirmed Password</td><td><form:input type="password" path="confirmpassword"  /></td></tr>
<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('cpassword')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 
				<tr><td>
Email Id</td><td><form:input type="email" path="emailid" /></td></tr>
<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('emailid')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 

				

<tr><td>
Contact</td><td><form:input type="text" path="contact" /></td></tr>
<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('contact')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 


<tr><td>
Address</td><td> <form:input type="text" path="address" /></td></tr>

<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach> 

<tr><td>
<input type="CHECKBOX" NAME="OFFER" CHECKED>I agree to receive information about exciting offers
</td></tr>
</table>

<br /><br />

<div class="center">
<input type="submit" name="_eventId_submit" value="submit" ></div>
</form:form>
	</div>
	</font>
</body>
</html>
