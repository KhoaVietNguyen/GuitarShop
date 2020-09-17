<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/mycss.css">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>Product Detail</title>
</head>
<body>
	<nav class="navbar navbar-expand-xl navbar-dark">
		<jsp:include page="header.jsp" />
	</nav>
	<form action="main/cart/${gtr.ID}.htm" method="post">
		<div class="m-3" id="nav-modal">
			<div class="row">
				<div class="col-lg-6 d-flex justify-content-center align-items-center" >
					 <img id="nav-modal" src="data:image/jpeg;base64,${gtr.imgUtility}" >
				</div>
				<div class="col-lg-6 p-5">
					<h2 class="font-weight-bolder">Thông Tin Sản Phẩm</h2>
					<h4>${gtr.name}</h4>
					<hr>
					<span class="fa fa-star "></span> <span class="fa fa-star "></span>
					<span class="fa fa-star "></span> <span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
					<h6>${gtr.details}</h6>
					<hr>
					<h2 class="font-weight-bolder">Giá: $ <f:formatNumber value="${gtr.price}" /></h2>
					<div class="row">
						<div class="col-lg-4">
							<div class="mt-3" >
								<h5 class="font-weight-bolder">Số lượng</h5>
								<input id="nav-modal" type="number" class="form-control font-weight-bolder mt-3" value="1" min="1"
									style="width: 80%" name="quantity">
							</div>
						</div>
						<div class="col-lg-8 ">
							<div class="mt-3 mb-3 " id="nav-modal">
								<button class="nav-link text-center btn d-flex justify-content-center" id="cart1"
									style="width: 100%; color: black">
									<img src="img/cart1.png" width="20%"/> 
									<h3	class="font-weight-bolder m-3">MUA HÀNG</h3>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

	<jsp:include page="footer.jsp" />
</body>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/navbar-shrinker.js"></script>
</html>