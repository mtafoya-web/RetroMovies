@import cs3220.retromovies.Model.Customer
@param Customer customer
@param Iterable<Customer> customers

@template.main-layout(
pageTitle = "New Customer",
bodyContent = @`
    <h2>Add New Customer</h2>
    <form action="/NewCustomer" method="POST">
        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="name">Name</label>
            </div>
            <div class="col">
                <input type="text" id="name" name="name" placeholder="Enter Name" class="form-control">
            </div>
        </div>

        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="email">Email</label>
            </div>
            <div class="col">
                <input type="email" id="email" name="email" placeholder="Enter Email" class="form-control">
            </div>
        </div>

        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="phone">Phone</label>
            </div>
            <div class="col">
                <input type="text" id="phone" name="phone" placeholder="Enter Phone number" class="form-control">
            </div>
        </div>


        <div class="row align-items-center mb-2">
            <div class="col-sm-2">
                <label for="membershipType">Membership Type:</label>
            </div>
            <div class="col">
                <select id="membershipType" name="memType" class="form-control" required>
                    <option value="" disabled selected>Select Membership Type</option>
                    <option value="Regular">Regular</option>
                    <option value="student">Student</option>
                    <option value="Premium">Premium</option>
                </select>
            </div>
        </div>

        <!--Buttons-->
        <div class="row align-items-center mb-2">
            <div class="col m-3 d-flex flex-column flex-sm-row justify-content-center align-items-center">
                <button type="submit" class="btn btn-success btn-width mb-2 mr-sm-2">
                    <i class="fa-solid fa-user-plus mr-2 d-inline d-sm-none"></i>
                    Add Customer
                </button>

                <a href="/customers" class="btn btn-secondary btn-width mb-2">
                    <i class="fa-solid fa-xmark mr-2 d-inline d-sm-none"></i>
                    Cancel
                </a>
            </div>
        </div>
    </form>
` )
