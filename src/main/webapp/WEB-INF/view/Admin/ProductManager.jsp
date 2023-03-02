<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
    <section>
        <section>

            <form:form
                    modelAttribute="data_input"
                    method="POST">
                <input type="hidden" name="_method" value="put"/>
                <div class="row">
                    <div class="col-3">
                        <div class="form-group mt-3" style="display: none">
                            <form:input path="id" name="id" class="form-control"/>
                        </div>
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
                            <img src="${ pageContext.request.contextPath }/libraries/Images/${data_input.img}" style="max-width: 100%;height: 400px"/>
                        </div>
                    </div>'
                </div>
                <div class="form-group mt-3">
                    <button type="submit" formaction="/product-manager/add" class="btn btn-primary">Save</button>
                    <button type="submit" formaction="/product-manager/update/${data_input.id}" class="btn btn-primary">Update</button>
                </div>
            </form:form>

        </section>


        <table  class="table">
            <tr>
                <th scope="col">Ma SP</th>
                <th scope="col">Ten SP</th>
                <th scope="col">NSX</th>
                <th scope="col">Mau sac</th>
                <th scope="col">Dong san pham</th>
                <th scope="col">Nam BH</th>
                <th scope="col">SL Ton</th>
                <th scope="col">Gia nhap</th>
                <th scope="col">Gia ban</th>
                <th scope="col"></th>
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
