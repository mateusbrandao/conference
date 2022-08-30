<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro</title>
</head>
<body>
	<spring:message code="title" var="title" />
	<h1>${title}</h1>
	<form:form modelAttribute="registration">
		<table>
			<tr>
				<td>
					<spring:message code="name" />
				</td>
				<td>
					<form:input path="name"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<spring:message code="save.changes" var="changes"/>
					<input type="submit" value = "${changes}"/>
				</td>
			</tr>
			
		</table>
	</form:form>
</body>
</html>