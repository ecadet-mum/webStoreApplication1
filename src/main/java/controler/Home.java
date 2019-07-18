package controler;

import dataaccess.ProductData;
import modele.Product;
import modele.ShoppingCart;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "Home")
public class Home extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HashMap<Integer, Product> listProduct=new ProductData().getListProduct();
        request.setAttribute("listProduct",listProduct);
        ShoppingCart spCart=(ShoppingCart) request.getSession().getAttribute("shoppingCart");
        Integer login=(Integer) request.getSession().getAttribute("login");

        System.out.println("Shopping cart new2 :"+spCart);
        if(spCart==null){
            spCart=new ShoppingCart();
        }


        request.getSession().setAttribute("shoppingCart",spCart);

        RequestDispatcher reqDisp=request.getRequestDispatcher("WEB-INF/views/myPage.jsp");
        reqDisp.forward(request,response);
    }
}
