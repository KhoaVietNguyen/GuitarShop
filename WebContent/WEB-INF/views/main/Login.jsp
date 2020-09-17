<%@ page pageEncoding="utf-8"%>
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
	<header class="font-weight-bold font-italic text-center mt-3 at"
		id="nav-modal"
		style="font-size: 30px; background-color: black; color: white; text-shadow: 3px 3px 3px rgba(255, 255, 255, 0.3)">ADMIN
		LOGIN </header>
	<div class="p-3 mb-5 text-center at" id="nav-modal">
		<form action="main/Login.htm" method="post">
			<div class="form-group">

				<input placeholder="Username" class="form-control"
					name="name" />
			</div>
			<div class="form-group" >

				<input type="password" placeholder="Password"
					class="form-control" name="pass" />
			</div>
			<div class="text-center font-weight-bolder font-italic alert-info mb-4" role="alert">${message}</div>
			<div class="form-group" id="cart1">
				<button class="btn btn-block font-weight-bold"  style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);"
					name="ADLogin" style="font-size: 20px;">LOGIN</button>
			</div>
		</form>
	</div>

	<jsp:include page="footer.jsp" />

</body>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/navbar-shrinker.js"></script>
</html>

