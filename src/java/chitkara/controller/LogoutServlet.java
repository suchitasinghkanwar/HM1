package chitkara.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        doPost(request,response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
              
            request.getRequestDispatcher("index.html").include(request, response);  
              
            HttpSession session=request.getSession();  
            session.invalidate();  
              
            out.print("You are successfully logged out!");  
              
    }



    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
