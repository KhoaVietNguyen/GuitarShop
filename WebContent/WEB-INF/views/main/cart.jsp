<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Product Cart</title>
</head>
<body>
	<nav class="navbar navbar-expand-xl navbar-dark">
		<jsp:include page="header.jsp" />
	</nav>
	<div class="container-fluid">
		<!-- Tab panes -->
		<div class="tab-content">
			<!-- gio hang -->
			<div id="nav-modal">
				<table class="table" style="font-size: 25px;">
					<thead class="text-center">
						<tr class="alert alert-dark font-italic" id="nav-modal"
							style="background-color: black; color: white; text-shadow: 3px 3px 3px rgba(255, 255, 255, 0.3)">
							<th style="width: 30%">${gtr.name}</th>
							<th style="width: 30%">Giá</th>
							<th style="width: 30%">Số lượng</th>
						</tr>
					</thead>
					<tbody class="text-center">
						<tr class="pt-5 ">
							<td>
								<button class="btn btn-block" type="button"
									onclick="quay_lai_trang_truoc()">
									<div style="vertical-align: middle;">
										<img id="nav-modal" src="data:image/jpeg;base64,${gtr.imgUtility}" width="50%" />
									</div>
								</button>
							</td>
							<td><h2>$ <f:formatNumber value="${gtr.price}" /></h2></td>
							<td><h2>${quantity}</h2></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="p-3 mb-3" id="nav-modal">
			<div class="d-flex justify-content-around align-items-center">
				<div id="nav-modal" style="width: 100%">
					<a href="main/items.htm" class="btn btn-block  font-weight-bold"
						id="cart1" style="font-size: 30px;"><img
						src="img/arrow-left.png" width="5%" /> Mua sản phẩm khác </a>
				</div>
				<h5 class="p-3 text-center font-italic font-weight-bold"
					style="width: 100%; color: black; font-size: 30px; text-shadow: 5px 5px 5px rgba(0, 0, 0, 0.4)">
					TỔNG : $ <f:formatNumber value="${gtr.price*quantity}" /></h5>
				<div id="nav-modal" style="width: 100%">
					<a href="main/order${ID}/${quantity}.htm"
						class="btn btn-block font-weight-bold" id="cart1"
						style="font-size: 30px;"> Đặt hàng nhanh <img
						src="img/arrow-right.png" width="5%" /></a>
				</div>
			</div>
		</div>

	</div>

	<jsp:include page="footer.jsp" />
</body>
<script>
	function quay_lai_trang_truoc() {
		history.back();
	}
</script>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/navbar-shrinker.js"></script>

</html>