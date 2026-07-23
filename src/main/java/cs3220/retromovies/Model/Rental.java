package cs3220.retromovies.Model;

import jakarta.persistence.*;

@Entity
public class Rental {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "customer_id", nullable = false)
    private Customer customer;

    @ManyToOne
    @JoinColumn(name = "movie_id", nullable = false)
    private Movie movie;

    private String pickupDate;
    private String duration;

    public Rental() {
    }

    public Rental(
            Customer customer,
            Movie movie,
            String pickupDate,
            String duration
    ) {
        this.customer = customer;
        this.movie = movie;
        this.pickupDate = pickupDate;
        this.duration = duration;
    }

    public int getId() {
        return id;
    }

    public Customer getCustomer() {
        return customer;
    }

    public Movie getMovie() {
        return movie;
    }

    public String getPickupDate() {
        return pickupDate;
    }

    public String getDuration() {
        return duration;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public void setPickupDate(String pickupDate) {
        this.pickupDate = pickupDate;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
}