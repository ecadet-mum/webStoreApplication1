package dataaccess;



import modele.Product;

import java.util.HashMap;
import java.util.Map;

public class ProductData {
    HashMap<Integer, Product> listProduct=new HashMap<Integer, Product>();

    public ProductData(){
        Product p1=new Product("fēnix® 5 Plus","Sapphire, Titanium with Solar Flare Orange Band",700,2,1);
        p1.setImage("w1.jpg");

        Product p2=new Product("Blue Steel 40mm","Collection: Rhett Movement Type: Quartz Chronograph",800,2,2);
        p2.setImage("prod2.jpg");

        Product p3=new Product("Handmade German Watches","Casablanca Theorema - GM-101-3 | Gold | ",600,2,3);
        p3.setImage("prod3.jpg");

        Product p4=new Product("Product 4","Good Product4",20,2,4);
        p4.setImage("prod2.jpg");

        Product p5=new Product("Product 5","Good Product5",20,2,5);
        p5.setImage("prod3.jpg");


        listProduct.put(p1.getIdProduct(),p1);
        listProduct.put(p2.getIdProduct(),p2);
        listProduct.put(p3.getIdProduct(),p3);
        listProduct.put(p4.getIdProduct(),p4);
        listProduct.put(p5.getIdProduct(),p5);
    }


    public HashMap<Integer, Product> getListProduct(){
        return listProduct;
    }

    public Product searchProduct(Integer id){
        Product p=null;

        for(Map.Entry<Integer,Product> en : this.listProduct.entrySet()){
            if(en.getKey()==id){
                p=en.getValue();
            }
        }

        return p;

    }


}
