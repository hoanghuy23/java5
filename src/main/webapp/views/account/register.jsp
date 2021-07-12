<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
		<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
				<meta name="description" content="">
				<meta name="author" content="">

				<title>Quản lý</title>

				<!-- Custom fonts for this template-->
				<link href="/resource/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
				<link
					href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
					rel="stylesheet">
				<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
					integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
					crossorigin="anonymous">
				<!-- Custom styles for this template-->
				<link href="/resource/css/sb-admin-2.min.css" rel="stylesheet">
				<script src="https://kit.fontawesome.com/eaa729be91.js" crossorigin="anonymous"></script>
</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Tạo tài khoản</h1>
                            </div>
                            <h4>${message}</h4>
                            <form:form class="user" action="/account/register" modelAttribute="item">
                                    <div class="form-group">
                                        <form:input type="text" path="fullname" class="form-control form-control-user" id=""
                                            placeholder="Họ và tên"/>
                                    </div>
                                <div class="form-group">
                                    <form:input type="text" path="username" class="form-control form-control-user" id=""
                                        placeholder="Tên tài khoản"/>
                                </div>
                                <div class="form-group">
                                    <form:input type="email" path="email" class="form-control form-control-user" id=""
                                        placeholder="Email đăng ký"/>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <form:input type="text" path="password" class="form-control form-control-user"
                                            placeholder="Mật khẩu"/>
                                    </div>
                                    <!-- <div class="col-sm-6">
                                        <input type="password" name="passwords" class="form-control form-control-user"
                                            name="text" placeholder="Nhập lại mật khẩu">
                                    </div> -->
                                </div>
                                <button formaction="/account/save" class="btn btn-primary btn-user btn-block">
                                    Đăng ký
                                </button>
                                <hr>
                                <a href="index.html" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a>
                            </form:form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.html">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="login.html">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/resource/jquery/jquery.min.js"></script>
				<script src="/resource/bootstrap/js/bootstrap.bundle.min.js"></script>

				<!-- Core plugin JavaScript-->
				<script src="/resource/jquery-easing/jquery.easing.min.js"></script>

				<!-- Custom scripts for all pages-->
				<script src="/resource/js/sb-admin-2.min.js"></script>

				<!-- Page level plugins -->
				<script src="/resource/chart.js/Chart.min.js"></script>

				<!-- Page level custom scripts -->
				<script src="/resource/js/demo/chart-area-demo.js"></script>
				<script src="/resource/js/demo/chart-pie-demo.js"></script>
				<script src="/resource/js/demo/chart-bar-demo.js"></script>

</body>

</html>