package controler;

import com.sun.corba.se.spi.protocol.RequestDispatcherDefault;
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

@WebServlet(name = "AddCart")
public class AddCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ShoppingCart spCa=(ShoppingCart) request.getSession().getAttribute("shoppingCart");

        Integer idProduct=Integer.parseInt(request.getParameter("idProduct"));
        Integer numItem=Integer.parseInt(request.getParameter("numberItem"));


        Product prod=spCa.searChItem(idProduct);

        if(prod==null){
            prod=new ProductData().searchProduct(idProduct);
            prod.addQuantityItem(numItem);
            spCa.addProduct(prod);
        }else{

            System.out.println("Find id");
            prod.addQuantityItem(numItem);

        }



        request.setAttribute("shoppingCart",spCa);
        System.out.println("Inside cart6");
        RequestDispatcher resDis=request.getRequestDispatcher("WEB-INF/views/addCart.jsp");

        resDis.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ShoppingCart spCa=(ShoppingCart) request.getSession().getAttribute("shoppingCart");
        request.setAttribute("shoppingCart",spCa);
        RequestDispatcher resDis=request.getRequestDispatcher("WEB-INF/views/addCart.jsp");

        resDis.forward(request,response);
    }
}
