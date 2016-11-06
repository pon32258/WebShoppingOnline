<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table style="background-color: bisque;border: 1px solid burlywood;width:98%">
    <tr>       
    <c:if test="${user.TABLE_NAME == 'customer' }">
        <td style="text-align: right">
            <a href ="product">product</a>
        </td>
    </c:if>
        <td>
            Hello
        </td>
    </tr>
</table>
<br>
