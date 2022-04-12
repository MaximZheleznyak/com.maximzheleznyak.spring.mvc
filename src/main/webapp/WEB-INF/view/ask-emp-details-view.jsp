<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee, please enter your details</h2>

<br>
<br>

<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--    placeholder="Write your name"/>--%>

<%--    <input type="submit"/>--%>

<form:form action = "showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <br>
    <br>
    Surname <form:input path="surname"/>
    <br>
    <br>
    Salary <form:input path="salary"/>
    <br>
    <br>

    Department <form:select path="department">

        <form:options items="${employee.departments}"/>
        </form:select>


        <br>
        <br>


    Which car do you want?

    <form:radiobuttons path="carBrend" items="${employee.carBrends}"/>



<%--    BMW <form:radiobutton path="carBrend" value="BMW"/>--%>
<%--    Audi <form:radiobutton path="carBrend" value="Audi"/>--%>
<%--    Honda <form:radiobutton path="carBrend" value="Honda"/>--%>



<%--    <form:option value="Information Technology" label="IT" />--%>
<%--    <form:option value="Human Resources" label="HR" />--%>
<%--    <form:option value="Sales" label="Sales" />--%>

    <br>
    <br>

    <input type="submit" value="Ok">

    <br>
    <br>


</form:form>


</form>

</body>

</html>