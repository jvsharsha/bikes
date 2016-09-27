<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<style>
div.ex {
	text-align: right width:300px;
	padding: 10px;
	border: 5px solid grey;
	margin: 0px
}
</style>
<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<form:form modelAttribute="userDetails">
				<form:label path="id">User ID :</form:label>${userdetails.id}
					<br />
				<br />
				<form:label path="name">User Name:</form:label>${userdetails.name}
					<br />
				<br />
				<form:label path="Password">Password :</form:label>${userdetails.password}
					<br />
                    <br />

				<form:label path="emailid">Email Id:</form:label>${userdetails.emailid}
					<br />
				<br />
				<form:label path="contact">Contact:</form:label>${userdetails.contact}
					<br />
				<br />
				<form:label path="address">Address :</form:label>${userdetails.address}
					<br />
				<br />
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</form:form>
		</fieldset>
	


	</div>
</body>
</html>


