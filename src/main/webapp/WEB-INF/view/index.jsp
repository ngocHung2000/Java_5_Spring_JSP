<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Trang chu</title>
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/libraries/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/libraries/fontawesome-free-6.2.0-web/css/all.min.css">
    <style>
        .view{
            padding: 50px;
        }
        #ab div ul{
            list-style: none;
        }
        #ab div ul li a{
            text-decoration: none;
            color : black
        }
    </style>
</head>
<body>
<nav class="navbar bg-light fixed-top" style="text-align: center">
    <div class="container-fluid">
        <a class="navbar-brand" href="#1"
        ><i
                class="fa-brands fa-shopify"
                style="
              color: rgb(232, 106, 16);
              width: 100%;
              height: 100%;
              font-size: 30px;
            "
        >ShopHEHE</i
        ></a
        >
        <a class="navbar-brand" href="/home-page/show">Trang chu</a>
        <a class="navbar-brand" href="#4">Giới thiệu</a>
        <a class="navbar-brand" href="/product/show">Sản phẩm</a>
        <a class="navbar-brand" href="/product-manager/show">Quan ly san pham</a>
        <a class="navbar-brand" href="/order-manager/show">Quan ly don hang</a>
        <a class="navbar-brand" href="#5">Liên hệ</a>
        <li class="nav-item dropdown" style="list-style: none">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                User
            </a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="/admin/login">Admin</a></li>
                <li><a class="dropdown-item" href="/login/show">Dang nhap</a></li>
                <li><a class="dropdown-item" href="/register/show">Dang ky</a></li>
            </ul>
        </li>
        <form class="d-flex" role="search">
            <input
                    class="form-control me-2"
                    type="search"
                    placeholder="Search"
                    aria-label="Search"
            />
            <button
                    class="btn btn-outline-success"
                    type="submit"
                    style="
              color: white;
              border: 1px solid rgb(232, 106, 16);
              background-color: rgb(232, 106, 16);
            "
            >
                Search
            </button>
        </form>
        <a class="navbar-brand" href="#6"
        ><i
                class="fa-solid fa-cart-shopping"
                style="
              color: rgb(232, 106, 16);
              width: 100%;
              height: 100%;
              font-size: 30px;
            "
        ></i
        ></a>
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="offcanvas"
                data-bs-target="#offcanvasNavbar"
                aria-controls="offcanvasNavbar"
        >
            <i
                    class="fa-regular fa-user"
                    style="
              color: rgb(232, 106, 16);
              width: 100%;
              height: 100%;
              font-size: 30px;
            "
            ></i>
        </button>
        <div
                class="offcanvas offcanvas-end"
                tabindex="-1"
                id="offcanvasNavbar"
                aria-labelledby="offcanvasNavbarLabel"
        >
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="#7"
                        >Tài khoản của tôi</a
                        >
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="#9">Đổi mật khẩu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="./Login.html"
                        >Đăng xuất</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<section class="view" style="margin-top: 70px">
    <jsp:include page="${ view }"></jsp:include>
</section>


<footer>
    <div class="container">
        <div class="row" id="ab">
            <div class="col-md-3">
                <ul>
                    <li><a href="">Chăm sóc khách hàng</a></li>
                    <li><a href="">Trung tâm trợ giúp</a></li>
                    <li><a href="">HEH Blog</a></li>
                    <li><a href="">HEHE Mall</a></li>
                    <li><a href="">Hướng Dẫn Mua Hàng</a></li>
                    <li><a href="">Hướng Dẫn Bán Hàng</a></li>
                    <li><a href="">Thanh toán</a></li>
                    <li><a href="">HEH Xu</a></li>
                    <li><a href="">Vận Chuyển</a></li>
                    <li><a href="">Trả Hàng & Hoàn Tiền</a></li>
                    <li><a href="">Chăm Sóc Khách Hàng</a></li>
                    <li><a href="">Chính Sách Bảo Hành</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <ul>
                    <li><a href="">Về ShopHEHE</a></li>
                    <li><a href="">Giới Thiệu Về ShopHEHE</a></li>
                    <li><a href="">Tuyển Dụng</a></li>
                    <li><a href="">Điều Khoản ShopHEHE</a></li>
                    <li><a href="">Chính Sách Và Bảo Mật</a></li>
                    <li><a href="">Chính Hãng</a></li>
                    <li><a href="">Kênh Người Bán</a></li>
                    <li><a href="">Flash Sales</a></li>
                    <li><a href="">Chương Trình Tiếp Thị Liên Kết ShopHEHE</a></li>
                    <li><a href="">Liên Hệ Với Truyền Thông</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <ul>
                    <li><a href="">Theo Dõi Chúng Tôi Trên</a></li>
                    <li>
                        <a href=""><i class="fa-brands fa-facebook"> Facebook </i></a>
                    </li>
                    <li>
                        <a href=""
                        ><i class="fa-brands fa-square-instagram"> Instagram </i></a
                        >
                    </li>
                    <li>
                        <a href=""><i class="fa-brands fa-linkedin"> LinkedIn</i></a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3">
                <ul>
                    <li><a href="">Liên Hệ Quảng Cáo</a></li>
                    <li><a href="">Hotline hỗ trợ quảng cáo : 0989999999</a></li>
                    <li><a href="">Hỗ trợ & CSKH : I am Ngọc Hùng</a></li>
                    <li>
                        <a href=""
                        >Địa chỉ : Số 30 ngõ 185, phố Chùa Láng, phường Láng Thượng,
                            quận Đống Đa, Thành Phố Hà Nội</a
                        >
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<script src="${ pageContext.request.contextPath }/libraries/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>