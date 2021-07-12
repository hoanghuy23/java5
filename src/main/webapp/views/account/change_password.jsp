<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Đăng nhập</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Clean Login Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />

<!-- css files -->
<link href="/resource/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="/resource/css/login.css" rel="stylesheet" type="text/css" media="all" />
<!-- /css files -->

<!-- online fonts -->
<link href="//fonts.googleapis.com/css?family=Sirin+Stencil" rel="stylesheet">
<script src="https://kit.fontawesome.com/eaa729be91.js"
	crossorigin="anonymous"></script>
<!-- online fonts -->

<body>
<div class="container demo-1">
	<div class="content">
        <div id="large-header" class="large-header">
			<h1>Vui lòng đăng nhập tài khoản</h1>
				<div class="main-agileits">
				<!--form-stars-here-->
						<div class="form-w3-agile">
							<h2>Trang đăng nhập</h2>
							<h5>${message }${param.error }</h5>
							<form action="/account/login" method="post">
								<div class="form-sub-w3">
									<input type="text" name="username" placeholder="Mật khẩu củ " required="" />
								</div>
								<div class="row">
									<div class="form-sub-w3">
									<input type="password" name="password" placeholder="Mật khẩu mới" required="" />
								</div>
								</div>
								
								<p class="p-bottom-w3ls">Quên mật khẩu?<a class href="#">  Click here</a></p>
								<p class="p-bottom-w3ls1">Tạo tài khoản?<a class href="#">  Register here</a></p>
								<div class="clear"></div>
								<div class="submit-w3l">
									<input type="submit" value="Đăng nhập">
								</div>
							</form>
							<div class="social w3layouts">
								<div class="heading">
									<h5>Hoặc đăng nhập bằng</h5>
									<div class="clear"></div>
								</div>
								<div class="icons">
									<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
									<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
									<a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
									<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
				<!--//form-ends-here-->
				</div><!-- copyright -->
					<div class="copyright w3-agile">
						<p> Sử dụng tài khoản của mình để đăng nhập và mua sắm tại <a href="http://w3layouts.com/" target="_blank">Watch time</a></p>
					</div>
					<!-- //copyright --> 
        </div>
	</div>
</div>	

</body>
</html>