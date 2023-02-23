<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Product Manager</title>
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/libraries/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/libraries/fontawesome-free-6.2.0-web/css/all.min.css">
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
        <a class="navbar-brand" href="#2">Trang chu</a>
        <a class="navbar-brand" href="#4">Giới thiệu</a>
        <a class="navbar-brand" href="#3">Sản phẩm</a>
        <a class="navbar-brand" href="#5">Tin tuc</a>
        <a class="navbar-brand" href="#5">Liên hệ</a>
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

    <section>
        <section>

            <form:form
                    modelAttribute="data_input"
                    method="POST">
                <input type="hidden" name="_method" value="put"/>
                <div class="row">
                    <div class="col-3">
                        <div class="form-group mt-3">
                            <label for="product">Tên Sp</label>
                            <form:select path="product.id" id="product" class="form-control">
                                <form:options  items="${product}" itemLabel="ten" itemValue="id"></form:options>
                            </form:select>
                        </div>
                        <div class="form-group mt-3">
                            <label for="supplier">Nsx</label>
                            <form:select path="supplier.id" id="supplier" class="form-control">
                                <form:options  items="${supplier}" itemLabel="ten" itemValue="id"></form:options>
                            </form:select>
                        </div>
                        <div class="form-group mt-3">
                            <label for="color">Màu Sắc</label>
                            <form:select path="color.id" id="color" class="form-control">
                                <form:options  items="${color}" itemLabel="ten" itemValue="id"></form:options>
                            </form:select>
                        </div>
                        <div class="form-group mt-3">
                            <label for="productCategory">Dòng sản phẩm</label>
                            <form:select path="productCategory.id" id="productCategory" class="form-control">
                                <form:options items="${productCategory}" itemLabel="ten" itemValue="id"></form:options>
                            </form:select>
                        </div>

                    </div>
                    <div class="col-6">
                        <div class="form-group mt-3">
                            <label for="nam_bao_hanh">Năm Bảo hành</label>
                            <form:input path="nam_bao_hanh" class="form-control" id="email" name="nam_bao_hanh" autocomplete="off"/>
                        </div>
                        <div class="form-group mt-3">
                            <label for="so_luong_ton">Sô lượng tồn</label>
                            <form:input path="so_luong_ton" name="so_luong_ton" class="form-control"/>
                        </div>
                        <div class="form-group mt-3">
                            <label for="gia_nhap">Giá nhập</label>
                            <form:input path="gia_nhap" name="gia_nhap" class="form-control"/>
                        </div>
                        <div class="form-group mt-3">
                            <label for="gia_ban">Giá bán</label>
                            <form:input path="gia_ban" name="gia_ban" class="form-control"/>
                        </div>
                        <div class="form-group mt-3">
                            <label for="img">Anh</label>
                            <form:input path="img" type="file" name="img" class="form-control"/>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="form-group mt-3">
                            <img src="${ pageContext.request.contextPath }/libraries/Images/${data_input.img}" style="max-width: 100%"/>
                        </div>
                    </div>'
                </div>
                <div class="form-group mt-3">
                    <button type="button" formaction="/product-manager/add" class="btn btn-primary">Save</button>
                    <button type="button" formaction="/product-manager/update/${data_input.ma}" class="btn btn-primary">Update</button>
                </div>
            </form:form>

        </section>


        <table>
            <tr>
                <th>Ma SP</th>
                <th>Ten SP</th>
                <th>NSX</th>
                <th>Mau sac</th>
                <th>Dong san pham</th>
                <th>Nam BH</th>
                <th>SL Ton</th>
                <th>Gia nhap</th>
                <th>Gia ban</th>
                <th></th>
            </tr>
            <c:forEach items="${data}" var="x">
                <tr>
                    <td>${x.product.ma}</td>
                    <td>${x.product.ten}</td>
                    <td>${x.supplier.ten}</td>
                    <td>${x.color.ten}</td>
                    <td>${x.productCategory.ten}</td>
                    <td>${x.nam_bao_hanh}</td>
                    <td>${x.so_luong_ton}</td>
                    <td>${x.gia_nhap}</td>
                    <td>${x.gia_ban}</td>
                    <td>
                        <a href="/product-manager/edit/${x.id}">Edit</a>
                        <a href="/product-manager/remove/${x.id}">Remove</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </section>

</section>


<footer>
    <div class="container">
        <div class="row">
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