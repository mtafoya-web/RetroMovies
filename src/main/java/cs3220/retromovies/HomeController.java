package cs3220.retromovies;

import cs3220.retromovies.Model.Customer;
import cs3220.retromovies.Model.Movie;
import cs3220.retromovies.Model.Rental;
import cs3220.retromovies.Repository.MovieRepo;
import cs3220.retromovies.Repository.CustomerRepo;
import cs3220.retromovies.Repository.RentalRepo;

import jakarta.servlet.http.*;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.util.List;

@Controller
public class HomeController{
    private final MovieRepo movieRepo;
    private final CustomerRepo customerRepo;
    private final RentalRepo rentalRepo;

    public HomeController(MovieRepo movieRepo, CustomerRepo customerRepo, RentalRepo rentalRepo){
        this.movieRepo = movieRepo;
        this.customerRepo = customerRepo;
        this.rentalRepo = rentalRepo;
    }

    @GetMapping("/")
    public String showHome(Model model){
        model.addAttribute("movies", movieRepo.findAll());
        model.addAttribute("customers", customerRepo.findAll());
        model.addAttribute("rentals", rentalRepo.findAll());
        return "index";
    }

    @GetMapping("/movies")
    public String showMovies(
            Model model,
            @CookieValue(name="preferredCategory",defaultValue = "None") String prefCategory
            ) {
        model.addAttribute("preferredCategory", prefCategory);
        model.addAttribute("movies", movieRepo.findAll());
        return "movies";
    }
    @GetMapping("/customers")
    public String showCustomers(Model model) {
        model.addAttribute("customers", customerRepo.findAll());
        return "customers";
    }
    @GetMapping("/rentals")
    public String showRentals(Model model, HttpSession session) {
        model.addAttribute("rentals", rentalRepo.findAll());
        //Start and set the session
        if(session.getAttribute("userRentalCount") == null){
            session.setAttribute("userRentalCount", 0);
        }
        //Add the current count to the view
        int currentCount = (int) session.getAttribute("userRentalCount");
        model.addAttribute("userRentalCount", currentCount);
        return "rentals";
    }

    @GetMapping("/NewRental")
    public String showNewRentalForm(Model model) {
        model.addAttribute("movies", movieRepo.findAll());
        model.addAttribute("customers", customerRepo.findAll());
        return "NewRental";
    }
    @PostMapping("/NewRental")
    public String addRental(
            @RequestParam Integer customerId,
            @RequestParam Integer movieId,
            @RequestParam String pickupDate,
            @RequestParam String duration,
            HttpSession session
    ) {
        Customer customer = customerRepo.findById(customerId)
                .orElseThrow(() ->
                        new IllegalArgumentException(
                                "Invalid Customer Id: " + customerId
                        )
                );

        Movie movie = movieRepo.findById(movieId)
                .orElseThrow(() ->
                        new IllegalArgumentException(
                                "Invalid Movie Id: " + movieId
                        )
                );

        Rental rental = new Rental();
        rental.setCustomer(customer);
        rental.setMovie(movie);
        rental.setPickupDate(pickupDate);
        rental.setDuration(duration);

        rentalRepo.save(rental);

        Integer currentCount =
                (Integer) session.getAttribute("userRentalCount");

        if (currentCount == null) {
            currentCount = 0;
        }

        session.setAttribute("userRentalCount", currentCount + 1);

        return "redirect:/rentals";
    }

    @GetMapping("/NewCustomer")
    public String showNewCustomerForm(Model model){
        model.addAttribute("customers", customerRepo.findAll());
        return "NewCustomer";
    }
    @PostMapping("/NewCustomer")
    public String addCustomer(Customer customer){
        customerRepo.save(customer);
        return "redirect:/customers";
    }

    @GetMapping("/NewMovie")
    public String showNewMovieForm(
            Model model,
            @CookieValue(name = "preferredCategory", defaultValue = "None")
            String prefCategory){
        model.addAttribute("preferredCategory", prefCategory);
        model.addAttribute("movies", movieRepo.findAll());
        return "NewMovie";
    }
    @PostMapping("/NewMovie")
    public ResponseEntity<Void> addMovie(Movie movie){
        movieRepo.save(movie);
        ResponseCookie cookie = ResponseCookie.from("preferredCategory", movie.getCategory())
                .path("/")                // Crucial so your /movies page can read it
                .maxAge(7 * 24 * 60 * 60) // Optional: Keep it for 7 days
                .sameSite("Lax")          // Crucial protection against CSRF security hacks
                .build();
        // 3. Send the updated cookie to the browser and redirect to the list page
        return ResponseEntity.status(HttpStatus.FOUND)
                .location(URI.create("/movies"))
                .header(HttpHeaders.SET_COOKIE, cookie.toString())
                .build();

    }

    @PostMapping("/deleteRental/{id}")
    public String deleteRental(@PathVariable Integer id){
        Rental rental = rentalRepo.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid Rental Id:" + id));
        rentalRepo.delete(rental);
        return "redirect:/rentals";
    }

    @PostMapping("/deleteMovie/{id}")
    public String deleteMovie(@PathVariable Integer id){
        Movie movie = movieRepo.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid Movie Id:" + id));
        movieRepo.delete(movie);
        return "redirect:/movies";
    }

    @PostMapping("/deleteCustomer/{id}")
    public String deleteCustomer(@PathVariable Integer id){
        Customer customer = customerRepo.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid Customer Id:" + id));
        customerRepo.delete(customer);
        return "redirect:/customers";
    }
}
