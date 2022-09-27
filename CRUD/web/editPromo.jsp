<%@page import="Modelo.Promocao"%>
<%@page import="ModeloDAO.PromocaoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Promocão</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <%
                    PromocaoDao dao = new PromocaoDao();
                    int id = Integer.parseInt((String) request.getAttribute("idpro"));
                    Promocao p = (Promocao) dao.list(id);
                %>
                <h1>Modificar Pacote</h1>
                <form action="ControladorPromo">
                    ID:<br>
                    <input class="form-control" type="text" name="txtId" value="<%= p.getId()%>"><br>
                    Destino: <br>
                    <input class="form-control" type="text" name="txtNome" value="<%= p.getNome()%>"><br>
                    Hospedagem:<br>
                    <input class="form-control" type="text" name="txtTipo" value="<%= p.getTipo()%>"><br>
                    Diarias: <br>
                    <input class="form-control" type="text" name="txtDesc" value="<%= p.getDesconto()%>"><br>
                    Id Pacote: <br>
                    <input class="form-control" type="text" name="txtIdPacote" value="<%= p.getIdPacote()%>"><br>


                    <input type="hidden" name="txtid" value="<%= p.getId()%>">
                    <input class="btn btn-primary" type="submit" name="accion" value="Atualizar"> 
                    <a class="btn btn-success" href="ControladorPromo?accion=listar">Retornar</a>
                </form>
            </div>

        </div>
    </body>
</html>
