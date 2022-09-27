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
        <title>Pacotes</title>
    </head>
    <body>
        <div class="container">
            <h1>Pacotes</h1>
            <div class="d-grid">
                <a class="btn btn-success" href="pacotes.jsp">Retornar</a>
                <a class="btn btn-success" href="Controlador?accion=add">Adicionar</a>
            </div>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">DESTINO</th>
                        <th class="text-center">HOSPEDAGEM</th>
                        <th class="text-center">DIARIAS</th>
                        <th class="text-center">PREÇO</th>
                        <th class="text-center">ID FUNCIONÁRIO</th>
                        <th class="text-center">AÇÃO</th>
                    </tr>
                </thead>
                <%
                    PacoteDao dao = new PacoteDao();
                    List<Pacote> list = dao.listar();
                    Iterator<Pacote> iter = list.iterator();
                    Pacote pac = null;
                    while (iter.hasNext()) {
                        pac = iter.next();

                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= pac.getId()%></td>
                        <td class="text-center"><%= pac.getDestino()%></td>
                        <td class="text-center"><%= pac.getHospedagem()%></td>
                        <td class="text-center"><%= pac.getDiarias()%></td>
                        <td class="text-center"><%= pac.getPreco()%></td>
                        <td class="text-center"><%= pac.getidFuncionario()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&id=<%= pac.getId()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=deletar&id=<%= pac.getId()%>">Deletar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
