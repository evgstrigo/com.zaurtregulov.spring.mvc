<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<body>
<h2>
    All Employees
</h2>
<br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
    </tr>
    <c:forEach var="emps" items="${allEmps}">
        <tr>
            <td>${emps.name}</td>
            <td>${emps.surname}</td>
            <td>${emps.department}</td>
            <td>${emps.salary}</td>
        </tr>
    </c:forEach>

</table>

<br>

<input type="button" value="Add"
onclick="window.location.href = 'addNewEmployee' "/>


</body>
</html>