<%@page import="Modelo.Promocao"%>
<%@page import="ModeloDAO.PromocaoDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Promoção</title>
    </head>
    <body>
        <div class="container">
            <h1>Promoção</h1>
            <div class="d-grid">
                <a class="btn btn-success" href="promocao.jsp">Retornar</a>
                <a class="btn btn-success" href="ControladorPromo?accion=add">Adicionar</a>
            </div>          
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">NOME</th>
                        <th class="text-center">TIPO DA PROMOCÃO</th>
                        <th class="text-center">DESCONTO</th>
                        <th class="text-center">ID DO PACOTE</th>
                        <th class="text-center">AÇÃO</th>
                    </tr>
                </thead>
                <%
                    PromocaoDao dao = new PromocaoDao();
                    List<Promocao> list = dao.listar();
                    Iterator<Promocao> iter = list.iterator();
                    Promocao promo = null;
                    while (iter.hasNext()) {
                        promo = iter.next();

                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= promo.getId()%></td>
                        <td class="text-center"><%= promo.getNome()%></td>
                        <td class="text-center"><%= promo.getTipo()%></td>
                        <td class="text-center"><%= promo.getDesconto()%></td>
                        <td class="text-center"><%= promo.getIdPacote()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="ControladorPromo?accion=editar&id=<%= promo.getId()%>">Editar</a>
                            <a class="btn btn-danger" href="ControladorPromo?accion=deletar&id=<%= promo.getId()%>">Deletar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
