<%-- 
    Document   : Read
    Created on : Jun 23, 2024, 7:54:11 PM
    Author     : Alyta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Class.Departamento"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es-419">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Departamentos</title>
    </head>
    <style>
        body {
        background: #f1f1f1;
        font-family: 'Segoe UI';
        display: grid;
        place-content: center;
        font-size: 16px;
        }
        table {
            border-collapse: collapse;
            border: 1px solid #000;
        }
        th {
            text-align-all: center;
            border: 1px solid #000;
        }
        td {
            text-align: center;
            border: 1px solid #000;
        }
        .button {
            background: gray;
            color: #000;
            height: 20px;
            border-radius: 5px;
            text-decoration: none;
            width: 90px;
            text-align: center;
            align-items: center;
            display: flex;
            justify-content: center;
            margin: 5px;
        }

    </style>
    <body>
        <h3>Mi DATABASE.</h3>
        <a style="align-self: center;" class="button" href="/opWeb/Add">
             <span>Agregar</span>
        </a>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items ="${requestScope.departamentos}" var="e">
                <tr>
                    <td><c:out value="${e.id}"/></td>
                    <td><c:out value="${e.nombre}"/></td>
                    <td>
                        <a class="button" href="/opWeb/Update">
                            <span>Actualizar</span>
                        </a>
                        <a class="button" href="/opWeb/Delete">
                             <span>Borrar</span>
                        </a>                       
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
