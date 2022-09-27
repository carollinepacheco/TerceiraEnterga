<%@page import="Modelo.Funcionario"%>
<%@page import="ModeloDAO.FuncionarioDao"%>
<%@page import="ModeloDAO.PacoteDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Funcionário</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <%
                    FuncionarioDao dao = new FuncionarioDao();
                    int id = Integer.parseInt((String) request.getAttribute("idfunc"));
                    Funcionario f = (Funcionario) dao.list(id);
                %>
                <h1>Modificar Funcionário</h1>
                <form action="ControladorFunc">
                    ID:<br>
                    <input class="form-control" type="text" name="txtId" value="<%= f.getId()%>"><br>
                    Nome: <br>
                    <input class="form-control" type="text" name="txtNom" value="<%= f.getNome()%>"><br>
                    Email:<br>
                    <input class="form-control" type="text" name="txtEmail" value="<%= f.getEmail()%>"><br>
                    Senha: <br>
                    <input class="form-control" type="text" name="txtPass" value="<%= f.getSenha()%>"><br>
                    

                    <input type="hidden" name="txtId" value="<%= f.getId()%>">
                    <input class="btn btn-primary" type="submit" name="accion" value="Atualizar"> 
                    <a class="btn btn-success" href="ControladorFunc?accion=listar">Retornar</a>
                </form>
            </div>

        </div>
    </body>
</html>
