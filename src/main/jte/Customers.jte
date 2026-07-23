@import cs3220.retromovies.Model.Customer
@param Iterable<Customer> customers

@template.main-layout(
pageTitle = "Customers",
bodyContent = @`
    <div class="row p-2">
        <h2>Customers</h2>
        <a href="/NewCustomer" class="btn btn-primary ml-auto">
            <i class="fa-solid fa-plus"></i>
            New Customer
        </a>
    </div>

    <table class="table table-bordered text-center">
        <thead class="table-primary">
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col" class="d-none d-sm-table-cell">Phone</th>
            <th scope="col">Membership</th>
            <th scope="col" class="d-none d-sm-table-cell"></th>
        </tr>
        </thead>
        <tbody>
            @for (Customer customer : customers)
            <tr>
                <td>${customer.getName()}</td>
                <td>${customer.getEmail()}</td>
                <td class="d-none d-sm-table-cell">${customer.getPhone()}</td>
                <!--Mobile-->
                <td>
                    <div>${customer.getMembership()}</div>
                    <div class="d-sm-none mt-2">
                        <a href="#" class="btn btn-primary">Edit</a>
                        <form action="/deleteCustomer/${customer.getId()}" method="post">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </div>
                </td>
                <!--Desktop-->
                <td class="d-none d-sm-table-cell">
                    <div class="d-flex justify-content-center flex-wrap">
                        <a href="#" class="btn btn-primary">Edit</a>
                        <form action="/deleteCustomer/${customer.getId()}" method="post">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </div>
                </td>
            </tr>
        @endfor
        </tbody>
    </table>
`
)
