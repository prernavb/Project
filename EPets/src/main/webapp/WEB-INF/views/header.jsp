
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<c:set var = "cp" value="${pageContext.request.contextPath }"/>
</head>
<body>
<nav class="navbar navbar-default">
		<div class="container-fluid">
		<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
		<div class="navbar-header">
		<a class="navbar-brand" href=""><img src="/EPets/resources/images/epets.png" height="30px" width="30px"></a>
			</div>
		<ul class="nav navbar-nav">
		
			<li class="active"><a href="/EPets/home">Home<span class="sr-only">You are in home page link</span></a></li>
			<li><a href="/EPets/aboutUs">AboutUs</a></li>
			
			<li><a href="/EPets/admin/all">Browse all products</a></li>
			<c:if test="${pageContext.request.userPrincipal.name==null }">
			<li><a href="<c:url value='/login'></c:url>">Sign In</a></li>
			<li><a href='<c:url value='/all/registrationform'></c:url>'>Sign Up</a></li>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<li><a href="">Welcome ${pageContext.request.userPrincipal.name}</a></li>
			<li><a href="<c:url value='/j_spring_security_logout'></c:url>">logout</a></li>
			</c:if>
		</div>
	</div>


	</nav>



</body>
</html>