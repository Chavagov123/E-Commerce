<%-- 
    Document   : index
    Created on : 13-Feb-2024, 7:30:03 pm
    Author     : cpedd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.mycart.helper.FactoryProvider"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyCart - Home</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        
        <%@include file="components/navbar.jsp" %>
        <h1>Hello World!</h1>
        <h1>Creating session factory object</h1>
        
        <%
            out.println(FactoryProvider.getFactory()+"<br>");
            out.println(FactoryProvider.getFactory()+"<br>");
            out.println(FactoryProvider.getFactory());
        %>
    </body>
</html>
