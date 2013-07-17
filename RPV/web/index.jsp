<%-- 
    Document   : index
    Created on : 09/07/2013, 08:38:26
    Author     : Augusto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Upload de Arquivos </title>
        
        <label style="font-size: 10;"><a href="index.jsp">Home</a></label>
        <label style="font-size: 10;"><a href="curriculo.jsp">Curriculo</a></label>
        <label style="font-size: 10;"><a href="dbconnect.jsp">Banco de Dados</a></label>
    </head>

    <body style="padding-top: 20px;">
        <form method="post" action="upload.php" enctype="multipart/form-data">
            <center>
                <b style="padding: 20px; font-size: 50px; color: orange;">RPV</b>
                <img src="database.png" width="70px" height="70px">
                <br>
                <label style="padding: 15px; padding-bottom: 25px; font-size: 20px; color: silver;"> UPLOAD DE ARQUIVOS</label>
                <table style="width: 435px; border: 1px solid; padding: 12px;">
                    <tr>
                        <td>
                            <label>Nome:</label>
                        </td>
                        <td>
                            <input type="text" id="nome" name="nome" title="Informe o seu nome."/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Conteudo:</label>
                        </td>
                        <td>
                            <select name="conteudo" title="Selecione o conteรยบdo.">
                                <option>Exercicio</option>
                                <option>Textos</option>
                                <option>Fotos</option>
                                <option>Outros</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Arquivo:</label>
                        </td>
                        <td>
                            <input type="file" name="arquivo" title="Buscar arquivo para upload" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Enviar" />
                        </td>
                    </tr>
                </table>
            </form>
            <fieldset style="width: 408px; align:center; margin-bottom: 25px;">
                <legend>Repositorio</legend>
                <div style="height: 100px; overflow: auto;">
                    <table style="cursor: pointer; margin-top: 4px;" align="left">
                        <?
                        $aDiretorios = scandir('repositorio');
                        for($iI = 2; $iI < count($aDiretorios); $iI++)       
                        echo '<tr style="border: 1px solid black;" onClick="js_usuario(this.cells[1].innerHTML);">'.
                        '<td><img src="folder.png" width="34px" height="34px"></td>'.
                        '<td>'.$aDiretorios[$iI].'</td></tr>';
                        ?>      
                    </table>
                </div>
            </fieldset>
        </center>
    <label style="font-size: 10; margin-left: 55%;"> developed by Matheus Marinho </label>
    </body>
</html>
<script>
    function js_usuario(sNome) {
        document.getElementById("nome").value = sNome;
    }
</script>
