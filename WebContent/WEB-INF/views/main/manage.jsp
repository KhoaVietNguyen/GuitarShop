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
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>Product Bill</title>
<style type="text/css">
.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
}

.pagination a.ac {
	background-color: black;
	color: white;
}
</style>
</head>
<body>

	<jsp:include page="header1.jsp" />

	<div class="pl-3 pr-3" >

		<table class="table table-hover text-center" id="nav-modal">
			<tr class="alert alert-dark font-italic" id="nav-modal"
				style="font-size: 20px; background-color: black; color: white; text-shadow: 3px 3px 3px rgba(255, 255, 255, 0.3)">
				<th style="width: 5%">ID</th>
				<th style="width: 20%">Tên</th>
				<th style="width: 10%">Giá</th>
				<th style="width: 40%">Thông tin</th>
				<th style="width: 10%">Ảnh</th>
				<th style="width: 15%"><a href="main/insert.htm"><i
						class='fa fa-copy fa-lg text-white' title="Insert"></i></a></th>

			</tr>
			<c:forEach var="u" items="${gtr}" varStatus="vs">
				<tr>
					<td><a class="btn" href="main/Detail/${u.ID}.htm">${u.ID}</a></td>
					<td>${u.name}</td>
					<td>$ ${u.price}</td>
					<td align="justify" style="font-size: 12px">${u.details}</td>
					<td><img id="nav-modal"
						src="data:image/jpeg;base64,${u.imgUtility}" width="80%"></td>
					<td><a href="main/edit/${u.ID}.htm"><i
							class='fa fa-edit fa-2x text-dark' title="Edit"></i></a> <a
						href="main/delete/${u.ID}.htm" data-toggle="modal"
						data-target="#exampleModal${vs.index}"> <i
							class="fa fa-remove fa-2x text-dark" title="Remove"></i>
					</a>
					
						<div class="modal fade" id="exampleModal${vs.index}" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="pt-3">
										<h5 class="text-center">
											<strong
												style="font-style: italic; font-size: 20px; text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.3)">Are
												you sure to delete ${u.name} ?</strong>
										</h5>
									</div>
									<div class="modal-body">
										<div class="m-3 d-flex justify-content-around">
											<div id="nav-modal">
												<a href="main/delete/${u.ID}.htm"
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
				</tr>
			</c:forEach>

		</table>
		<div class="d-flex justify-content-between">
			<div class="font-weight-bold"
				style="width:100%; font-size: 25px; color: #0073e6">${message}</div>
			<div class="custom-file"></div>
			<ul class="pagination pagination-sm justify-content-end">
				<li class="page-item" id="nav-modal"><a class="page-link"
					href="main/itemslist${1}.htm">First</a></li>
				<c:choose>
					<c:when test="${num-1>=1}">
						<li class="page-item" id="nav-modal"><a class="page-link"
							href="main/itemslist${num-1}.htm"><i
								class="fa fa-angle-double-left fa-lg"></i></a></li>
					</c:when>
					<c:when test="${num-1<1}">
						<li class="page-item disabled" id="nav-modal"><a
							class="page-link" href="main/itemslist${num-1}.htm"><i
								class="fa fa-angle-double-left fa-lg"></i></a></li>
					</c:when>
				</c:choose>
				<c:forEach var="i" begin="1" end="${numberpage}">
					<c:choose>
						<c:when test="${num==i}">
							<li class="page-item" id="nav-modal"><a class="page-link ac"
								href="main/itemslist${i}.htm">${i}</a></li>
						</c:when>
						<c:when test="${num!=i}">
							<li class="page-item" id="nav-modal"><a class="page-link"
								href="main/itemslist${i}.htm">${i}</a></li>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${num+1<=numberpage}">
						<li class="page-item" id="nav-modal"><a class="page-link"
							href="main/itemslist${num+1}.htm"><i
								class="fa fa-angle-double-right fa-lg"></i></a></li>
					</c:when>
					<c:when test="${num+1>numberpage}">
						<li class="page-item disabled" id="nav-modal"><a
							class="page-link" href="main/itemslist${num-1}.htm"><i
								class="fa fa-angle-double-right fa-lg"></i></a></li>
					</c:when>
				</c:choose>
				<li class="page-item" id="nav-modal"><a class="page-link"
					href="main/itemslist${numberpage}.htm">Last</a></li>
			</ul>
		</div>
	</div>


	<jsp:include page="footer.jsp" />
</body>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/navbar-shrinker.js"></script>
</html>

