package cs3220.retromovies.Repository;

import cs3220.retromovies.Model.Movie;
import org.springframework.data.repository.CrudRepository;

public interface MovieRepo
        extends CrudRepository<Movie, Integer> {
}