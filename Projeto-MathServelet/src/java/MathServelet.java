/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Desenvolvedor
 */
@WebServlet(urlPatterns = {"/MathServelet.html"})
public class MathServelet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>VP MathServelet</title>");
          
            //VOLTAR
            out.println("<p id='voltar'><a href='index.html'> Voltar </a></p>");
            out.println("</head>");
            
            out.println("<body>");
            
            //Cabeçalho página
            out.println("<h1>MathServelet: Calculadora</h1>"); 
            
            out.println("<section id='cabecalho' style='font-family: sans-serif; padding-bottom:2%;' >");          
                out.println("<p id='legenda' style='font-size: 22px;'>Hoje é: "+new Date()+"<p/>");
            out.println("</section>");
            
            
            out.println("<section id='principal' style='font-family: sans-serif'>");          
            out.println("<form action='RepostaServelet.html'>");
                
                //VALORES
//              out.println("<p id ='legenda'><b>Valor 1:</b></p>");
                out.println("<input type='number' step='0.0' id='valor' name='valor1' placeholder='Valor 1'><br><br><br>");
                
//              out.println("<p id='legenda'><b>Valor 2:</b></p>");
                out.println("<input type='number' step='0.0' id='valor' name='valor2' placeholder='Valor 2'><br><br>");
            
                //OPERAÇÃO
                out.println("<input type='radio' id='soma' name='operacao' value='somar'>");
                out.println("<label id='legenda'>Somar</label><br>");
                
                out.println("<input type='radio' id='subtrair' name='operacao' value='subtrair'");
                out.println("<label id='legenda'> Subtrair</label><br>");
                
                out.println("<input type='radio' id='multiplicar' name='operacao' value='multiplicar'");
                out.println("<label id='legenda'> Multiplicar</label><br>");
                
                out.println("<input type='radio' id='dividir' name='operacao' value='dividir'");
                out.println("<label id='legenda'> Dividir</label><br><br>");
                
                out.println("<input type='submit' value='Calcular'>");
                
            out.println("</section>");
            out.println("</form>");
            out.println("</body>");
            
            //CSS
            out.println("<style>");
            out.println("table, th, td{width:50%; border: 2px groove black; border-collapse: collapse;}");
            out.println("th, td{padding:15px;}");
            out.println("th{text-align:center;}");
            
            out.println("table{border-spacing:5px;}");
            out.println("body{margin:1%;}");
            out.println("#valor{width:400px;}");
            
            out.println("input[type=submit]{width:100%; height:2.5em; background-color:#067869; color:white; font-weight:bold;font-family: sans-serif; font-size: 18px;}");
            out.println("input[type=submit]{border:none; padding;15px 32px; text-align: center; text-decoration:none; display:inline-block; margin:4px 2px; cursor:pointer; border-radius:5px 5px 5px 5px;}");
            
            out.println("input[type=number]{font-family: sans-serif; font-size: 16px; font-weight:bold; border: 1px none ; border-bottom: 2px solid grey;width:10%; height: 1.5em;}");
            out.println("input[type=number]:focus{border: 1px none ; border-bottom: 2px solid grey;width:10%; height: 1.5em;}");
            
            out.println("input[type=radio]{border:0px; width:10%; height: 1.5em;}");
            
            out.println("#legenda{font-family: sans-serif; font-size: 18px;}");
            out.println("#voltar{font-family: sans-serif; font-size: 18px; color;blue;}");
            out.println("h1{font-family: sans-serif; font-size: 25px; text-align:center;}");
            out.println("section{display: flex;flex-direction: row;justify-content: center;align-items: center}");
            out.println("</style>");
            
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
