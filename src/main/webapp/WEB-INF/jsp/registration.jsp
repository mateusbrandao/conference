<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Registro</title>
	<style>
		.error{
			color: #ff0000;
		}
		
		.errorblock{
			color: #000;
			background-color: #ffEEEE;
			border: 3px solid #ff0000;
			padding: 8px;
			margin: 16px;
		}
		
	</style>
</head>
<body>
	<spring:message code="title" var="title" />
	<h1>${title}</h1>
	<form:form modelAttribute="registration">
		<form:errors path="*" cssClass="errorblock" element="div" />
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