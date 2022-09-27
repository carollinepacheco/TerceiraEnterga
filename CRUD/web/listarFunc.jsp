<%@page import="Modelo.Funcionario"%>
<%@page import="ModeloDAO.FuncionarioDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Pacote"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.PacoteDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Funcionario</title>
    </head>
    <body>
        <div class="container">
            <h1>Funcionario</h1>
            <div class="d-grid">
                <a class="btn btn-success" href="funcionario.jsp">Retornar</a>
                <a class="btn btn-success" href="ControladorFunc?accion=add">Adicionar</a>
            </div>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">NOME</th>
                        <th class="text-center">EMAIL</th>
                        <th class="text-center">SENHA</th>
                        <th class="text-center">AÇÃO</th>
                    </tr>
                </thead>
                <%
                    FuncionarioDao dao = new FuncionarioDao();
                    List<Funcionario> list = dao.listar();
                    Iterator<Funcionario> iter = list.iterator();
                    Funcionario fun = null;
                    while (iter.hasNext()) {
                        fun = iter.next();

                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= fun.getId()%></td>
                        <td class="text-center"><%= fun.getNome()%></td>
                        <td class="text-center"><%= fun.getEmail()%></td>
                        <td class="text-center"><%= fun.getSenha()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="ControladorFunc?accion=editar&id=<%= fun.getId()%>">Editar</a>
                            <a class="btn btn-danger" href="ControladorFunc?accion=deletar&id=<%= fun.getId()%>">Deletar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
