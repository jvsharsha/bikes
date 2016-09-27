<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Deleting Supplier</h2>
  <form:form method="POST" action="delete" commandName="supplier">
      <table>
       <tr>
           <td>Supplier ID:</td>
           <td><form:input type="text" path="supId" /></td>
       </tr>
       <tr>
        <td>&nbsp;</td>
         <td><input type="submit" value="Submit"/></td>
         </tr>
   </table> 
 </form:form>
</body>
</html>