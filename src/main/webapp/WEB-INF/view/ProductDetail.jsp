<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

    <h1>${p.product.ten}</h1>
    <section>
        <div class="row g-0 bg-body-secondary position-relative">
            <div class="col-md-6 mb-md-0 p-md-4">
                <img src="${ pageContext.request.contextPath }/libraries/Images/${p.img}" class="w-100" style="height: 400px" alt="...">
            </div>
            <div class="col-md-6 p-4 ps-md-0">

                San pham : <h5 class="mt-0">${p.product.ten}</h5>
                Gia : <h5 class="mt-0">${p.gia_ban}</h5>
                Mau : <h5 class="mt-0">${p.color.ten}</h5>

                <div class="vstack gap-2 col-md-5 mx-auto">
                    <button type="button" class="btn btn-secondary">Add</button>
                    <button type="button" class="btn btn-secondary">Buy</button>
                </div>
            </div>
        </div>
    </section>