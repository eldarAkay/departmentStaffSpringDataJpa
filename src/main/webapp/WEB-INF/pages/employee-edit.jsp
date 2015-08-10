<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
    <title>Edit employee data page</title>
</head>
<body>
<h1>Edit employee data page</h1>
<form:form method="POST" commandName="employee"
           action="${pageContext.request.contextPath}/employee/edit/${employee.id}.html">
    <table>
        <tbody>
        <tr>
            <td>Employee firstName:</td>
            <td><form:input path="firstName"/></td>
            <td><form:errors path="firstName" cssStyle="color: red;"/></td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td><form:input path="lastName"/></td>
            <td><form:errors path="lastName" cssStyle="color: red;"/></td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td><form:input path="phone"/></td>
            <td><form:errors path="phone" cssStyle="color: red;"/></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><form:input path="email"/></td>
            <td><form:errors path="email" cssStyle="color: red;"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Create"/></td>
            <td></td>
            <td></td>
        </tr>
        </tbody>
    </table>
</form:form>
<a href="${pageContext.request.contextPath}/">Home page</a>
</body>
</html>