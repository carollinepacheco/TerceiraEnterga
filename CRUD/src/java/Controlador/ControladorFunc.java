package Controlador;

import Modelo.Funcionario;
import ModeloDAO.FuncionarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControladorFunc extends HttpServlet {

    String listar = "listarFunc.jsp";
    String add = "addFunc.jsp";
    String edit = "editFunc.jsp";
    Funcionario f = new Funcionario();
    FuncionarioDao fdao = new FuncionarioDao();
    int id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
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
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Cadastrar")) {
            id = Integer.parseInt(request.getParameter("txtId"));
            String Nome = request.getParameter("txtNom");
            String Email = request.getParameter("txtEmail");
            String Senha = request.getParameter("txtPass");
            f.setId(id);
            f.setNome(Nome);
            f.setEmail(Email);
            f.setSenha(Senha);
            fdao.add(f);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idfunc", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Atualizar")) {
            id = Integer.parseInt(request.getParameter("txtId"));
            String Nome = request.getParameter("txtNom");
            String Email = request.getParameter("txtEmail");
            String Senha = request.getParameter("txtPass");
            f.setId(id);
            f.setNome(Nome);
            f.setEmail(Email);
            f.setSenha(Senha);
            fdao.add(f);
            fdao.edit(f);
            acceso = listar;
        } else if (action.equalsIgnoreCase("deletar")) {
            id = Integer.parseInt(request.getParameter("id"));
            f.setId(id);
            fdao.deletar(id);
            acceso = listar;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("login");
        if (action.equalsIgnoreCase("Entrar")) {
            String user = request.getParameter("textuser");
            String pass = request.getParameter("textpass");
            f = fdao.validar(user, pass);
            if (f.getEmail() != null) {
                if (f.getSenha() != null) {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
