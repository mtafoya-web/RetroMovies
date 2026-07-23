@import cs3220.retromovies.Model.Movie
@param Movie movie
@param Iterable<Movie> movies


@template.main-layout(
pageTitle = "New Movie",
bodyContent = @`
    <h2>Add New Movie</h2>
    <form action="/NewMovie" method="POST">
        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="title">Title</label>
            </div>
            <div class="col">
                <input type="text" id="title" name="title" placeholder="Enter Movie Title" class="form-control">
            </div>
        </div>

        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="category">Category:</label>
            </div>
            <div class="col">
                <select id="category" name="category" class="form-control" required>
                    <option value="">Select Category</option>
                    @for(Movie movie : movies)
                        <option value="${movie.getCategory()}">${movie.getCategory()}</option>
                    @endfor
                </select>
            </div>
        </div>

        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="rating">Rating:</label>
            </div>
            <div class="col">
                <select id="rating" name="rating" class="form-control" required>
                    <option value="">Select Rating</option>
                    @for(Movie movie : movies)
                        <option value="${movie.getRating()}">${movie.getRating()}</option>
                    @endfor
                </select>
            </div>
        </div>

        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="price">Price</label>
            </div>
            <div class="col">
                <input type="text" id="price" name="price" placeholder="3.99$" class="form-control" required>
            </div>
        </div>

        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="copies">Available Copies:</label>
            </div>
            <div class="col">
                <input type="text" id="copies" name="copies" class="form-control">
            </div>
        </div>

        <!--Buttons-->
        <div class="row align-items-center mb-2">
            <div class="col m-3 d-flex flex-column flex-sm-row justify-content-center align-items-center">
                <button type="submit" class="btn btn-success btn-width mb-2 mr-sm-2">
                    <i class="fa-solid fa-plus mr-2 d-inline d-sm-none"></i>
                    Add Movie
                </button>

                <a href="/movies" class="btn btn-secondary btn-width mb-2">
                    <i class="fa-solid fa-xmark mr-2 d-inline d-sm-none"></i>
                    Cancel
                </a>
            </div>
        </div>
    </form>
` )
