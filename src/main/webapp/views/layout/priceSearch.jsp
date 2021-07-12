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

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resource/css/styles.css" rel="stylesheet" />
<link href="/resource/js/jquery-3.2.1.min.js" rel="stylesheet" />

</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-info text-uppercase fw-bolder">
				<div class="container px-4 px-lg-5">
					<a class="navbar-brand text-uppercase" href="#!"><img alt="" src="/resource/images/logo.png"></a>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
						data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="/layout/Home">Trang
									chủ</a></li>
							<li class="nav-item"><a class="nav-link" href="#!">Phụ
									kiện</a></li>
							<li class="nav-item"><a class="nav-link" href="#!">Sữa chữa</a></li>
							<li class="nav-item"><a class="nav-link" href="#!">Giới thiệu</a></li>
							<li class="nav-item"><a class="nav-link" href="#!">Liên hệ</a></li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="navbarDropdown"
									href="#" role="button" data-bs-toggle="dropdown" aria-expanded="true">Tài khoản</a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="/account/login">Đăng nhập</a></li>
									<li><a class="dropdown-item" href="#!">Đổi mật khẩu</a></li>
									<li><a class="dropdown-item" href="/account/logout">Đăng xuất</a></li>
									<li><a class="dropdown-item" href="#!">Cập nhật thông tin tài khoản</a></li>
									<li>
										<hr class="dropdown-divider" />
									</li>
									<li><a class="dropdown-item" href="#!">Đăng ký</a></li>
									<li><a class="dropdown-item" href="#!">Quên mật khẩu</a></li>
								</ul>
							</li>
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
				<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
							class="active" aria-current="true" aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
							aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
							aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="/resource/images/header1.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/resource/images/header2.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/resource/images/header3.jpg" class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</header>
	<!-- Section-->
	<section class="py-5 row">
		<div class="col-3">
					<div class="card">
						<h5 class="card-header bg-dark text-white text-uppercase">Thông
							tin</h5>
						<div class="card-body">
							<div class="card">
								<h5 class="card-header bg-info text-white text-uppercase" style="font-size: 15px;">Tìm
									kiếm theo tên</h5>
								<div class="card-body bg-light">
									<form action="/layout/Home" method="post">
										<input name="keywords" value="${keywords}" placeholder="Tên sản phẩm"
											class="rounded-pill" style="height: 40px;">
										<button class="btn btn-danger my-auto">Tìm</button>
									</form>
								</div>
							</div>
							<div class="card mt-4">
								<h5 class="card-header bg-info text-white text-uppercase" style="font-size: 15px;">Tìm
									kiếm theo giá</h5>
								<div class="card-body bg-light">
									<form action="Search" class="p-n2 row" method="post">
										<input name="min" class="w-75 mx-4" value="${param.min}"
											placeholder="Giá thấp nhất"> <input class="mt-1 w-75 mx-4" name="max"
											value="${param.max}" placeholder="Giá cao nhất"><br>
										<button class="btn btn-success mt-1 mx-4 w-50">Tìm</button>
									</form>
								</div>
							</div>
						</div>
					</div>
					<ul class="list-group list-group-flush">
						<div class="card mt-2">
							<div class="card-header text-uppercase fw-bold" style="font-size: 13px;">
								Các loại đồng hồ bạn có thể tìm thấy
							</div>
							<div class="card-body p-0">
								<c:forEach var="item" items="${list }">
									<li class="list-group-item">${item.name }</li>
								</c:forEach>
							</div>
						</div>
					</ul>
					<div class="text-center mt-2">
						<h4>Quảng cáo</h4>
						<img alt="" src="/resource/images/BI.jpg" class="w-75">
					</div>

				</div>
		<div class="container px-4 px-lg-5 mt-5 col-9">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<c:forEach var="item" items="${items }">
					<div class="col mb-5">
						<div class="card h-100">
							<!-- Product image-->
							<img class="card-img-top" src="/resource/images/${item.img }"
								alt="..." />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 class="fw-bolder">${item.name }</h5>
									<!-- Product price-->
									${item.price } VNĐ
								</div>
							</div>
							<!-- Product actions-->
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<a class="btn btn-outline-dark mt-auto" href="#">View
										options</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
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
