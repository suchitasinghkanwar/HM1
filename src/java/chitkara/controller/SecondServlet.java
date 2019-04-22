package chitkara.controller;

import chitkara.dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SecondServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            String uid=request.getParameter("uid");
            UserDao user=(UserDao)request.getAttribute("user");   // "user" -> key
            PrintWriter out=response.getWriter();
            out.println("<html><head><title>Dashboard</title></head><body>");
            out.println("<h1>Hello "+user.getFirst_name()+" </h1><h2>You are "+user.getUser_type()+
                    "</h2><h3>Your password is "+user.getPassword()+"</body></html>");
            
//            String name=request.getParameter("username");
//            PrintWriter out=response.getWriter();
//            out.println("this is second servlet "+name);
        }
        
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
    
}
