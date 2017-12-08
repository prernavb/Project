<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<h1>Login</h1>
<script>

	function validateForm() 
	{
		var email = document.getElementById("email");
		var password = document.getElementById("password");
		if (email == null || email == "") {
			alert("username cant be left blank");
			return false;
		} else if (password.length < 8) {
			alert("Password must be atleast 8 character long");
			return false;
		}
	}
</script>
<div class="content">
	<div class="container">
		<c:if test="${not empty message }">
			<div class="row">
				<div class="col-md-offset-3 col-md-6">
					<div class="alert alert-danger">${message}</div>
				</div>
			</div>
	

</c:if>
</div>
</div>
<form class="form-horizontal"
	action="${cp}/login" method="post" id="formLogin">
	<div class="form-group">
		<label for="inputUsername" class="control-label col-xs-2">User
			Name</label>
		<div class="col-xs-2">
			<input type="text" id="email" class="form-control" name="email"
				placeholder="email" required>
		</div>
	</div>
	<div class="form-group">
		<label for="inputPassword" class="control-label col-xs-2">Password</label>
		<div class="col-xs-2">
			<input type="password" id="password" class="form-control" name="password"
				placeholder="Password" required>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-xs-offset-2 col-xs-10">
			<button type="submit" class="btn btn-primary" >Login</button>
			<%-- <input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" /> --%>
			<button type="reset" class="btn btn-primary">Reset</button>

		</div>
	</div>


</form>

<br></br>s
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>

<jsp:include page="footer.jsp"></jsp:include>