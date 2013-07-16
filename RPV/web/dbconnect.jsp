<%-- 
    Document   : dbconnect
    Created on : 16/07/2013, 19:36:04
    Author     : unipampa
--%>

<%@page import="banco.JDBC"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conexao com o Banco de Dados</title>
    </head>
    <body>
        <h1>Status: 
            <%
                if (new JDBC().testarConexao()) {
                    out.print("Conectou!");
                } else {
                    out.print("Falhou!");
                }
            %>
        </h1>
    </body>
</html>