package cs3220.retromovies.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Customer {
    /*PRIMARY KEY*/

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String email;
    private String phone;
    private String memType;

    /*CONSTRUCTOR*/
    protected Customer() {}

    public Customer(String name, String email, String phone, String memType) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.memType = memType;
    }

    /*METHODS*/
    public int getId(){return this.id;}
    public String getName(){return this.name;}
    public String getEmail(){return this.email;}
    public String getPhone(){return this.phone;}
    public String getMembership(){return this.memType;}

    public void setName(String name){this.name = name;}
    public void setEmail(String email){ this.email = email;}
    public void setPhone(String phone){ this.phone = phone;}
    public void setMembership(String membership){this.memType = membership;}
}
