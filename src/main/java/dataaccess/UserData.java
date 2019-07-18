package dataaccess;

import modele.ShoppingCart;
import modele.User;

import java.util.HashMap;
import java.util.Random;

public class UserData {
    HashMap<Integer,User> listUser=new HashMap<Integer, User>();

    public UserData(){
        ShoppingCart sp1=new ShoppingCart();
        ShoppingCart sp2=new ShoppingCart();

        User e1=new User("ecadet","mum123",sp1);
        User e2=new User("cpaul","mum123",sp2);
        listUser.put(1001,e1);
        listUser.put(1002,e2);
    }
    public void addUser(User usr){
        Integer num=new Random().nextInt();
        listUser.put(num,usr);
    }

    public boolean searchUser(User e){

        for(Integer key: listUser.keySet()){
            User ur=listUser.get(key);
            if(ur.equals(e)){
                return true;
            }
        }

        return false;
    }


}
