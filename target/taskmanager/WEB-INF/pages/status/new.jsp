<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>TaskManager</title>
</head>
<body>

<h2>Status</h2>
	<sf:form modelAttribute="status" method="POST" action="new">
	   <table>
	    <tr>
	        <td><sf:label path="name">Name</sf:label></td>
	        <td>
	        	<sf:input path="name" />
	        	<sf:errors path="name"/>
	        </td>
	    </tr>
	    <tr>
	        <td colspan="2">
	            <input type="submit" value="Submit"/>
	        </td>
	    </tr>
		</table>  
		
	</sf:form>
</body>
</html>