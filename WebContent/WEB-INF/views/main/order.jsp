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
<title>Product Order</title>
</head>
<body>
	<nav class="navbar navbar-expand-xl navbar-dark">
		<jsp:include page="header.jsp" />
	</nav>
	<div>
		<header class="font-weight-bold font-italic text-center p-3 ml-5 mr-5"
			id="nav-modal"
			style="font-size: 30px; background-color: black; color: white; text-shadow: 3px 3px 3px rgba(255, 255, 255, 0.3)">ĐẶT
			HÀNG NHANH </header>
		<div class="row ml-5 mr-5 mb-3" id="nav-modal">

			<div class="col-lg-6 p-5">
				<h1 class="font-weight-bolder font-italic">Thông Tin Đơn Hàng</h1>
				<hr>
				<h3 class="font-weight-bolder">${gtr.name}</h3>
				<h5>
					Đơn giá: $
					<f:formatNumber value="${gtr.price}" />
				</h5>
				<h5>Số lượng: ${quantity}</h5>
				<hr>
				<h3 class="font-weight-bolder">Phương thức thanh toán</h3>
				<h5>Trả tiền mặt khi nhận hàng</h5>
				<hr>
				<h2 class="font-weight-bolder font-italic">
					Tổng tiền: $
					<f:formatNumber value="${gtr.price*quantity}" />
				</h2>


			</div>
			<div class="col-lg-6 p-4">
				<form:form action="main/order${ID}/${quantity}.htm"
					modelAttribute="or" class="p-5">
					<form:input type="hidden" path="Pdid" value="${gtr.ID}" />
					<form:input type="hidden" path="Pdquantity" value="${quantity}" />
					<form:input type="hidden" path="Pricesum"
						value="${gtr.price*quantity}" />
					<div class="form-group">
						<div class="d-flex justify-content-between font-weight-bold">
							<label>Fullname (*)</label>
							<form:errors style="font-size: 15px; color: #0073e6"
								path="Ctname" />
						</div>
						<form:input class="form-control font-weight-bold" path="Ctname" />
					</div>
					<div class="form-group">
						<div class="d-flex justify-content-between font-weight-bold">
							<label>Email (*)</label>
							<form:errors style="font-size: 15px; color: #0073e6"
								path="Ctemail" />
						</div>
						<form:input class="form-control font-weight-bold" path="Ctemail" />
					</div>
					<div class="form-group">
						<div class="d-flex justify-content-between font-weight-bold">
							<label>PhoneNumber (*)</label>
							<form:errors style="font-size: 15px; color: #0073e6"
								path="Ctnumber" />
						</div>
						<form:input class="form-control font-weight-bold" path="Ctnumber" />
					</div>
					<div class="form-group">
						<div class="d-flex justify-content-between font-weight-bold">
							<label>Address (*)</label>
							<form:errors style="font-size: 15px; color: #0073e6"
								path="Ctaddress" />
						</div>
						<form:input class="form-control font-weight-bold" path="Ctaddress" />
					</div>
					<div class="d-flex justify-content-between align-items-center mt-4">
						<div id="nav-modal" style="width: 100%">
							<a href="main/items.htm" class="btn btn-block font-weight-bold"
								id="cart1" style="font-size: 20px;"><img
								src="img/arrow-left.png" width="10%" /> Quay về</a>
						</div>
						<div style="width: 80%"></div>
						<div id="nav-modal" style="width: 100%">
							<button type="button" class="btn btn-block font-weight-bold" id="cart1"
								style="font-size: 20px;" data-toggle="modal"
								data-target="#exampleModal">
								Đặt hàng <img src="img/arrow-right.png" width="10%" />
							</button>

							<div class="modal fade" id="exampleModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalCenterTitle"
								aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="pt-3">
											<h5 class="text-center">
												<strong
													style="font-style: italic; font-size: 20px; text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.3)">Are
													you sure to order ?</strong>
											</h5>
										</div>
										<div class="modal-body">
											<div class="m-3 d-flex justify-content-around">
												<div id="nav-modal">
													<button class="btn font-weight-bold">Yes</button>
												</div>

												<div id="nav-modal">
													<a href="" class="btn font-weight-bold"
														data-dismiss="modal">No</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>


	<jsp:include page="footer.jsp" />
</body>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/navbar-shrinker.js"></script>
</html>