<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>PS13657_TruongHoangHuy</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resource/css/styles.css" rel="stylesheet" />
<link href="/resource/js/jquery-3.2.1.min.js" rel="stylesheet" />
<script src="https://kit.fontawesome.com/eaa729be91.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg navbar-light bg-info text-uppercase fw-bolder">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand text-uppercase" href="#!"><img alt=""
				src="/resource/images/logo.png"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/layout/Home">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">Phụ
							kiện</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">Sữa
							chữa</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">Giới
							thiệu</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">Liên hệ</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="true">Tài
							khoản</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">Đăng nhập</a></li>
							<li><a class="dropdown-item" href="#!">Đổi mật khẩu</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!">Đăng ký</a></li>
							<li><a class="dropdown-item" href="#!">Quên mật khẩu</a></li>
						</ul></li>
				</ul>
				<form class="d-flex">
					<a class="btn btn-outline-dark" type="submit" href="/layout/cartProduct">
						<i class="bi-cart-fill me-1"></i> Cart
					</a>
				</form>
			</div>
		</div>
	</nav>
	<!-- Header-->
	<header class="bg-dark py-2">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/resource/images/header1.jpg" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="/resource/images/header2.jpg" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="/resource/images/header3.jpg" class="d-block w-100"
						alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</header>
	<!-- Section-->
	<section class=" py-5 row bg-light">
		<div class="col-3">
			<div class="card">
				<h5 class="card-header bg-dark text-white text-uppercase">Thông
					tin</h5>
				<div class="card-body">
					<div class="card">
						<h5 class="card-header bg-info text-white text-uppercase"
							style="font-size: 15px;">Tìm kiếm theo tên</h5>
						<div class="card-body bg-light">
							<form action="/layout/Home" method="post">
								<input name="keywords" value="${keywords}"
									placeholder="Tên sản phẩm" class="rounded-pill"
									style="height: 40px;">
								<button class="btn btn-danger my-auto">Tìm</button>
							</form>
						</div>
					</div>
					<div class="card mt-4">
						<h5 class="card-header bg-info text-white text-uppercase"
							style="font-size: 15px;">Tìm kiếm theo giá</h5>
						<div class="card-body bg-light">
							<form action="Search" class="p-n2 row" method="post">
								<input name="min" class="w-75 mx-4" value="${param.min}"
									placeholder="Giá thấp nhất"> <input
									class="mt-1 w-75 mx-4" name="max" value="${param.max}"
									placeholder="Giá cao nhất"><br>
								<button class="btn btn-success mt-1 mx-4 w-50">Tìm</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container px-4 px-lg-5 mt-1 col-9">
			<c:forEach var="item" items="${cart.items}">
				<form action="/layout/update/${item.id}" method="post">
					<div class="card mt-2">
						<div class="card-header">Mã sản phẩm ###${item.id }</div>
						<div class="card-body row">
							<div class="col-3">
								<img class="card-img-top w-50"
									src="/resource/images/${item.img }">
							</div>
							<div class="col-9 row">
								<div class="card-title h-25 mb-1 fw-bolder">${item.name }</div>
								<div class="row h-25 mt-n2">
									<div class="col-10 text-danger text-uppercase fw-bolder">${item.price*item.qty }
										VNĐ</div>
									<div class="col-2">
										<input type="number" name="qty" value="${item.qty}"
											onblur="this.form.submit()"
											style="width: 80px; height: 0.8cm;">
									</div>
								</div>
								<div class="row">
									<a class="btn btn-danger ml-auto my-auto"
										style="width: 4cm; height: 1cm;"
										href="/layout/remove/${item.id}"><i
										class="fas fa-trash-alt"></i> Xóa</a>
									<a class="btn btn-danger ml-auto my-auto"
										style="width: 4cm; height: 1cm;"
										href="/order/pay/${item.id}"><i
										class="fas fa-trash-alt"></i> Thanh toán</a>
								</div>
							</div>
						</div>
					</div>
				</form>
			</c:forEach>
			
		</div>
	</section>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2021</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/resource/js/script.js"></script>
	<link href="/resource/js/jquery-3.2.1.min.js" rel="stylesheet" />
</body>
</html>
