<%-- 
    Document   : dbconnect
    Created on : 15/07/2013, 15:15:04
    Author     : Caio Alexandre
--%>

<%@page import="java.sql.*"%>
<%@page import="banco.JDBC"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Conexao com o Banco de Dados</title>
        
        <label style="font-size: 10;"><a href="index.jsp">Home</a></label>
        <label style="font-size: 10;"><a href="curriculo.jsp">Curriculo</a></label>
        <label style="font-size: 10;"><a href="dbconnect.jsp">Banco de Dados</a></label>
    </head>
    <body style="padding-top: 20px;">
        <h1>Status: 
            <%
                if (new JDBC().testarConexao()) {
                    out.print("Conectado!");
                } else {
                    out.print("Falhou!");
                }
            %>
        </h1>
        <label style="font-size: 10; margin-left: 55%;"> developed by TheLinthus (Caio Alexandre) </label>
    </body>
</html>