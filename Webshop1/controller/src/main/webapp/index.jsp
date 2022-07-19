<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="MessageBundle" var="messages"/>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<h1 align="center"><fmt:message key="webappname" bundle="${messages}"/></h1>
<body>
<br>
<br>
<button class="button" type="submit"><a href="?sessionLocale=ru"><fmt:message key="Russian"
                                                                              bundle="${messages}"/></a>
</button>
<br>
<br>
<button class="button" type="submit"><a href="?sessionLocale=en"><fmt:message key="English"
                                                                              bundle="${messages}"/></a>
</button>
<fmt:setLocale value="${lang}"/>
<h2>

    <%--<c:if test="${!(empty param.locale)}">
        <c:set var="language" value="${param.locale}"/>
    </c:if>--%>
    <%--<c:set value="en_EN" var="eng">
        <c:param name="language" value="en_US" />
    </c:set>
    <a href="${eng}">English</a>
    <br>
    <br>
    <br>
    <c:set value="ru_RU" var="rus">
        <c:if test="${!(empty param.locale)}">
            <c:set var="locale" value="${param.locale}" />
        </c:if>
        &lt;%&ndash;<c:param name="language" value="ru_RU" /> &ndash;%&gt;
    </c:set>
    <a href="${rus}">Russian</a>--%>


    <%--<form>
        <select id="language" name="language" onchange="submit()">
            <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
            <option value="ru" ${language == 'ru' ? 'selected' : ''}>Russian</option>
        </select>
    </form>--%>
</h2>
<br>
<br>
<nav align="center">
    <ul>
        <form action="AddProduct.jsp">
            <button class="button" type="submit"><fmt:message key="addaproduct" bundle="${messages}"/></button>
            <br>
        </form>
        <form action="AddSupplier.jsp">
            <button class="button" type="submit"><fmt:message key="addasupplier" bundle="${messages}"/></button>
            <br>
        </form>
        <form action="AddManufacturer.jsp">
            <button class="button" type="submit"><fmt:message key="addamanufacturer" bundle="${messages}"/></button>
            <br>
        </form>
        <form action="AddSeller.jsp">
            <button class="button" type="submit"><fmt:message key="addaseller" bundle="${messages}"/></button>
            <br>
        </form>
        <form action="listAllProducts">
            <button class="button" type="submit"><fmt:message key="listallproducts" bundle="${messages}"/></button>
            <br>
        </form>
        <form action="listAllSuppliers">
            <button class="button" type="submit"><fmt:message key="listallsuppliers" bundle="${messages}"/></button>
            <br>
        </form>
        <form action="listAllSellers">
            <button class="button" type="submit"><fmt:message key="listallsellers" bundle="${messages}"/></button>
            <br>
        </form>
        <form action="listAllManufacturers">
            <button class="button" type="submit"><fmt:message key="listallmanufacturers" bundle="${messages}"/></button>
            <br>
        </form>
    </ul>
</nav>
</body>
</html>
