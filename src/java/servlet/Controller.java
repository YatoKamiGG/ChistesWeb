/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Entities.Categoria;
import Entities.Chiste;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jpautil.JPAUtil;

/**
 *
 * @author mallu
 */
@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public class Controller extends HttpServlet {

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
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher;
        
        String op;
        String sql;
        Query query;
        EntityManager em = null;
        
        if (em == null) {
            em = JPAUtil.getEntityManagerFactory().createEntityManager();
            session.setAttribute("em", em);
        }
        
        op = request.getParameter("op");
        
        if(op.equals("inicio")){
            sql = "Select c from Categoria c";
            query = em.createQuery(sql);
            List<Categoria> categorias = query.getResultList();
            session.setAttribute("categorias", categorias);
            session.setAttribute("Bandera", true);
            
            dispatcher = request.getRequestDispatcher("home.jsp");
            dispatcher.forward(request, response);
        }else if(op.equals("categoriaselec")){
            String idCategoria = request.getParameter("idCategoria");
            sql = "Select c from Chiste c where c.idcategoria.id="+idCategoria;
            query =em.createQuery(sql);
            List<Chiste> chistes = query.getResultList();
            request.setAttribute("chistes",chistes);
            session.setAttribute("idcate", idCategoria);
            session.setAttribute("Bandera", true);
            
            dispatcher = request.getRequestDispatcher("home.jsp");
            dispatcher.forward(request, response);
        }else if(op.equals("catemejores")){
            boolean bandera = Boolean.parseBoolean( request.getParameter("mejores"));
            if(bandera){
                sql = "select p.idchiste from Puntos p group by p.idchiste order by avg(p.puntos) DESC ";
                query =em.createQuery(sql);
                List<Chiste> chistes = query.getResultList();
                request.setAttribute("chistes",chistes);
                session.setAttribute("Bandera", !bandera);
            }else{
                String idCategoria = request.getParameter("idCategoria");
                sql = "Select c from Chiste c where c.idcategoria.id="+idCategoria;
                query =em.createQuery(sql);
                List<Chiste> chistes = query.getResultList();
                request.setAttribute("chistes",chistes);
                session.setAttribute("Bandera", !bandera);
            }
                dispatcher = request.getRequestDispatcher("home.jsp");
                dispatcher.forward(request, response);
        }else if(op.equals("insertarCategorias")){
                String categoria = request.getParameter("Categoria");
                Categoria nuevaCategoria = new Categoria();
                nuevaCategoria.setNombre(categoria);
                em.getTransaction().begin();
                em.persist(nuevaCategoria);
                em.getTransaction().commit();
                
                
                dispatcher = request.getRequestDispatcher("index.html");
                dispatcher.forward(request, response);
        }else if(op.equals("insertarChiste")){
                String apodo = request.getParameter("Apodo");
                String chiste = request.getParameter("Chiste");
                String categoria = request.getParameter("Categoria");
                Categoria categoriaTotal = em.find(Categoria.class, Short.parseShort(categoria));
                String titulo = request.getParameter("Titulo");
                Chiste nuevoChiste = new Chiste();
                nuevoChiste.setAdopo(apodo);
                nuevoChiste.setIdcategoria(categoriaTotal);
                nuevoChiste.setTitulo(titulo);
                nuevoChiste.setDescripcion(chiste);
                em.getTransaction().begin();
                em.persist(nuevoChiste);
                em.getTransaction().commit();
                
                dispatcher = request.getRequestDispatcher("index.html");
                dispatcher.forward(request, response);
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
