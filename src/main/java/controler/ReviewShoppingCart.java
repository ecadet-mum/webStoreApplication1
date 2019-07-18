package controler;

import modele.ShoppingCart;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ReviewShoppingCart")
public class ReviewShoppingCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ShoppingCart spCart=(ShoppingCart) request.getSession().getAttribute("shoppingCart");
        request.getSession().setAttribute("shoppingCart",spCart);
        System.out.println("last "+spCart);
        RequestDispatcher reqDisp=request.getRequestDispatcher("WEB-INF/views/reviewShoppingCart.jsp");
        reqDisp.forward(request,response);
    }
}
