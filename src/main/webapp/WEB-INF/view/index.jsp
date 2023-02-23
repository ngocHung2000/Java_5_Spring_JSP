<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Home Page</title>
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
            Tim kiem
            <input type="text" name="timKiem"/>
            <button formaction="/color/find" type="submit">TIm kiem</button>
            <form:button formaction="/color/add" type="submit" >Add</form:button>
            <form:button formaction="/color/update/${data_input.id}" type="submit" >Update</form:button>
        </form:form>
    </section>
    <section>
        <table>
            <tr>
                <th>ID</th>
                <th>Category Code</th>
                <th>Category Name</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${data}" var="x">
                <tr>
                    <td>${x.id}</td>
                    <td>${x.ma}</td>
                    <td>${x.ten}</td>
                    <td>
                        <a href="/color/edit/${x.id}">Edit</a>
                        <a href="/color/remove/${x.id}">Remove</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </section>
</body>
</html>