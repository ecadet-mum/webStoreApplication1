package controler;

import sun.misc.Request;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;


public class FilterSession implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
       if(req.getParameter("login").equals("0")){
          System.out.println("do filter if");
           RequestDispatcher reqDis=req.getRequestDispatcher("/filterAuthentication");
           reqDis.forward(req,resp);
       }else{
           System.out.println("Else do filter in here");
           chain.doFilter(req, resp);
       }



    }

    public void init(FilterConfig config) throws ServletException {

    }

}
