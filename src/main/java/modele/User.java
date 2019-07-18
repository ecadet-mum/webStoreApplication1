package modele;

import javax.servlet.http.Cookie;

public class User {
    private String userName;
    private String password;
    private ShoppingCart spCart;


    public User(String user,String pass,ShoppingCart spCart){
        userName=user;
        password=pass;
        this.spCart=spCart;
    }

    public void setShoppingCart(ShoppingCart spCart){
        this.spCart=spCart;
    }

    @Override
    public boolean equals(Object e){
        User eparam=(User) e;
        if((!(e instanceof User)) || e==null){
            return false;
        }

        if(this.userName.equals(eparam.userName) && this.password.equals(eparam.password)){
            return true;
        }

        return false;
    }

    @Override
    public String toString(){
        return this.userName;
    }

    public static String getUserNameCookiee(Cookie[] cok){
        for(Cookie c: cok){
            if(c.getName().equals("userName")){
                return c.getValue();
            }
        }
        return "";
    }

    public static String getRememberCookiee(Cookie[] cok){
        for(Cookie c: cok){
            if(c.getName().equals("rememberMe")){
                return c.getValue();
            }
        }
        return "";
    }


}
