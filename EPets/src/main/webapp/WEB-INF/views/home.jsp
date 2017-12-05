<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var = "cp" value="${pageContext.request.contextPath }"/>

<%@ include file="header.jsp" %>

<body>
	<div id="myContainer"
	style="height: 500px; width: 100%; overflow: hidden; cursor: pointer">
	<div id="myCarousel" class="carousel slide" data-ride="carousel"
		data-interval="2000">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>

			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="/EPets/resources/images/lovebirds.jpg" alt="Love birds"
					style="height: 500px; width: 100%; overflow: hidden; cursor: pointer">
			</div>
<div class="carousel-caption">
                            <h1>WELCOME TO THE EPETS STORE</h1>
                            <p><h2>The world of unconditional love</h2></p>
                        </div>
			<div class="item">
				<img src="/EPets/resources/images/persiancat.jpg" alt="Persian Cat"
					style="height: 500px; width: 100%; overflow: hidden; cursor: pointer">
			</div>
			<div class="item">
				<img src="/EPets/resources/images/husky.jpg" alt="Husky"
					style="height: 500px; width: 100%; overflow: hidden; cursor: pointer">
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<!-- Cards -->
</div>
<div class="row" style="height: 400px; width: 100%;">

	<ul class="nav-justified">
		<li><div class="card ">
				<a href="${cp }/viewlist/iphone"></a><img class="card-img-top"
					src="/EPets/resources/images/labs.jpg" alt="Labrador"
					style="height: 300px; padding: 8%; width: 100%; overflow: hidden; cursor: pointer"><h1><center>LABRADOR</center></h1>
				
			</div></li>
		<li><div class="card">
				<a href="${cp }/viewlist/ipad"></a><img class="card-img-top"
					src="/EPets/resources/images/bengalcat.jpg" alt="Bengal Cat"
					style="height: 300px; padding: 8%; width: 100%; overflow: hidden; cursor: pointer"><h1><center>BELGIAN CAT</center></h1>
				
			</div></li>
		<li><div class="card">
				<a href="${cp }/viewlist/mac"></a><img class="card-img-top"
					src="/EPets/resources/images/Macaws-1.jpg" alt="Macaws"
					style="height: 300px; padding: 8%; width: 100%; overflow: hidden; cursor: pointer"><h1><center>PARROTS</center></h1>
				
			</div></li>
	</ul>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
