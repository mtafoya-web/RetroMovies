package cs3220.retromovies.Repository;

import cs3220.retromovies.Model.Rental;
import org.springframework.data.repository.CrudRepository;

public interface RentalRepo
        extends CrudRepository<Rental, Integer> {
}