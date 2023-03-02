<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
    <h1>San pham</h1>
    <div class="row">
        <div class="col-lg-3">
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button
                                class="accordion-button"
                                type="button"
                                data-bs-toggle="collapse"
                                data-bs-target="#collapseOne"
                                aria-expanded="true"
                                aria-controls="collapseOne"
                                style="
                      background-color: rgb(232, 106, 16);
                      color: white;
                      font-weight: bold;
                    "
                        >
                            <i class="fa fa-bars" style="margin-right: 10px"></i>
                            Tất cả
                        </button>
                    </h2>
                    <div
                            id="collapseOne"
                            class="accordion-collapse collapse show"
                            aria-labelledby="headingOne"
                            data-bs-parent="#accordionExample"
                    >
                        <div class="list-group">
                            <c:forEach items="${supplier}" var="x">
                                <a class="list-group-item list-group-item-action" href="">${x.ten}</a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-9">
            <div class="row">

                <c:forEach items="${productDetail}" var="pr">
                <div class="col-3">
                    <div class="card" style="margin-top: 10px">
                        <img
                                src="${ pageContext.request.contextPath }/libraries/Images/${pr.img}"
                                class="card-img-top"
                                style="max-width: 100%;height: 200px"
                                alt="..."
                        />
                        <div class="card-body">
                            <h5 class="card-title">${pr.product.ten}</h5>
                            <p class="card-text">
                                <small class="text-muted">${pr.gia_ban}$</small>
                                <small style="float: right">
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                </small>
                            </p>

                            <button
                                    type="submit"
                                    class="btn btn-primary"
                                    style="font-size: 13px; width: 300px; margin-top: 10px"
                            >
                               <a href="/product/detail/${pr.id}" style="color: white;text-decoration: none">Chi tiet</a>
                            </button>
                        </div>
                    </div>
                </div>
                </c:forEach>

            </div>
        </div>
    </div>
