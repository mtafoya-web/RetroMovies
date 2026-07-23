@import cs3220.retromovies.Model.Movie
@import cs3220.retromovies.Model.Customer

@param Iterable<Movie> movies
@param Iterable<Customer> customers

@template.main-layout(
pageTitle = "New Rental",
bodyContent = @`
    <h2>Add New Rental</h2>

    <form action="/NewRental" method="post">

        <!-- Select Rental Customer -->
        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="customerId">Customer:</label>
            </div>

            <div class="col">
                <select id="customerId"
                        name="customerId"
                        class="form-control"
                        required>

                    <option value="">Select Customer</option>

                    @for (Customer customer : customers)
                        <option value="${customer.getId()}">
                            ${customer.getName()}
                        </option>
                    @endfor
                </select>
            </div>
        </div>

        <!-- Select Rental Movie -->
        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="movieId">Movie:</label>
            </div>

            <div class="col">
                <select id="movieId"
                        name="movieId"
                        class="form-control"
                        required>

                    <option value="">Select Movie</option>

                    @for (Movie movie : movies)
                        <option value="${movie.getId()}">
                            ${movie.getTitle()}
                        </option>
                    @endfor
                </select>
            </div>
        </div>

        <!-- Select Duration -->
        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="duration">Duration:</label>
            </div>

            <div class="col">
                <select id="duration"
                        name="duration"
                        class="form-control"
                        required>

                    <option value="">Select Duration</option>

                    @for (int i = 1; i <= 7; i++)
                        <option value="${i} days">
                            ${i} days
                        </option>
                    @endfor
                </select>
            </div>
        </div>

        <!-- Pickup Date -->
        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="pickupDate">Pickup Date:</label>
            </div>

            <div class="col">
                <input type="date"
                       id="pickupDate"
                       name="pickupDate"
                       class="form-control"
                       required>
            </div>
        </div>

        <!-- Buttons -->
        <div class="row align-items-center mb-2">
            <div class="col m-3 d-flex flex-column flex-sm-row
                        justify-content-center align-items-center">

                <button type="submit"
                        class="btn btn-success btn-width mb-2 mr-sm-2">
                    <i class="fa-solid fa-calendar-plus mr-2 d-inline d-sm-none"></i>
                    Add Rental
                </button>

                <a href="/rentals"
                   class="btn btn-secondary btn-width mb-2">
                    <i class="fa-solid fa-xmark mr-2 d-inline d-sm-none"></i>
                    Cancel
                </a>
            </div>
        </div>
    </form>
`
)