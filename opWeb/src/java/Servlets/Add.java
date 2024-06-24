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
public class Add extends HttpServlet {
    private final DAO<Departamento> dao = new DAOimp();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Add.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        var nombre = request.getParameter("nombre");
        
       try {
           Departamento dep = new Departamento();
           
           dep.setNombre(nombre);
           
           if (nombre.isEmpty() || nombre.isBlank()) {
               return;
           }
           
            dao.insert(dep);
        } catch (java.sql.SQLException ex) {
            System.out.println(ex);
        }
       
       response.sendRedirect("Add.jsp");
    }
   
}
