<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
	<h1>Add Attendee</h1>
	
	<form:form modelAttribute="attendee">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<lable for="txtInput1">Enter Name: </lable>
		<form:input path="name" cssErrorClass="error" />
		<form:errors path="name" cssClass="error" />
		<br>
		<lable for="txtInput2">Enter Email: </lable>
		<form:input path="email" cssErrorClass="error" />
		<form:errors path="email" cssClass="error" />
		<br>
		<input type="submit" value="Enter Event Mintues" />
	</form:form>
</body>
</html>