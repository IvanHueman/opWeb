<%-- 
    Document   : Delete
    Created on : Jun 23, 2024, 7:53:36 PM
    Author     : Alyta
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Class.Departamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gestión de Entidades</title>
</head>
<style>
    body {
        background: #f1f1f1;
        font-family: 'Segoe UI';
        display: grid;
        place-content: center;
        font-size: 16px;
    }
    
    .form-to-delete {
        background: #fff;
        border: 1px solid #fff;
        border-radius: 10px;
        display: flex;
        flex-direction: column;
        gap: 1rem;
        padding: 20px;
    }
    
    h1 {
        margin: 0 0 5px 0;
    }
</style>
<body>
    <form class="form-to-delete" action="Delete" method="POST">
        <h1>Eliminar Departamento</h1>
        <select name="id">
             <c:forEach items ="${requestScope.departamentos}" var="e">
                <option value="${e.id}"><c:out value="${e.id}"/> - <c:out value="${e.nombre }"/></option>
                
            </c:forEach>
        </select>
        <input type="submit" value="Delete" />
    </form>
</body>
</html>
