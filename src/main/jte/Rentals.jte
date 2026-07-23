@import cs3220.retromovies.Model.Rental
@param Iterable<Rental> rentals
@param Integer userRentalCount

@template.main-layout(
pageTitle = "Rentals",
bodyContent = @`
    <div class="row p-2 align-items-center">
        <h2>Rentals</h2>

        <a href="/NewRental" class="btn btn-primary ml-auto">
            <i class="fa-solid fa-plus mr-2"></i>
            New Rental
        </a>
    </div>

    <table class="table table-bordered text-center">
        <thead class="table-primary">
        <tr>
            <th scope="col">Customer</th>
            <th scope="col">Movie</th>
            <th scope="col" class="d-none d-sm-table-cell">Duration</th>
            <th scope="col">Pickup Date</th>
            <th scope="col">Actions</th>
        </tr>
        </thead>

        <tbody>
        @for (Rental rental : rentals)
            <tr>
                <td>${rental.getCustomer().getName()}</td>

                <td>${rental.getMovie().getTitle()}</td>

                <td class="d-none d-sm-table-cell">
                    ${rental.getDuration()}
                </td>

                <td>
                    ${rental.getPickupDate()}
                </td>

                <td>
                    <div class="d-flex justify-content-center align-items-center">
                        <a href="/editRental/${rental.getId()}"
                           class="btn btn-primary mr-2">
                            Edit
                        </a>

                        <form action="/deleteRental/${rental.getId()}"
                              method="post"
                              class="m-0">
                            <button type="submit"
                                    class="btn btn-danger">
                                Delete
                            </button>
                        </form>
                    </div>
                </td>
            </tr>
        @endfor
        </tbody>
    </table>

    <div class="row p-2 text-info">
        <h3>Session Rentals: ${userRentalCount}</h3>
    </div>
`
)