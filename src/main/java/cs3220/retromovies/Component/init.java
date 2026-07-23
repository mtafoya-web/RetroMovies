package cs3220.retromovies.Component;

import cs3220.retromovies.Model.Customer;
import cs3220.retromovies.Model.Movie;
import cs3220.retromovies.Model.Rental;
import cs3220.retromovies.Repository.CustomerRepo;
import cs3220.retromovies.Repository.MovieRepo;
import cs3220.retromovies.Repository.RentalRepo;

import org.jspecify.annotations.NonNull;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class init implements CommandLineRunner {

    private final CustomerRepo customerRepo;
    private final RentalRepo rentalRepo;
    private final MovieRepo movieRepo;

    public init(
            CustomerRepo customerRepo,
            RentalRepo rentalRepo,
            MovieRepo movieRepo
    ) {
        this.customerRepo = customerRepo;
        this.rentalRepo = rentalRepo;
        this.movieRepo = movieRepo;
    }

    @Override
    public void run(String @NonNull ... args) {

        /*
         * Add initial customers.
         */
        if (customerRepo.count() == 0) {
            List<Customer> customers = new ArrayList<>();

            customers.add(new Customer(
                    "Maria Lopez",
                    "maria@gmail.com",
                    "323-555-1000",
                    "Premium"
            ));

            customers.add(new Customer(
                    "James Smith",
                    "james@gmail.com",
                    "626-555-1000",
                    "Regular"
            ));

            customers.add(new Customer(
                    "Linda Chen",
                    "linda@gmail.com",
                    "213-555-1000",
                    "Student"
            ));

            customers.add(new Customer(
                    "Robert Brown",
                    "robert@gmail.com",
                    "815-555-1000",
                    "Premium"
            ));

            customerRepo.saveAll(customers);
        }

        /*
         * Add initial movies.
         */
        if (movieRepo.count() == 0) {
            List<Movie> movies = new ArrayList<>();

            movies.add(new Movie(
                    "The Last Mission",
                    "Action",
                    "PG-13",
                    3.99,
                    4
            ));

            movies.add(new Movie(
                    "Laugh Out Loud",
                    "Comedy",
                    "PG",
                    2.99,
                    2
            ));

            movies.add(new Movie(
                    "A Quiet Road",
                    "Drama",
                    "R",
                    3.49,
                    3
            ));

            movies.add(new Movie(
                    "Space Friends",
                    "Family",
                    "G",
                    2.99,
                    5
            ));

            movieRepo.saveAll(movies);
        }

        /*
         * findAll() can be stored as Iterable.
         */
        Iterable<Customer> customers = customerRepo.findAll();
        Iterable<Movie> movies = movieRepo.findAll();

        /*
         * Add initial rentals.
         */
        if (rentalRepo.count() == 0) {

            Customer maria = findCustomerByName(
                    customers,
                    "Maria Lopez"
            );

            Customer james = findCustomerByName(
                    customers,
                    "James Smith"
            );

            Customer linda = findCustomerByName(
                    customers,
                    "Linda Chen"
            );

            Customer robert = findCustomerByName(
                    customers,
                    "Robert Brown"
            );

            Movie lastMission = findMovieByTitle(
                    movies,
                    "The Last Mission"
            );

            Movie laughOutLoud = findMovieByTitle(
                    movies,
                    "Laugh Out Loud"
            );

            Movie quietRoad = findMovieByTitle(
                    movies,
                    "A Quiet Road"
            );

            Movie spaceFriends = findMovieByTitle(
                    movies,
                    "Space Friends"
            );

            List<Rental> rentals = new ArrayList<>();

            rentals.add(new Rental(
                    maria,
                    lastMission,
                    "2026-06-19",
                    "3 days"
            ));

            rentals.add(new Rental(
                    james,
                    spaceFriends,
                    "2026-06-12",
                    "5 days"
            ));

            rentals.add(new Rental(
                    linda,
                    quietRoad,
                    "2026-06-13",
                    "3 days"
            ));

            rentals.add(new Rental(
                    robert,
                    laughOutLoud,
                    "2026-06-14",
                    "1 day"
            ));

            rentalRepo.saveAll(rentals);
        }
    }

    private Customer findCustomerByName(
            Iterable<Customer> customers,
            String name
    ) {
        for (Customer customer : customers) {
            if (customer.getName().equals(name)) {
                return customer;
            }
        }

        throw new IllegalArgumentException(
                "Customer not found: " + name
        );
    }

    private Movie findMovieByTitle(
            Iterable<Movie> movies,
            String title
    ) {
        for (Movie movie : movies) {
            if (movie.getTitle().equals(title)) {
                return movie;
            }
        }

        throw new IllegalArgumentException(
                "Movie not found: " + title
        );
    }
}