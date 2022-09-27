<%@page import="Modelo.Pacote"%>
<%@page import="ModeloDAO.PacoteDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <%
                    PacoteDao dao = new PacoteDao();
                    int id = Integer.parseInt((String) request.getAttribute("idpac"));
                    Pacote p = (Pacote) dao.list(id);
                %>
                <h1>Modificar Pacote</h1>
                <form action="Controlador">
                    ID:<br>
                    <input class="form-control" type="text" name="txtId" value="<%= p.getId()%>"><br>
                    Destino: <br>
                    <input class="form-control" type="text" name="txtDestn" value="<%= p.getDestino()%>"><br>
                    Hospedagem:<br>
                    <input class="form-control" type="text" name="txtHosped" value="<%= p.getHospedagem()%>"><br>
                    Diarias: <br>
                    <input class="form-control" type="text" name="txtDiarias" value="<%= p.getDiarias()%>"><br>
                    Preço: <br>
                    <input class="form-control" type="text" name="txtPreco" value="<%= p.getPreco()%>"><br>
                    Id Funcionário: <br>
                    <input class="form-control" type="text" name="txtIdFun" value="<%= p.getidFuncionario()%>"><br>


                    <input type="hidden" name="txtid" value="<%= p.getId()%>">
                    <input class="btn btn-primary" type="submit" name="accion" value="Atualizar"> 
                    <a class="btn btn-success" href="Controlador?accion=listar">Retornar</a>
                </form>
            </div>

        </div>
    </body>
</html>
