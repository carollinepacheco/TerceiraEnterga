
package Controlador;

import Modelo.Pacote;
import ModeloDAO.PacoteDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {

    String listar="listar.jsp";
    String add="add.jsp";
    String edit="edit.jsp";
    Pacote p=new Pacote();
    PacoteDao dao=new PacoteDao();
    int id;
    int idFun;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;            
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Cadastrar")){
            id=Integer.parseInt(request.getParameter("txtId"));
            String destino=request.getParameter("txtDestn");
            String hospedagem=request.getParameter("txtHosped");
            String diarias=request.getParameter("txtDiarias");
            double preco = Double.parseDouble(request.getParameter("txtPreco"));
            idFun=Integer.parseInt(request.getParameter("txtIdFun"));
            p.setId(id);
            p.setDestino(destino);
            p.setHospedagem(hospedagem);
            p.setDiarias(diarias);
            p.setPreco(preco);
            p.setidFuncionario(idFun);
            p.setId(id);
            dao.add(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idpac",request.getParameter("id"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Atualizar")){
            id=Integer.parseInt(request.getParameter("txtId"));
            String destino=request.getParameter("txtDestn");
            String hospedagem=request.getParameter("txtHosped");
            String diarias=request.getParameter("txtDiarias");
            double preco = Double.parseDouble(request.getParameter("txtPreco"));
            id=Integer.parseInt(request.getParameter("txtIdFun"));
            p.setId(id);
            p.setDestino(destino);
            p.setHospedagem(hospedagem);
            p.setDiarias(diarias);
            p.setPreco(preco);
            p.setidFuncionario(idFun);
            dao.add(p);
            dao.edit(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("deletar")){
            id=Integer.parseInt(request.getParameter("id"));
            p.setId(id);
            dao.deletar(id);
            acceso=listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
