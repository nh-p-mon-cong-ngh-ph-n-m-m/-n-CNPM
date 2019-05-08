<%@page import="dao.AccountDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	
		String username_error = "", password_error = "", password1_error = "",password2_error = "", email_error = "", fullname_error = "", phone_error = "",
				address_error = "";
		if (request.getAttribute("username_error") != null) {
			username_error = (String) request.getAttribute("username_error");
		}
		if (request.getAttribute("password_error") != null) {
			password_error = (String) request.getAttribute("password_error");
		}
		if (request.getAttribute("password1_error") != null) {
			password1_error = (String) request.getAttribute("password1_error");
		}
		if (request.getAttribute("password2_error") != null) {
			password2_error = (String) request.getAttribute("password2_error");
		}
		if (request.getAttribute("email_error") != null) {
			email_error = (String) request.getAttribute("email_error");
		}
		if (request.getAttribute("fullname_error") != null) {
			fullname_error = (String) request.getAttribute("fullname_error");
		}
		if (request.getAttribute("phone_error") != null) {
			phone_error = (String) request.getAttribute("phone_error");
		}
		if (request.getAttribute("address_error") != null) {
			address_error = (String) request.getAttribute("address_error");
		}

		String username = "", password1 = "",password2 = "", email = "", phone = "", fullname = "", address = "";
		if (request.getAttribute("username") != null) {
			username = (String) request.getAttribute("username");
		}
		if (request.getAttribute("password1") != null) {
			password1 = (String) request.getAttribute("password1");
		}
		if (request.getAttribute("password2") != null) {
			password2 = (String) request.getAttribute("password2");
		}
		if (request.getAttribute("email") != null) {
			email = (String) request.getAttribute("email");
		}
		if (request.getAttribute("fullname") != null) {
			fullname = (String) request.getAttribute("fullname");
		}
		if (request.getAttribute("phone") != null) {
			phone = (String) request.getAttribute("phone");
		}
		if (request.getAttribute("address") != null) {
			address = (String) request.getAttribute("address");
		}
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700italic,700,800,800italic&subset=latin,vietnamese'
	rel='stylesheet' type='text/css' />
<link href="assets/styles/bootstrap.min.css" rel="stylesheet" />
<link href="assets/styles/font-awesome.min.css" rel="stylesheet" />
<link href="assets/styles/slick.css" rel="stylesheet" />
<link href="assets/styles/owl.carousel.min.css" rel="stylesheet" />
<script src="assets/js/jwplayer.js"></script>
<script src="assets/js/key.js"></script>
<script type="text/javascript">
	jwplayer.key = "5qMQ1qMprX8KZ79H695ZPnH4X4zDHiI0rCXt1g==";
</script>
<!--main style-->
<link href="assets/styles/fonts.css" rel="stylesheet" />
<link href="assets/styles/site.css" rel="stylesheet" />
<link href="assets/styles/site-respon.css" rel="stylesheet" />
<!--end main style-->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript">
	function changeActiveMenu(page) {
		$('#menu li').removeClass("active");
		$('#menu li a[href*="' + page + '"]').parent("li").addClass("active");
	}
	function changeSubActiveMenu(page) {
		$('#menu li li').removeClass("active");
		$('#menu li li a[href$="' + page + '"]').parents("li").addClass(
				"active");
		$('.menu-list li').removeClass("active");
		$('.menu-list li a[href$="' + page + '"]').parents("li").addClass(
				"active");
		var value1 = $('a.a-link-sp').attr('href');
		$('#menu li li a[href$="' + value1 + '"]').parents("li").addClass(
				"active");
		$('.menu-list li a[href$="' + value1 + '"]').parents("li").addClass(
				"active");
		var value2 = $('a.a-link-spc').attr('href');
		$('#menu li li a[href$="' + value2 + '"]').parents("li").addClass(
				"active");
		$('.menu-list li a[href$="' + value2 + '"]').parents("li").addClass(
				"active");
	}
</script>
<title>Gạo Sạch</title>
</head>
<body>
	<div id="wrapper">
		<div id="wrapper-in">
			<div id="header">
				<div class="top-head">
					<div class="container">
						<div class="pull-left">
							<p>
								HOTLINE GIAO HÀNG: <span>08 4860 3975</span> (8h - 20h)
							</p>
						</div>
						<div class="pull-right">
							<div class="log">
								<ul>

									<li><a href="">Đăng ký</a></li>

									<li class="log-in"><a href="#">Đăng nhập <i
											class="fa fa-caret-down"></i></a>
										<div class="lognin">
											<h1>ĐĂNG NHẬP</h1>
											<div class="form-group input-group">
												<div class="icon-input">
													<span class="icon-user"></span>
												</div>
												<input type="text" class="input-lognin"
													placeholder="Tên đăng nhập" />
											</div>
											<div class="form-group input-group">
												<div class="icon-input">
													<span class="icon-pass"></span>
												</div>
												<input type="text" class="input-lognin"
													placeholder="Mật khẩu" />
											</div>
											<div class="form-group password-helper">
												<label class="label-pass"> <input name="remember_me"
													id="remember_me" value="Y" checked="checked"
													type="checkbox"> Ghi nhớ đăng nhập
												</label> <a href="#">Quên mật khẩu</a>
											</div>
											<div class="form-group longin-btn">
												<button class="button-btn">ĐĂNG NHẬP</button>
											</div>
											<div class="form-group register-logn">
												Bạn chưa có tài khoản? <a href="">Đăng ký ngay</a>
											</div>
											<div class="logn-bot">
												<span>HOẶC ĐĂNG NHẬP BẰNG</span> <a
													href="https://www.facebook.com"> <img
													src="assets/images/icon3.png" alt="" />
												</a> <a href="https://accounts.google.com"> <img
													src="assets/images/icon4.png" alt="" />
												</a>
											</div>
										</div></li>
								</ul>
							</div>
							<div class="cart">
								<span>Giỏ hàng</span>
								<div class="number">0</div>
								<div class="cart-box">
									<div class="cart-list">
										<ul>
											<li>Sản phẩm 1 <span class="price-cart">100.000 <sup>đ</sup></span></li>
											<li>Sản phẩm 2 <span class="price-cart">200.000 <sup>đ</sup></span></li>
											<li>Sản phẩm 3 <span class="price-cart">300.000 <sup>đ</sup></span></li>
										</ul>
									</div>
									<div class="sum-cart">
										TỔNG CỘNG: <span>600.000 <sup>đ</sup></span>
									</div>
									<div class="cart-book">
										<a href="cart.jsp">Xem giỏ hàng</a> <a
											href="cart.jsp" class="pull-right">Đặt hàng</a>
									</div>
								</div>
							</div>
							<div class="language">
								<a href="#"> <img src="assets/images/vi.png" alt="" />
								</a> <a href="#"> <img src="assets/images/en.png" alt="" />
								</a>
							</div>
						</div>
						<div class="logo">
							<a href="index.jsp"> <img src="assets/images/logo.png"
								alt="" />
							</a>
						</div>
					</div>
				</div>
				<div class="bot-head">
					<div class="container">
						<div class="menu">
							<ul id="menu" class="desktop-992">
								<li id="a12"><a href="index.jsp">trang chủ</a></li>
								<li><a href="introduce.jsp">giới thiệu</a></li>
								<li><a href="products.jsp">sản phẩm</a></li>
								<li><a href="news.jsp">Tin tức</a></li>
								<li><a href="contact.jsp">Liên hệ</a></li>
							</ul>
							<a class="panel-a menu-mo ipadmo-992" href="#menumobile"
								data-position="true" data-type="false"> <span
								class="fa fa-reorder"></span>Menu
							</a>
						</div>
						<!--slide_df-->
					</div>
				</div>
			</div>
			<div class="clr"></div>
			
				<div id="main-content">
					<div class="register-bg">
						<div class="container">
						<form action="RegisterServlet" method="post">
							<div class="register-form">
								<h1>ĐĂNG KÝ TÀI KHOẢN</h1>
								
								<p style="color: red;"><%=username_error%></p>
								<p style="color: red;"><%=email_error%></p>
								<p style="color: red;"><%=password1_error%></p>
								<p style="color: red;"><%=password2_error%></p>
								<p style="color: red;"><%=fullname_error%></p>
								<p style="color: red;"><%=address_error%></p>	
								<p style="color: red;"><%=phone_error%></p>

								<div class="form-group input-group">
								
									<div class="icon-input">
										<span class="icon-user"></span>
									</div>
									
									<input type="text" class="input-lognin"
										placeholder="Tài Khoản" name="ten_dang_nhap"
							value="<%=username%>" />
								</div>
								<div class="form-group input-group">
								
									<div class="icon-input">
										<span class="icon-mail"></span>
									</div>
									
									<input type="text" class="input-lognin"
										placeholder="Địa Chỉ Email" name="email"
							value="<%=email%>" /> 
								</div>
								<div class="form-group input-group">
								
									<div class="icon-input">
										<span class="icon-pass"></span>
									</div>
									
									<input type="text" class="input-lognin"
										placeholder="Mật Khẩu" name="mat_khau1"
							value="<%=password1%>" /> 
								</div>
								<div class="form-group input-group">
							
									<div class="icon-input">
										<span class="icon-pass"></span>
									</div>
									
									<input type="text" class="input-lognin"
										placeholder="Nhập Lại Mật Khẩu" name="mat_khau2"
							value="<%=password2%>" />
								</div>
								<div class="form-group input-group">
								
									<div class="icon-input">
										<span class="icon-date"></span>
									</div>
									
									<input type="form-group input-group" class="input-lognin"
										placeholder="Họ Và Tên"
							name="ho_va_ten" value="<%=fullname%>"/> 
								</div>
								<div class="form-group input-group">
								
									<div class="icon-input">
										<span class="icon-user"></span>
									</div>
									
									<input type="text" class="input-lognin"
										placeholder="nhập nơi ở của bạn" name="dia_chi"  value="<%=address%>"/>
								</div>
								<div class="form-group input-group">
								
									<div class="icon-input">
										<span class="icon-user"></span>
									</div>
									
									<input type="text" class="input-lognin"
										placeholder="Số Điện Thoại" name="so_dien_thoai"  value="<%=phone%>"/> 
								</div>

								
								<div class="form-group longin-btn">

									<a href=""><input type="submit"
										class="button-btn" value="ĐĂNG KÝ" /></a>
									
								</div>
								<div class="dathang-btn">
                                    
                                    <a href="dangnhap.jsp">đăng nhập</a>
                                </div>
								<div class="logn-bot">
									<span>HOẶC ĐĂNG NHẬP BẰNG</span> <a
										href="https://www.facebook.com"> <img
										src="assets/images/icon3.png" alt="" />
									</a> <a href="https://accounts.google.com"> <img
										src="assets/images/icon4.png" alt="" />
									</a>
								</div>
								
							</div>
							</form>
						</div>
					</div>
				</div>
			
			<footer id="footer">
				<div class="container">
					<div class="pull-left">
						<p>
							Hotline đặt hàng (8h - 20h) <span>08 4860 3975</span>
						</p>
					</div>
					<div class="pull-right">
						<div class="email">
							<p>
								Đăng ký email <span>Nhận ưu đãi</span>
							</p>
						</div>
						<div class="form">
							<input type="text" placeholder="Vui lòng nhập địa chỉ email" />
							<input type="submit" value="Đăng ký" />
						</div>
					</div>
				</div>
			</footer>
			<div class="copyright">
				<p>Copyright © 2018 GaoSach - All rights reserved.</p>
			</div>
		</div>
		<!--menumobile-->
		<div id="menumobile" class="mobile-panel mobilep-left">
			<div class="close-menu">
				<a href="#menumobile" class="glyphicon glyphicon-remove-circle">close</a>
			</div>
			<div class="menu-in">
				<div class="menu-mobile">
					<div class="logo">
						<a id="A2" href="index.jsp"> <img class="img-responsive"
							src="assets/images/logo.png" alt="logo" />
						</a>
					</div>
					<div class="logninmobi">
						<a href="">Đăng ký</a> | <a href="">Đăng nhập</a>
					</div>
					<ul id="menuMobiles" class="menu-nav">
						<li class="home"><a id="A3" href="index.jsp">Trang chủ</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--menumobile-->
	</div>
	<a href="#" class="scroll-to-top"><i
		class="glyphicon glyphicon-chevron-up"></i></a>
	<div id="runScript"></div>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.panel.mobile.js"></script>
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<!-- main js -->
	<script src="assets/js/jquery.main.js"></script>

	<!-- end main js -->
</body>
</html>
