
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700italic,700,800,800italic&subset=latin,vietnamese' rel='stylesheet' type='text/css' />
<link href="assets/styles/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/styles/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/styles/slick.css" rel="stylesheet" />
    <link href="assets/styles/owl.carousel.min.css" rel="stylesheet" />
	<script src="assets/js/jwplayer.js"></script>
    <script src="assets/js/key.js"></script>
    <script type="text/javascript">jwplayer.key = "5qMQ1qMprX8KZ79H695ZPnH4X4zDHiI0rCXt1g==";</script>
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
            $('#menu li li a[href$="' + page + '"]').parents("li").addClass("active");
            $('.menu-list li').removeClass("active");
            $('.menu-list li a[href$="' + page + '"]').parents("li").addClass("active");
            var value1 = $('a.a-link-sp').attr('href');
            $('#menu li li a[href$="' + value1 + '"]').parents("li").addClass("active");
            $('.menu-list li a[href$="' + value1 + '"]').parents("li").addClass("active");
            var value2 = $('a.a-link-spc').attr('href');
            $('#menu li li a[href$="' + value2 + '"]').parents("li").addClass("active");
            $('.menu-list li a[href$="' + value2 + '"]').parents("li").addClass("active");
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
                            <p>HOTLINE GIAO HÀNG: <span>084 860 3975</span> (8h - 20h)</p>
                        </div>
                        <div class="pull-right">
                            <div class="log">
                                <ul>
                                    <li><a href="dangky.jsp">Đăng ký</a></li>
                                    <li class="log-in">
                                        <a href="dangnhap.jsp">Đăng nhập <i class="fa fa-caret-down"></i></a>
                                        <div class="lognin">
                                            <h1>ĐĂNG NHẬP</h1>
                                            <div class="form-group input-group">
                                                <div class="icon-input"><span class="icon-user"></span></div>
                                                <input type="text" class="input-lognin" placeholder="Tên đăng nhập" name="ten_dang_nhap" value=""/>
                                            </div>
                                            <div class="form-group input-group">
                                                <div class="icon-input"><span class="icon-pass"></span></div>                                                
                                                <input type="text" class="input-lognin" placeholder="Mật khẩu"  name="mat_khau" value="" />
                                            </div>
											<input type="hidden" name="access" value="2" />
											<input type="hidden" name="status" value="1" />
                                            <div class="form-group password-helper">
                                                <label class="label-pass">
                                                    <input name="remember_me" id="remember_me" value="Y" checked="checked" type="checkbox">
                                                    Ghi nhớ đăng nhập
                                                </label>
                                                <a href="#">Quên mật khẩu</a>
                                            </div>
                                            <div class="form-group longin-btn">
													<input type="submit" class="button-btn" value="ĐĂNG NHẬP" />
                                            </div>
                                            <div class="form-group register-logn">
                                                Bạn chưa có tài khoản? <a href="dangky.jsp">Đăng ký ngay</a>
                                            </div>
                                            <div class="logn-bot">
                                                <span>HOẶC ĐĂNG NHẬP BẰNG</span>
                                                <a href="https://www.facebook.com">
                                                    <img src="assets/images/icon3.png" alt="" />
                                                </a>
                                                <a href="https://accounts.google.com">
                                                    <img src="assets/images/icon4.png" alt="" />
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="cart">
                                <span>Giỏ hàng</span>
                                <div class="number">
                                    0
                                </div>
                                <div class="cart-box">
                                    <div class="cart-list">
                                        <ul>
                                            <li>Sản phẩm 1 <span class="price-cart">15.000 <sup>đ</sup></span></li>
                                            <li>Sản phẩm 2 <span class="price-cart">20.000 <sup>đ</sup></span></li>
                                            <li>Sản phẩm 3 <span class="price-cart">30.000 <sup>đ</sup></span></li>
                                        </ul>
                                    </div>
                                    <div class="sum-cart">
                                        TỔNG CỘNG: <span>65.000 <sup>đ</sup></span>
                                    </div>
                                    <div class="cart-book">
                                        <a href="gio-hang.html">Xem giỏ hàng</a>
                                        <a href="gio-hang.html" class="pull-right">Đặt hàng</a>
                                    </div>
                                </div>
                            </div>
                            <div class="language">
                                <a href="#">
                                    <img src="assets/images/vi.png" alt="" />
                                </a>
                                <a href="#">
                                    <img src="assets/images/en.png" alt="" />
                                </a>
                            </div>
                        </div>
                        <div class="logo">
                            <a href="index.jsp">
                                <img src="assets/images/logo.png" alt="" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="bot-head">
                    <div class="container">
                        <div class="menu">
                            <ul id="menu" class="desktop-992">
                                <li id="a12"><a href="index.jsp">trang chủ</a></li>
                                <li>
                                    <a href="introduce.jsp">giới thiệu</a>
                                </li>
                                <li><a href="products.jsp">sản phẩm</a></li>
                                <li><a href="news.jsp">Tin tức</a></li>
                                <li><a href="contact.jsp">Liên hệ</a></li>
                            </ul>
                            <a class="panel-a menu-mo ipadmo-992" href="#menumobile" data-position="true" data-type="false">
                                <span class="fa fa-reorder"></span>Menu
                            </a>
                        </div>
                        <div class="slide-df">
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic" data-slide-to="0"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                </ol>
                                <div class="carousel-inner" role="listbox">
                                    <div class="item">
                                        <img src="assets/images/banner-01.jpg" alt="" />
                                    </div>
                                    <div class="item">
                                        <img src="assets/images/banner-02.jpg" alt="" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clr"></div>
            <div id="main-content">
                <div class="wrap-df">
                    <div class="introduce container">
                        <div class="head-sec">
                            <h1>Sơ lược về <span>Gạo Sạch</span></h1>
                            <span>VÌ SỨC KHỎE GIA ĐÌNH BẠN</span>
                        </div>
                        <p>Gạo Sạch sẽ là nơi hội tụ tất cả các loại gạo đặc sản đất Việt và hy vọng góp phần nhỏ bé vào bữa ăn ngon của hàng triệu gia đình mỗi ngày qua các loại gạo ngon hảo hạng cùng với các dịch vụ chuyên nghiệp nhất, góp phần nâng cao chất lượng cuộc sống, bình ổn giá thị trường và trở thành website bán gạo trực tuyến số một tại Việt Nam.</p>
                        <div class="rice-cate">
                            <div class="item">
                                <div class="wrap-item">
                                    <p>Gạo Ngon Gia Đình</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="wrap-item">
                                    <p>Gạo Suất Ăn Công Nghiệp</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="wrap-item">
                                    <p>Gạo <br />Từ Thiện</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="wrap-item">
                                    <p>Gạo Lứt Ăn Kiêng</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="wrap-item">
                                    <p>Gạo Nếp Đặc Sản</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="products">
                        <div class="container">
                            <div class="head-sec">
                                <h1>Sản phẩm <span>tiêu biểu</span></h1>
                            </div>
                            <div class="products-tab">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation">
                                        <a href="#tab1" aria-controls="home" role="tab" data-toggle="tab">Tất cả</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#tab2" aria-controls="tab" role="tab" data-toggle="tab">Khuyến mãi</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#tab3" aria-controls="tab" role="tab" data-toggle="tab">Nổi bật</a>
                                    </li>                           
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane" id="tab1">
									
                                        <div class="product-cate">
                                   
                                      
                                            <div class="item">
                                                <div class="wrap-content">
                                                    <div class="img">
                                                        <a href="detail.jsp?ID_Product=">
                                                            <img src="" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <a href="detail.jsp?ID_Product="></a>
                                                        <span>
																VNĐ</span>
                                                    </div>
                                                    <div class="details">
                                                        <a href="detail.jsp?ID_Product="><i class="fa fa-search-plus"></i></a>
                                                        <a href="CartServlet?enter=insert&ID_Product=">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                   
                                        </div>
                                        <div class="read-more">
                                            <a href="products.jsp">Xem thêm <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="tab2">
                                        
                                        <div class="product-cate">
                                       
                                            <div class="item">
                                                <div class="wrap-content">
                                                    <div class="img">
                                                        <a href="detail.jsp?ID_Product=">
                                                            <img src="" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <a href="detail.jsp?ID_Product="></a>
                                                        <span>
																VNĐ</span>
                                                    </div>
                                                    <div class="details">
                                                        <a href="detail.jsp?ID_Product=<"><i class="fa fa-search-plus"></i></a>
                                                        <a href="CartServlet?enter=insert&ID_Product=&cartID=">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        
                                        </div>
                                        <div class="read-more">
                                            <a href="products.jsp">Xem thêm <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="tab3">
                                        
                                        <div class="product-cate">
                                    
                                        
                                            <div class="item">
                                                <div class="wrap-content">
                                                    <div class="img">
                                                        <a href="detail.jsp?ID_Product=">
                                                            <img src="" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <a href="detail.jsp?ID_Product="></a>
                                                        <span>
																VNĐ</span>
                                                    </div>
                                                    <div class="details">
                                                        <a href="detail.jsp?ID_Product="><i class="fa fa-search-plus"></i></a>
                                                        <a href="CartServlet?enter=insert&ID_Product=&cartID=">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                         
                                        </div>
                                        <div class="read-more">
                                            <a href="products.jsp">Xem thêm <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clr"></div>
                    <div class="container">
                        <div class="poster">
                            <div class="item">
                                <a href="khuyen mai.jsp">
                                    <img src="assets/images/poster1.png" alt="" />
                                </a>
                            </div>
                            <div class="item">
                                <a href="gao tu thien.jsp">
                                    <img src="assets/images/poster2.png" alt="" />
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="clr"></div>
                    <div class="news container">
                        <div class="head-sec">
                            <h1>Bản tin <span>Gạo Sạch</span></h1>
                            <span>TIN TỨC NỔI BẬT</span>
                        </div>
                        <div class="news-cate">
                            <div class="item">
                                <div class="wrap-item">
                                    <div class="img">
                                        <a href="cach chon gao.jsp">
                                            <img src="assets/images/tt1.jpg" alt="" />
                                        </a>
                                    </div>
                                    <div class="content">
                                        <a href="cach chon gao.jsp">Mách bạn cách chọn gạo ngon mà rẻ cực chuẩn ! </a>
                                        <span>Việc chọn loại gạo ngon thì không nên dựa vào giá cả, mỗi gia đình đều có khẩu vị ăn khác nhau và mỗi loại gạo thì đều có những đặc tính khác nhau.</span>
                                        <div class="read-more"><a href="cach chon gao.jsp">Xem chi tiết <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="wrap-item">
                                    <div class="img">
                                        <a href="news-detail.jsp">
                                            <img src="assets/images/intro1.jpg" alt="" />
                                        </a>
                                    </div>
                                    <div class="content">
                                        <a href="news-detail.jsp">Cung cấp gạo từ thiện tại TPHCM </a>
                                        <span>Từ thiện là sự san sẻ, cảm thông về tình yêu thương và miếng cơm manh áo bằng những hành động thiết thực nhất. Vì vậy, việc ủng hộ gạo từ thiện là việc được nhiều nhà hảo tâm chọn lựa hiện nay. </span>
                                        <div class="read-more"><a href="news-detail.jsp">Xem chi tiết <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer id="footer">
                <div class="container">
                    <div class="pull-left">
                        <p>
                            Hotline đặt hàng (8h - 20h)
                            <span>084 860 3975</span>
                        </p>
                    </div>
                    <div class="pull-right">
                        <div class="email">
                            <p>
                                Đăng ký email
                                <span>Nhận ưu đãi</span>
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
                        <a id="A2" href="index.jsp">
                            <img class="img-responsive" src="assets/images/logo.png" alt="logo" />
                        </a>
                    </div>
                    <div class="logninmobi">
                        <a href="dangky.jsp">Đăng ký</a> | <a href="dangnhap.jsp">Đăng nhập</a>
                    </div>
                    <ul id="menuMobiles" class="menu-nav">
                        <li class="home"><a id="A3" href="index.jsp">Trang chủ</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--menumobile-->
    </div>
    <a href="#" class="scroll-to-top"><i class="glyphicon glyphicon-chevron-up"></i></a>
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
