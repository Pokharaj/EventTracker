<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendee</title>

<style>
	.error {
		color: #ff0000;
	}
	
	.errorblock {
		color: #000;
		backgroud-color: #ffEEEE;
		border: 3px solid #ff0000;
		padding: 8px;
		margin: 16px;
	}
</style>

</head>
<body>
	<a href="?language=en">
		English
	</a>
	<a href="?language=es">
		Spanish
	</a>
	<h1>Add Attendee</h1>
	
	<form:form modelAttribute="attendee">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<lable for="txtInput1"><spring:message code="attendee.name" /></lable>
		<form:input path="name" cssErrorClass="error" />
		<form:errors path="name" cssClass="error" />
		<br>
		<lable for="txtInput2"><spring:message code="attendee.email" /> </lable>
		<form:input path="email" cssErrorClass="error" />
		<form:errors path="email" cssClass="error" />
		<br>
		<lable for="txtInput3"><spring:message code="attendee.phone" /> </lable>
		<form:input path="phone" cssErrorClass="error" />
		<form:errors path="phone" cssClass="error" />
		<br>
		<input type="submit" value='<spring:message code="attendee.submit" />' />
	</form:form>
</body>
</html>