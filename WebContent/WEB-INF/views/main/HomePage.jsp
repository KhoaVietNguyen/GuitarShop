<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<html lang="en">
<link rel="icon" href="img/logo.jpg" sizes="32x32">
<head>

<base href="${pageContext.servletContext.contextPath}/">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/mycss.css">
<link rel="stylesheet" href="css/font.css">
<title>KGUITAR SHOP</title>
<style type="text/css">
.customBackgroundForTouch:hover {
	background-image: url('img/acc1.jpg');
	color: black;
	box-shadow: 0 0 25px rgba(0, 0, 0, 1), inset 0 0 0px rgba(0, 0, 0, 1);
}

.customBackgroundForTouch1:hover {
	background-image: url('img/acc2.jpg');
	color: black;
	box-shadow: 0 0 25px rgba(0, 0, 0, 1), inset 0 0 0px rgba(0, 0, 0, 1);
}

.customBackgroundForTouch2:hover {
	background-image: url('img/acc3.jpg');
	color: black;
	box-shadow: 0 0 25px rgba(0, 0, 0, 1), inset 0 0 0px rgba(0, 0, 0, 1);
}

.customBackgroundForTouch3:hover {
	background-image: url('img/acc4.jpg');
	color: black;
	box-shadow: 0 0 25px rgba(0, 0, 0, 1), inset 0 0 0px rgba(0, 0, 0, 1);
}

.customBackgroundForTouch4:hover {
	background-image: url('img/acc5.jpg');
	color: black;
	box-shadow: 0 0 25px rgba(0, 0, 0, 1), inset 0 0 0px rgba(0, 0, 0, 1);
}
</style>
</head>

<body id="top">

	<nav class="navbar navbar-expand-xl navbar-dark fixed-top mt-2">
		<jsp:include page="header.jsp" />
	</nav>

	<div id="demo" class="carousel slide m-3" data-ride="carousel">
		<div id="nav-modal">
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
				<li data-target="#demo" data-slide-to="3"></li>
				<li data-target="#demo" data-slide-to="4"></li>
			</ul>
			<a href="main/items.htm">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="img/guitar1.jpg">
					</div>
					<div class="carousel-item">
						<img src="img/guitar2.jpg">
					</div>
					<div class="carousel-item">
						<img src="img/guitar3.jpg">
					</div>
					<div class="carousel-item">
						<img src="img/guitar4.jpg">
					</div>
					<div class="carousel-item">
						<img src="img/guitar5.jpg">
					</div>
				</div>
			</a> <a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>


	<div class="text-center m-3" id="nav-modal">
		<header class="font-weight-bold  p-4 font-italic text-center "
			id="nav-modal"
			style="font-size: 30px; background-color: black; color: white; text-shadow: 3px 3px 3px rgba(255, 255, 255, 0.3)">DÒNG
			SẢN PHẨM</header>

		<div class="customBackgroundForTouch container1 ex2" id="item1">
			<a href="main/items.htm"> <img class="img-fluid "
				src="img/acc.png">
				<h3 class="centered font-italic text-effect">Đàn Guitar
					Acoustic</h3>
			</a>
		</div>
		<div class="customBackgroundForTouch1 container1 ex2" id="item2"
			data-toggle="modal" data-target="#myModal">
			<a href="main/items.htm">
				<h3 class="centered font-italic text-effect">Đàn Guitar Classic</h3>
				<img class="img-fluid" src="img/class.png">
			</a>
		</div>
		<div class="customBackgroundForTouch2 container1  ex2" id="item3"
			data-toggle="modal" data-target="#myModal">
			<a href="main/items.htm">
				<h3 class="centered font-italic text-effect">Đàn Guitar Điện</h3> <img
				class="img-fluid" src="img/elc.png">
			</a>
		</div>
		<div class="customBackgroundForTouch3 container1 ex2" id="item4"
			data-toggle="modal" data-target="#myModal">
			<a href="main/items.htm">
				<h3 class="centered font-italic text-effect">Đàn Guitar Bass</h3> <img
				class="img-fluid" src="img/bass.png">
			</a>
		</div>
		<div class="customBackgroundForTouch4 container1 ex2" id="item5"
			data-toggle="modal" data-target="#myModal">
			<a href="main/items.htm">
				<h3 class="centered font-italic text-effect">Đàn Guitar Câm</h3> <img
				class="img-fluid" src="img/cam.png">
			</a>
		</div>
	</div>

	<input onclick="topFunction()" type="image" src="img/up.png" id="myBtn"
		title="Go to top">
	<jsp:include page="footer.jsp" />
	<script>
		//Get the button

		var mybutton = document.getElementById("myBtn");
		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {
			scrollFunction()
		};

		function scrollFunction() {
			if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
				mybutton.style.display = "block";
			} else {
				mybutton.style.display = "none";
			}
		}
		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
			document.body.scrollTop = 0;
			document.documentElement.scrollTop = 0;
		}
	</script>
</body>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/navbar-shrinker.js"></script>

</html>