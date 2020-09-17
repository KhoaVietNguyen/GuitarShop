<nav class="navbar navbar-expand-xl navbar-dark ">
	<div class="container-fluid border" id="mainNav"
		style="border-color: white">
		<a
			class="navbar-brand js-scroll-trigger font-weight-bold pl-2 text-white">
			<img src="img/logo.jpg" height="40" style="width: 50px;">MANAGEMENT
		</a>
		<button class="navbar-toggler navbar-toggler-right mr-3" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="true"
			aria-label="Toggle Navigation">
			<i class="fa fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav text-uppercase  ml-auto font-weight-bold"
				style="font-size: 20px">
				<li class="nav-item"><a class="nav-link" href="main/Home.htm"><i
						class="fa fa-home fa-lg"></i> Home </a></li>
				<li class="nav-item"><a class="nav-link"
					href="main/itemslist${1}.htm">Product List</a></li>
				<li class="nav-item"><a class="nav-link"
					href="main/ListBill.htm">Order List </a></li>
				<li class="nav-item"><a class="nav-link"
					href="" data-toggle="modal"
					data-target="#example"><img id="logoutBtn"
						src="img/logout.png" width="25%"> Logout </a></li>
			</ul>
		</div>
	</div>
</nav>

<div class="modal fade" id="example" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="pt-3">
				<h5 class="text-center">
					<strong
						style="font-style: italic; font-size: 20px; text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.3)">Are
						you sure to log out ?</strong>
				</h5>
			</div>
			<div class="modal-body">
				<div class="m-3 d-flex justify-content-around">
					<div id="nav-modal">
						<a href="main/logout.htm" class="btn font-weight-bold">Yes</a>
					</div>

					<div id="nav-modal">
						<a href="" class="btn font-weight-bold" data-dismiss="modal">No</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


