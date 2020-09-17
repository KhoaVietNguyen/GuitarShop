<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/mycss.css">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="js/jquery-3.3.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>Product Bill</title>
<style type="text/css">
.at {
	margin-left: 30%;
	margin-right: 30%;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-xl navbar-dark">
		<jsp:include page="header.jsp" />
	</nav>
	<header class="font-weight-bold font-italic text-center mt-4 p-3 at"
		id="nav-modal"
		style="font-size: 30px; background-color: black; color: white; text-shadow: 3px 3px 3px rgba(255, 255, 255, 0.3)">ĐẶT
		HÀNG THÀNH CÔNG</header>
	<div class="p-5 text-center at" id="nav-modal" style="margin-bottom: 5%">
	<h4 class="pb-4 font-weight-bold">Cảm ơn đã mua hàng ở KGUITAR</h4>
		<a href="main/items.htm" class="btn font-weight-bold" id="cart1"
			style="font-size: 20px;"><img src="img/arrow-left.png"
			width="10%" />Tiếp tục mua hàng</a>
	</div>

	<jsp:include page="footer.jsp" />
</body>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/navbar-shrinker.js"></script>
</html>