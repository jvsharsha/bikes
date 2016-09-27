<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



<style>
table, th , td  {
  border: 1px solid grey;
  border-collapse: collapse;
  padding: 5px;
}
table tr:nth-child(odd) {
  background-color: #f1f1f1;
}
table tr:nth-child(even) {
  background-color: #ffffff;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>


</head>
<body>

<form:form method="POST" action="addprod" commandName="product">
      <table>
      
       <tr>
           <td>Product Id:</td>
           <td><form:input type="text" path="id" /></td>
       </tr>
       <tr>
           <td>Product Name:</td>
           <td><form:input type="text" path="name" /></td>
       </tr>
       <tr>
           <td>Description:</td>
           <td><form:input path="description" type="text" /></td>
       </tr>
       <tr>
           <td>Price:</td>
           <td><form:input path="price" type="number" /></td>
       </tr>
       <tr>
           <td>Image</td>
           <td><form:input type="file" path="image" /></td>
       </tr>
       
       
       
       <%-- <tr>
           <td>Quantity:</td>
           <td><form:input path="quantity" type="number" /></td>
       </tr>
        --%>
       
       <tr>
        
         <td><input type="submit" value="Submit"/></td>
         <td><input type="submit" value="Reset"/></td>
         </tr>   
</table>
</form:form>


</body>
</html>