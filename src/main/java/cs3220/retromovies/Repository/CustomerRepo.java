package cs3220.retromovies.Repository;
import cs3220.retromovies.Model.Customer;

import org.springframework.data.repository.CrudRepository;

public interface CustomerRepo
        extends CrudRepository<Customer, Integer> {
}