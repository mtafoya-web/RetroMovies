@import cs3220.retromovies.Model.Movie
@param Iterable<Movie> movies
@param String preferredCategory

@template.main-layout(
pageTitle = "Movies",
bodyContent = @`
    <div class="row p-2">
        <h2>Movies</h2>
        <a href="/NewMovie" class="btn btn-primary ml-auto">
            <i class="fa-solid fa-plus"></i>
            New Movie
        </a>
    </div>

    <table class="table table-bordered text-center">
        <thead class="table-primary">
        <tr>
            <th scope="col">Title</th>
            <th scope="col">Price</th>
            <th scope="col" class="d-none d-sm-table-cell">Category</th>
            <th scope="col" class="d-none d-sm-table-cell">Rating</th>
            <th scope="col">Available Copies</th>
            <th scope="col" class="d-none d-sm-table-cell"></th>
        </tr>
        </thead>
        <tbody>
        @for (Movie movie : movies)
            <tr>
                <td>${movie.getTitle()}</td>
                <td>${movie.getPrice()}</td>
                <td class="d-none d-sm-table-cell">${movie.getCategory()}</td>
                <td class="d-none d-sm-table-cell">${movie.getRating()}</td>
                <td>
                    <div>${movie.getCopies()}</div>
                    <div class="d-sm-none mt-2">
                        <a href="#" class="btn btn-primary">Edit</a>
                        <form action="/deleteMovie/${movie.getId()}" method="POST">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </div>
                </td>
                <td class="d-none d-sm-table-cell">
                    <div class="d-flex justify-content-center flex-wrap">
                        <a href="#" class="btn btn-primary px-3 mr-2">Edit</a>
                        <form action="/deleteMovie/${movie.getId()}" method="POST">
                            <button type="submit" class="btn btn-danger px-3 mr-2">Delete</button>
                        </form>
                    </div>
                </td>
            </tr>
        @endfor
        </tbody>
    </table>

    <div class="row p-2 text-info">
        <h3>Preferred Category: ${preferredCategory}</h3>
    </div>
`
)