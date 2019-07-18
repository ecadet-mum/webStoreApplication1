package modele;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Random;

public class Product {
    private String name;
    private String image;
    private String description;
    private double price;
    private int quantity;
    private int idProduct;

    private int quantityItem;

    public Product(String pName, String description, double price, int quantity,Integer id) {
        this.idProduct=id;//new Random().nextInt();
        this.name = pName;
        this.description = description;
        this.price = price;
        this.quantity = quantity;

    }

    public int getQuantityItem() {
        return quantityItem;
    }

    public void addQuantityItem(int quantityItem) {


        this.quantityItem+=quantityItem;

    }



    public int getIdProduct(){
        return idProduct;
    }
    public String getName() {
        return name;
    }

    public String getImage() {
        return image;
    }

    public String getDescription() {
        return description;
    }

    public double getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setname(String pName) {
        this.name = pName;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Product)) return false;
        Product product = (Product) o;
        return getIdProduct() == product.getIdProduct() &&
                getName().equals(product.getName());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getName(), getIdProduct());
    }

    @Override
    public String toString() {
        return "Product{" +
                ", idProduct=" + idProduct +
                " ==pName='" + name + '\'' +
                ",==description='" + description + '\'' +
                ",==price=" + price +
                ",==quantity=" + quantity +
                '}';
    }
}
