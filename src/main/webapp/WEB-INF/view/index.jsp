<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>

    <section>
        <form:form method="POST" modelAttribute="data_input">
            ID: <form:input path="id"/>
            <br/>
            Ma: <form:input path="ma"/>
            <br/>
            Ten: <form:input path="ten"/>
            <br/>
            <form:button formaction="/color/add" type="submit" >Add</form:button>
        </form:form>
    </section>
    <section>
        <table>
            <tr>
                <th>ID</th>
                <th>Category Code</th>
                <th>Category Name</th>
            </tr>
            <c:forEach items="${data}" var="x">
                <tr>
                    <td>${x.id}</td>
                    <td>${x.ma}</td>
                    <td>${x.ten}</td>
                </tr>
            </c:forEach>
        </table>
    </section>
</body>
</html>