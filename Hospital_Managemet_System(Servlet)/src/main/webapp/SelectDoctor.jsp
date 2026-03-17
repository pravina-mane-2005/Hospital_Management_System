<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Get Record</title>
</head>
<body>
		<c:if test="${not empty error}">
		   <h3 style="color:red">${error}</h3>
		</c:if>

    <h2>Get Doctor Record</h2>
    
    <form action="selectDoctor" method="post">
       Enter Id : <input type="text" name="id" required><br><br>
        <input type="submit" value="Get">
    </form>
     
     <h2>Doctor's Id  : ${id } </h2>
     <h2>Doctor's Full_name : ${name } </h2>
     <h2>Doctor's Status  : ${status } </h2>
     <h2>Doctor's Specialization  : ${specialization } </h2>
     <h2>Doctor's phone_number  : ${phone_number } </h2>
 
     
</body>
</html>
