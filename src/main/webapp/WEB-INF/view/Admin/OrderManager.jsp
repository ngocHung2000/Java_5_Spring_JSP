<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<section>

    <form class="row g-3">
        <div class="col-md-6">
            <label for="find" class="form-label">Tim kiem</label>
            <input type="text" class="form-control" name="txt" id="find">
        </div>
        <div class="col-md-6">
            <label for="inputState" class="form-label">Trang thai</label>
            <select id="inputState" name="status" class="form-select">
                <option value="1" selected>Da thanh toan</option>
                <option value="0">Chua thanh toan</option>
            </select>
        </div>

        <div class="col-12">
            <button type="submit" class="btn btn-primary"><a href="/order-manager/search" style="color: white;text-decoration: none">Tim kiem</a></button>
        </div>
    </form>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">Ten khach hang</th>
            <th scope="col">Ngay tao</th>
            <th scope="col">Ngay nhan</th>
            <th scope="col">Dia chi</th>
            <th scope="col">SDT</th>
            <th scope="col">Nguoi nhan</th>
            <th scope="col">Trang thai</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${lst}" var="x">
                <tr>
                    <td>${x.customer.ho_ten}</td>
                    <td>${x.ngay_tao}</td>
                    <td>${x.ngay_thanh_toan}</td>
                    <td>${x.dia_chi}</td>
                    <td>${x.sdt}</td>
                    <td>${x.ten_nguoi_nhan}</td>
                    <c:choose>
                        <c:when test="${x.tinh_trang == 0}">
                            <td>Chua thanh toan</td>
                        </c:when>
                        <c:when test="${x.tinh_trang == 1}">
                        <td>Da thanh toan</td>
                        </c:when>
                    </c:choose>
                    <td><button type="submit" class="btn btn-primary"><a href="/order-manager/find" style="color: white;text-decoration: none">Chi tiet</a></button></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</section>