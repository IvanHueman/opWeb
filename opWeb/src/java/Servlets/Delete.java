/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Class.DAO;
import Class.DAOimp;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import Class.Departamento;

/**
 *
 * @author alyta
 */
public class Delete extends HttpServlet {

    private final DAO<Departamento> dao = new DAOimp();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            DAO<Departamento> c = new DAOimp();
           var deps = c.readAll();
            System.out.println(deps);
            request.setAttribute("departamentos", deps);
        } 
        catch (java.sql.SQLException ex) {
            System.out.println(ex.getMessage());
        }
        
         request.getRequestDispatcher("Delete.jsp").include(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt (request.getParameter("id"));
        
        try {
            dao.delete(id);
           
        } catch (java.sql.SQLException ex) {
            System.out.println(ex);
        }
        
        doGet(request, response);
    }
   
}

