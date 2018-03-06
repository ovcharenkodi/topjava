<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meals</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>Meals</h2>
<table border="1">
    <tr>
        <th>DateTime</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>
    <c:forEach var="meal" items="${meals}">
        <tr bgcolor="${meal.isExceed() ? 'red' : 'green'}">

            <td><c:out value="${meal.getId()}"/></td>
            <td><c:out value="${meal.getDateTime().toLocalDate().toString()}"/>
                <c:out value="${meal.getDateTime().toLocalTime().toString()}"/></td>
            <td><c:out value="${meal.getDescription()}"/></td>
            <td><c:out value="${meal.getCalories()}"/></td>
            <td><a href="meals?action=edit&id=<c:out value="${meal.getId()}"/>">Update</a></td>
            <td><a href="meals?action=delete&id=<c:out value="${meal.getId()}"/>">Delete</a></td>

        </tr>
    </c:forEach>
</table>

<a href="add.jsp">
    <h4>Add</h4>
</a>

</body>
</html>