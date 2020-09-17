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
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/mycss.css">
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/navbar-shrinker.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->


<title>Product Bill</title>
<style type="text/css">
.at {
	margin-left: 30%;
	margin-right: 30%;
}
</style>
</head>
<body>
	<jsp:include page="header1.jsp" />
	<div class="pl-3 pr-3">
		<table class="table table-hover text-center" id="nav-modal">
			<tr class="alert alert-dark font-italic" id="nav-modal"
				style="font-size: 20px; background-color: black; color: white; text-shadow: 3px 3px 3px rgba(255, 255, 255, 0.3)">
				<th>ID</th>
				<th>ItemsID</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Guestname</th>
				<th>Email</th>
				<th>Tel</th>
				<th>Address</th>
				<th>Time Order</th>
			</tr>
			<c:forEach var="u" items="${bill}" varStatus="vs">
				<tr>
					<td>  <a href="" class="btn" data-toggle="modal"
						data-target="#exampleModal${vs.index}">${u.ID}</a><!-- Modal -->
						<div class="modal fade" id="exampleModal${vs.index}" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="pt-3">
										<h5 class="text-center">
											<strong
												style="font-style: italic; font-size: 20px; text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.3)">Are
												you sure to confirm this bill ${u.ID} ?</strong>
										</h5>
									</div>
									<div class="modal-body">
										<div class="m-3 d-flex justify-content-around">
											<div id="nav-modal">
												<a href="main/deleteBill${u.ID}.htm"
													class="btn
												font-weight-bold">Yes</a>
											</div>

											<div id="nav-modal">
												<a href="" class="btn font-weight-bold" data-dismiss="modal">No</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</td>
					<td><a class="btn" href="main/Detail/${u.pdid}.htm">${u.pdid}</a></td>
					<td>${u.pdquantity}</td>
					<td>$ ${u.pricesum}</td>
					<td>${u.ctname}</td>
					<td>${u.ctemail}</td>
					<td>${u.ctnumber}</td>
					<td>${u.ctaddress}</td>
					<td>${u.dateTime}</td>

				</tr>
			</c:forEach>

		</table>
	</div>
	<jsp:include page="footer.jsp" />
</body>

</html>

