<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" value="Step Two"/>
<html>
    <head>
        <title>${title}</title>
        <meta charset="UTF-8">
    </head>
    <body>
        <h1>${title}</h1>
        
        <c:if test="${not empty requestScope.errorMessages}">
            <c:forEach var="message" items="${requestScope.errorMessages}">
                <ul>
                    <li>${message}</li>
                </ul>
            </c:forEach>
        </c:if>
        
        <form action="step_two.do" method="POST">
            <table bgcolor="#D0D0D0">
                <tr>
                    <td>Birthdate</td>
                    <td><input name="birthDate" type="text" 
                               value="${param.birthDate}"/></td>
                </tr>
                <tr>
                    <td>Bonus</td>
                    <td><input name="bonus" type="text"
                               value="${param.bonus}"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
