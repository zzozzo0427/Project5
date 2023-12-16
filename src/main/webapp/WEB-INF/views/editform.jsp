<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
</head>
<body>
<%--<%--%>
<%--	BoardDAO boardDAO = new BoardDAO();--%>
<%--	String id=request.getParameter("id");--%>
<%--	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));--%>
<%--%>--%>

<h1>Edit Form</h1>
<form:form modelAttribute="u" method="post" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>Category:</td><td><form:input path="category"/></td></tr>
		<tr><td>Brand:</td><td><form:input path="brand"/></td></tr>
		<tr><td>Product:</td><td><form:input path="product"/></td></tr>
		<tr><td>Title:</td><td><form:input path="title"/></td></tr>
		<tr><td>Content:</td><td><form:textarea path="content" cols="50" rows="5"/></td></tr>
		<tr><td>Rating:</td><td><form:input path="rating"/></td></tr>
		<tr><td>Writer:</td><td><form:input path="writer"/></td></tr>

		<tr>
			<td colspan="2"><input type="submit" value="Edit Post"/>
				<input type="button" value="Cancel" onclick="history.back()"/></td>
		</tr>
	</table>
</form:form>


</body>
</html>