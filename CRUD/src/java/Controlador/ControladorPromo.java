
package Controlador;

import Modelo.Promocao;
import ModeloDAO.PromocaoDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorPromo extends HttpServlet {

    String listar="listarPromo.jsp";
    String add="addPromo.jsp";
    String edit="editPromo.jsp";
    Promocao promo=new Promocao();
    PromocaoDao pDao=new PromocaoDao();
    int id;
    
   
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
            String nome=request.getParameter("txtNome");
            String tipo=request.getParameter("txtTipo");
            double desconto = Double.parseDouble(request.getParameter("txtDesc"));
            int idPacote=Integer.parseInt(request.getParameter("txtIdPacote"));
            promo.setId(id);
            promo.setNome(nome);
            promo.setTipo(tipo);
            promo.setDesconto(desconto);
            promo.setIdPacote(idPacote);
            pDao.add(promo);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idpro",request.getParameter("id"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Atualizar")){
            int id=Integer.parseInt(request.getParameter("txtId"));
            String nome=request.getParameter("txtNome");
            String tipo=request.getParameter("txtTipo");
            double desconto = Double.parseDouble(request.getParameter("txtDesc"));
            int idPacote=Integer.parseInt(request.getParameter("txtIdPacote"));
            promo.setId(id);
            promo.setNome(nome);
            promo.setTipo(tipo);
            promo.setDesconto(desconto);
            promo.setIdPacote(idPacote);
            pDao.add(promo);
            pDao.edit(promo);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("deletar")){
            int id=Integer.parseInt(request.getParameter("id"));
            promo.setId(id);
            pDao.deletar(id);
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
