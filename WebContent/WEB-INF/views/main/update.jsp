<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
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

<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>Product Bill</title>
<style type="text/css">
.at {
	margin-left: 30%;
	margin-right: 30%;
}

.custom-file-upload {
	border: 1px solid #ccc;
	display: inline-block;
	padding: 6px 12px;
	cursor: pointer;
}
</style>
</head>
<body>

	<jsp:include page="header1.jsp" />


	<header class="font-weight-bold font-italic text-center ml-5 mr-5 p-3"
		id="nav-modal"
		style="font-size: 30px; background-color: black; color: white; text-shadow: 3px 3px 3px rgba(255, 255, 255, 0.3)">Product
		Update</header>

	<form:form action="main/update.htm" modelAttribute="gtr" method="post"
		enctype="multipart/form-data" style="font-size: 20px">
		<div class="ml-5 mr-5 pl-5 pr-5" id="nav-modal">
			<form:input path="ID" type="hidden" />
			<div class="row">
				<div
					class="col-lg-6 d-flex flex-column justify-content-center align-items-center">
					<img id="nav-modal" src="data:image/jpeg;base64,${gtr.imgUtility}">
					<div class="custom-file mt-3">

						<input type="file" class="custom-file-input " id="customFile"
							name="img" accept="image/png, image/jpeg"> <label
							class="custom-file-label font-weight-bold" for="customFile"
							style="font-size: 15px;">No file chosen </label>
					</div>

				</div>
				<div class="col-lg-6 p-5">
					<div class="form-group">
						<div class="d-flex justify-content-between font-weight-bold">
							<label>Tên sản phẩm </label>
							<form:errors style="font-size: 15px; color: #0073e6" path="Name" />
						</div>
						<form:input class="form-control" path="Name" />
					</div>
					<div class="form-group">
						<div class="d-flex justify-content-between font-weight-bold">
							<label>Giá </label>
							<form:errors style="font-size: 15px; color: #0073e6" path="Price" />
						</div>
						<form:input class="form-control" path="Price" />
					</div>
					<div class="form-group">
						<div class="d-flex justify-content-between font-weight-bold">
							<label>Thông tin </label>
							<form:errors style="font-size: 15px; color: #0073e6"
								path="Details" />
						</div>
						<form:textarea class="form-control" path="Details" rows="5" />
					</div>
					<div id="nav-modal" class="mt-4 mb-3">
						<button type="button" class="btn btn-block font-weight-bold "
							id="cart1" style="font-size: 30px;" data-toggle="modal"
							data-target="#exampleModal">Update</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="p-3">
										<h5 class="text-center">
											<strong
												style="font-style: italic; font-size: 20px; text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.3)">Are
												you sure to update this product ?</strong>
										</h5>
									</div>
									<div class="m-3 d-flex justify-content-around">
										<div id="nav-modal">
											<button class="btn font-weight-bold">Yes</button>
										</div>

										<div id="nav-modal">
											<a href="main/itemslist${1}.htm" class="btn font-weight-bold">No</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</form:form>


	<jsp:include page="footer.jsp" />

</body>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/navbar-shrinker.js"></script>
<script>
	// Add the following code if you want the name of the file appear on select
	$(".custom-file-input").on(
			"change",
			function() {
				var fileName = $(this).val().split("\\").pop();
				$(this).siblings(".custom-file-label").addClass("selected")
						.html(fileName);
			});
</script>
</html>



