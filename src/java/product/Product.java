/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package product;

/**
 *
 * @author SIM ASHAD
 */


public class Product {
    private int id;
    private String name;
    private String category;
    private String image;
    public byte[] imagedata;
    private String description;
    private double price;

    public Product( int id, byte[] imagedata, String name, String category, String image , String description, double price) {
        
        this.id = id;
        this.imagedata= imagedata;
        this.name = name;
        this.category = category;
        this.image= image;

        this.description = description;
        this.price = price;
    }
    
    public int getId() {
        return id;
    }
    
    public byte[] getImagedata() {
        return imagedata;
    }

    public String getName() {
        return name;
    }

    public String getCategory() {
        return category;
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
}
