<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<h1>San pham moi nhat</h1>
<section>
    <div class="row g-0 bg-body-secondary position-relative">
        <div class="col-md-6 mb-md-0 p-md-4">
            <img src="${ pageContext.request.contextPath }/libraries/Images/${prNew.img}" class="w-100" style="height: 400px" alt="...">
        </div>
        <div class="col-md-6 p-4 ps-md-0">
            San pham : <h5 class="mt-0">${prNew.product.ten}</h5>
            Gia : <h5 class="mt-0">${prNew.gia_ban}</h5>
            Mau : <h5 class="mt-0">${prNew.color.ten}</h5>
            <div class="vstack gap-2 col-md-5 mx-auto">
                <button type="submit" class="btn btn-secondary"><a style="text-decoration: none;color:white" href="/product/detail/${prNew.id}">Chi tiet</a></button>
            </div>
        </div>
    </div>
</section>

<h1>San pham</h1>
<section>
    <div class="row">
        <c:forEach items="${data}" var="x">
            <div class="col-3">
                <div class="card" style="margin-top: 10px">
                    <img
                            src="${ pageContext.request.contextPath }/libraries/Images/${x.img}"
                            class="card-img-top"
                            style="max-width: 100%;height: 200px"
                            alt="..."
                    />
                    <div class="card-body">
                        <h5 class="card-title">${x.product.ten}</h5>
                        <p class="card-text">
                            <small class="text-muted">${x.gia_ban}$</small>
                            <small style="float: right">
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regulget(productDetailService.getALl().size()-1)ar fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                            </small>
                        </p>

                        <button
                                type="submit"
                                class="btn btn-primary"
                                style="font-size: 13px; width: 400px; margin-top: 10px"
                        >
                            <a href="/product/detail/${x.id}" style="color: white;text-decoration: none">Chi tiet</a>
                        </button>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    </div>
</section>


