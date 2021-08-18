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
@WebServlet(urlPatterns = {"/RepostaServelet.html"})
public class RepostaServelet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Resposta</title>");
          
            //VOLTAR
            out.println("<p id='voltar'><a href='MathServelet.html'> Voltar </a></p>");
            out.println("</head>");
            
            out.println("<body>");
            
            //Cabeçalho página
            out.println("<h1>MathServelet: Resposta</h1>"); 
            
            out.println("<section id='cabecalho' style='font-family: sans-serif'>");          
                out.println("<p id='legenda' style='font-size: 22px;'>Hoje é: "+new Date()+"<p/>");
            out.println("</section>");
            
            out.println("<section id='resposta' style='font-family: sans-serif'>");
                
                //variaveis
                double valor1 = 0, valor2 = 0;
                String op="";
                
                try{
                    valor1 = Double.parseDouble(request.getParameter("valor1"));
                    valor2 = Double.parseDouble(request.getParameter("valor2")); 
                    op = request.getParameter("operacao");
                
                    if(op.equals("somar")){
                        out.println("<h4>"+valor1+" + "+valor2+" = "+(valor1+valor2)+"</h4>");
                    }else if(op.equals("subtrair")) {
                        out.println("<h4>"+valor1+" - "+valor2+" = "+(valor1-valor2)+"</h4>");
                    }else if(op.equals("multiplicar")){
                        
                        out.println("<h4>"+valor1+" * "+valor2+" = "+(valor1*valor2)+"</h4>");
                    }else if(op.equals("dividir")){
                        
                        out.println("<h4>"+valor1+" / "+valor2+" = "+(valor1/valor2)+"</h4>");
                    }
                
                }catch(Exception ex){
                out.println("<p style='color:red;'>Erro ao ler o parâmetro: "+ex.getLocalizedMessage()+"</p>");
                }
            
            out.println("</section>");
            
            out.println("</body>");
            
            //CSS
            out.println("<style>");
            out.println("table, th, td{width:50%; border: 2px groove black; border-collapse: collapse;}");
            out.println("th, td{padding:15px;}");
            out.println("th{text-align:center;}");
            
            out.println("table{border-spacing:5px;}");
            out.println("body{margin:1%;}");
            out.println("#voltar{font-family: sans-serif; font-size: 18px; color;blue;}");
            
            out.println("h1{font-family: sans-serif; font-size: 25px; text-align:center;}");
            out.println("#resposta{font-family: sans-serif; font-size: 25px; text-align:center; color:blue;animation: blinker 1s linear infinite;opacity: 80%;}");
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
