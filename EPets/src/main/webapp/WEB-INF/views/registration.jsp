<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value='/all/registercustomer' var="url"></c:url>
<form:form action="${url }" modelAttribute="user">
<div class="boxed" style="border:1px solid">
Enter Customer Details
<div class="form-group">
<form:label path="firstname">Enter Firstname</form:label>
<form:input path="firstname"  class="form-control"></form:input>
<form:errors path="firstname" ></form:errors>
</div>

<div class="form-group">
<form:label path="lastname">Enter Lastname</form:label>
<form:input path="lastname"  class="form-control"></form:input>

</div>

<div class="form-group">
<form:label path="email">Email</form:label>
<form:input path="email" type="email" class="form-control" title="Please enter valid email address"></form:input>
<form:errors path="email" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateEmail }</span>
</div>

<div class="form-group">
<form:label path="phonenumber">PhoneNumber</form:label>
<form:input path="phonenumber"  class="form-control"></form:input>
<form:errors path="phonenumber" cssStyle="color:red"></form:errors>
</div>
</div>

<div class="boxed" style="border:1px solid">
Enter login credentials
<div class="form-group">
<form:label path="username">Username</form:label>
<form:input path="username"  class="form-control"></form:input>
<form:errors path="username" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateUsername }</span>
</div>

<div class="form-group">
<form:label path="password">Password</form:label>
<form:input path="password" type="password" class="form-control"></form:input>
<form:errors path="password" cssStyle="color:red"></form:errors>
</div>
</div>

<input type="submit" value="Register">
</form:form>
</body>
</html>
