/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chitkara.controller;

import chitkara.dao.Complaintdao;
import chitkara.operation.ComplaintOperation;
import static chitkara.operation.ComplaintOperation.complaint;
import chitkara.operation.UserOperation;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Suchita
 */
public class complaint extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            Complaintdao c=new Complaintdao();
            c.setFirst_name(request.getParameter("first_name"));
             c.setLast_name(request.getParameter("last_name"));
              c.setcomplaint(request.getParameter("complaint"));
              
              int i=ComplaintOperation.complaint(c);
                  
              if(i>0)
              {
                  HttpSession session = request.getSession(false);
                  session.setAttribute("message","complaint Added Successfully");
                  response.sendRedirect("complaint.jsp"); 
              }
              else
              {
                  HttpSession session=request.getSession(false);
                  session.setAttribute("message","complaint Not Added");
                  response.sendRedirect("complaint.jsp");
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
