package modele;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
    List<Product> listProd;
    Integer totalItem=0;
    Double totalAmount=0.0;


    public ShoppingCart(){
        listProd=new ArrayList<>();
    }
    public List<Product> getListProd() {
        return listProd;
    }

    public void addProduct(Product p){
        listProd.add(p);
    }

    public double getTotalPrice(){
        double total=0;
        for(Product p: listProd){
            total+=p.getPrice();
        }

        return total;
    }

    public Integer getTotalItem() {

        totalItem=listProd.size();
        return totalItem;
    }

    public Double getTotalAmount() {
        double total=0.0;
        for(Product p: listProd){
            total+=(p.getPrice()*p.getQuantityItem());
        }
        totalAmount=total;
        return totalAmount;
    }

    public Product searChItem(Integer idProd){

        for(Product p: listProd){
            if(p.getIdProduct()==idProd){
                return p;
            }
        }
        return null;
    }
}
