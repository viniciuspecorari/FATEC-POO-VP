/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
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
@WebServlet(urlPatterns = {"/ViniciusServelet.html"})
public class ViniciusServelet extends HttpServlet {

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
            out.println("<title>ViniciusServelet</title>"); 
            
            //VOLTAR
            out.println("<p id='voltar'><a href='index.html'> Voltar </a></p>");
            
            out.println("</head>");
            out.println("<body>");
            
            out.println("<h1>Matrícula Vinicius Pecorari</h1>"); 
            
            //Cabeçalho página 
            out.println("<section id='cabecalho' style='font-family: sans-serif'>");          
                out.println("<p id='legenda' style='font-size: 22px;'>Hoje é: "+new Date()+"<p/>");
            out.println("</section>");
            
            //Dados Vinicius
            out.println("<section id='corpo' style='font-family: sans-serif;'>");
            
            //INICIO TABELA
            out.println("<table>");
            
                //PRIMEIRA LINHA
                out.println("<tr>");
                    out.println("<th>MATRÍCULA (RA)</th>");
                    out.println("<th>NOME</th>");
                    out.println("<th>GitHub</th>");    
                out.println("</tr>");
                
                //SEGUNDA LINHA
                out.println("<tr>");
                    out.println("<td>1290482012015</td>");
                    out.println("<td>VINICIUS PECORARI</td>");
                    out.println("<td><a href='https://github.com/viniciuspecorari'>https://github.com/viniciuspecorari</a></td>");
                out.println("</tr>");
            
            //FIM TABELA
            out.println("</table>");
            
            
            
            //FIM SECTION
            out.println("</section>");
            
            out.println("<style>");
            out.println("table, th, td{width:50%; border: 2px groove black; border-collapse: collapse;}");
            out.println("th, td{padding:15px;}");
            out.println("th{text-align:center;}");
            
            out.println("table{border-spacing:5px;}");
            out.println("body{margin:1%;}");
            out.println("#voltar{font-family: sans-serif; font-size: 18px; color;blue;}");
            out.println("h1{font-family: sans-serif; font-size: 25px; text-align:center;}");
            out.println("section{display: flex;flex-direction: row;justify-content: center;align-items: center}");
            out.println("</style>");
            
            out.println("</body>");
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
