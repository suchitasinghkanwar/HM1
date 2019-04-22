

package chitkara.controller;

import chitkara.dao.UserDao;
import chitkara.operation.UserOperation;
import static chitkara.operation.UserOperation.addStudent;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AddStudentController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            UserDao user=new UserDao();
            user.setFirst_name(request.getParameter("first_name"));
             user.setLast_name(request.getParameter("last_name"));
              user.setUid(request.getParameter("uid"));
              user.setUser_type("User");
              user.setPassword("123456");
              int i=UserOperation.addStudent(user);
                  
              if(i>0)
              {
                  HttpSession session = request.getSession(false);
                  session.setAttribute("message","Student Added Successfully");
                  response.sendRedirect("addStudent.jsp"); 
              }
              else
              {
                  HttpSession session=request.getSession(false);
                  session.setAttribute("message","Student Not Added");
                  response.sendRedirect("addStudent.jsp");
              }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
