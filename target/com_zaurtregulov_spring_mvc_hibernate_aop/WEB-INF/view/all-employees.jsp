<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<body>
<h2>
    All Employees
</h2>
<br>

<table>
    <tr><th>ID</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="emps" items="${allEmps}">
        <c:url var = "updateButton" value="/updateInfo" >
<c:param name = "empId" value = "${emps.id}"></c:param>
        </c:url>

        <tr>
            <td>${emps.id}</td>
            <td>${emps.name}</td>
            <td>${emps.surname}</td>
            <td>${emps.department}</td>
            <td>${emps.salary}</td>
            <td>
                <input type="button" value="Update"
                onclick="window.location.href = '${updateButton}'">

            </td>
        </tr>
    </c:forEach>

</table>

<br>

<input type="button" value="Add"
onclick="window.location.href = 'addNewEmployee' "/>


</body>
</html>