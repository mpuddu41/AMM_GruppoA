/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.scanner.servlets;

import amm.scanner.classes.Vendor;
import amm.scanner.classes.Item;
import amm.scanner.classes.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mauro
 */
@WebServlet(name = "Venditore", urlPatterns = {"/venditore.html"})
public class Venditore extends HttpServlet {

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
        
        HttpSession session = request.getSession();
        
        if(session != null){
            System.out.println("SESSION EXISTS");
            if(session.getAttribute("loggedVendor") != null){
                System.out.println("USER LOGGED");
                request.setAttribute("vendor", session.getAttribute("loggedVendor"));
                if(request.getParameter("SubmitItem") != null){
                    System.out.println("SUBMIT != NULL");
                    String name = request.getParameter("itemName");
                    String description = request.getParameter("itemDesc");
                    String imgUrl = request.getParameter("imgUrl");
                    int quantity = 0;
                    double price = 0;
                    if (request.getParameter("itemQuantity").matches("\\d+")){
                        System.out.println("QUANTITY VALID");
                        quantity = Integer.parseInt(request.getParameter("itemQuantity"));
                    }
                    if (request.getParameter("itemPrice").matches("[0-9]+(\\.[0-9][0-9]?)?")){
                        System.out.println("PRICE VALID");
                        price = Double.parseDouble(request.getParameter("itemPrice"));
                    }

                    if(name != null && description != null && imgUrl != null && quantity > 0 && price > 0){
                        System.out.println("ALL DATA != NULL");
                        Item itemPosted = new Item( 99, 99, name, price, quantity, description, imgUrl);
                        request.setAttribute("itemPosted", itemPosted);
                        request.setAttribute("vendor", true);
                        request.getRequestDispatcher("venditore.jsp").forward(request, response);
                    } else {
                        System.out.println("SOME DATA = NULL");
                        System.out.println(name+" "+price+" "+quantity+" "+description+" "+imgUrl);
                        request.setAttribute("input_error", true);
                        request.getRequestDispatcher("venditore.jsp").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("venditore.jsp").forward(request, response);
                }                
                    
            } else {
                request.setAttribute("login_error", true);
                request.getRequestDispatcher("venditore.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("login_error", true);
            request.getRequestDispatcher("venditore.jsp").forward(request, response);
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