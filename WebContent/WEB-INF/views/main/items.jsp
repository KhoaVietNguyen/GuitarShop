<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html>
<link rel="icon" href="img/logo.jpg" sizes="32x32">
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/mycss.css">
<link rel="stylesheet" href="css/font.css">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>Product List</title>
</head>
<body>
	<nav class="navbar navbar-expand-xl navbar-dark">
		<jsp:include page="header.jsp" />
	</nav>
	<header class="font-weight-bold font-italic text-center ml-3 mr-3 p-3"
		id="nav-modal"
		style="font-size: 30px; background-color: black; color: white; text-shadow: 3px 3px 3px rgba(255, 255, 255, 0.3)">DANH
		SÁCH SẢN PHẨM</header>
	<div class="mb-3 ml-3 mr-3 pl-5 pr-5 pt-5" id="nav-modal">
		<div class="row">
			<!--Grid column-->
			<c:forEach var="u" items="${items}">
				<div class="col-lg-3 col-md-4 col-sm-8 pb-5">
					<!--Card-->
					<div class="card text-center" id="nav-modal">
						<!--Card image-->
						<div class="view overlay">
							<a href="main/Detail/${u.ID}.htm"><img
								src="data:image/jpeg;base64,${u.imgUtility}"
								class="card-img-top"></a>
						</div>
						<!--Card content-->
						<div class="card-body">
							<!--Title-->
							<h4 class="card-title">${u.name}</h4>
							<!--Text-->
							<p class="card-text" style="font-size: 30px">
								Price: $
								<f:formatNumber value="${u.price}" />
							</p>
						</div>
					</div>
					<!--/.Card-->
				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/navbar-shrinker.js"></script>

</html>