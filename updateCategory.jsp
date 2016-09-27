<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding</title>
</head>
<body>
	<center>
		<h2>Updating Category</h2>
		<form:form method="POST" action="updatecat" commandName="category">
			<table>
			<tr>
					<td>Category Id:</td>
					<td><form:input type="text" path="catid" /></td>
				</tr>
				<tr>
					<td>Category Name:</td>
					<td><form:input type="text" path="name" /></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><form:input type="text" path="description" /></td>
				</tr>

				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</table>
		</form:form>
	</center>
</body>
</html>