<%-- 
    Document   : newjsp
    Created on : 1.11.2017, 12:03:25
    Author     : soft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
        
        <table border="1">
                <thead>
                    <tr>
                       <th>ID_book</th>
                       <th>Name_book</th>
                       <th>Author</th>
                       <th>Birthday</th> 
                    </tr>
                </thead>
                <c:forEach var="item" items="${book.all}">
                    <tr>
                        <th><c:out value="${item.ID_book}"></c:out></th>
                        <th><c:out value="${item.name_book}"></c:out></th>
                        <th><c:out value="${item.author}"></c:out></th>
                        <th><c:out value="${item.birthday}"></c:out></th>
                    </tr>
                </c:forEach>   
        </table> 

        <c:choose>
                <c:when test="${fn:length(book.all) == 0}">
                    НЕТ записей!
                </c:when>
                <c:otherwise>
                    Количество записей: ${fn:length(book.all)} 
                </c:otherwise>
            </c:choose>

            <br/> 
            <a href='<c:url value="faces/create.jsp"/>'>Добавить</a>
            <br/>    
            <a href='<c:url value="jp"/>'>404</a>
            <br/> 
            <a href='<c:url value="faces/ActionError.jsp"/>'>javax.ServletException</a>
            <br/>
    </body>
</f:view>
