/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Desenvolvedor
 */


@WebServlet(urlPatterns = {"/juros-simples.html"})
public class JurosSimplesServlet extends HttpServlet {

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
            out.println("<title>Resposta: Juros Simples</title>");
            
            //VOLTAR
            out.println("<p id='voltar'><a href='index.html'>Voltar </a></p>"); 
            out.println("</head>");
            
            
            
            out.println("<body>");
            out.println("<h1>Resposta: Juros Simples</h1>");
            
            out.println("<section id='resposta' style='font-family: sans-serif'>");
                
                //variaveis
                double capital = 0, taxa=0, simples  = 0, montante = 0;
                int tempo = 0;
                
                
                try{
                    capital = Double.parseDouble(request.getParameter("capital"));
                    taxa = Double.parseDouble(request.getParameter("taxa")); 
                    tempo = Integer.parseInt(request.getParameter("tempo"));
                    
                    taxa = taxa/100;
                    simples = capital * taxa * tempo;
                    montante = capital + simples;
                    
                    out.println("O valor dos juros da aplicação é de R$ "+simples+" e o montante a ser resgatado é de R$ "+montante);
                    
                }catch(Exception ex){
                out.println("<p style='color:red;'>Erro ao ler o parâmetro: "+ex.getLocalizedMessage()+"</p>");
                }
            
            out.println("</section>");
            
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