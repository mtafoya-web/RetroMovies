package cs3220.retromovies.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Movie {
    /*PRIMARY KEY*/
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private String category;
    private String rating;
    private double price;
    private int availableCopies;

    /*CONSTRUCTOR*/
    public Movie(){}
    public Movie(String title, String category, String rating, double price, int availableCopies) {
        this.title = title;
        this.category = category;
        this.rating = rating;
        this.price = price;
        this.availableCopies = availableCopies;
    }

    /*METHODS*/
    public int getId(){return this.id;}
    public String getTitle(){return this.title;}
    public String getCategory(){return this.category;}
    public String getRating(){return this.rating;}
    public double getPrice(){return this.price;}
    public int getCopies(){return this.availableCopies;}

    public void setTitle(String title){this.title = title;}
    public void setCategory(String category){ this.category = category;}
    public void setRating(String rating){ this.rating = rating;}
    public void setPrice(double price){this.price = price;}
    public void setCopies(int availableCopies){this.availableCopies = availableCopies;}
}
