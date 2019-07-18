package controler;

import com.sun.corba.se.spi.protocol.RequestDispatcherDefault;
import dataaccess.ProductData;
import modele.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class ViewProductDetail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer idProduct=Integer.parseInt(request.getParameter("idProduct"));

        ProductData prodData=new ProductData();
        Product productFound=prodData.searchProduct(idProduct);
        System.out.println("Value : "+idProduct+" "+productFound);
        request.setAttribute("product",productFound);
        System.out.println("I m in post");
        RequestDispatcher reqDis=request.getRequestDispatcher("WEB-INF/views/myPageViewProduct.jsp");
        reqDis.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
