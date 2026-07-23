@template.main-layout(
    pageTitle = "Home",
    bodyContent = @`
    <div class="row my-2">
        <div class="col">
            <h2 class="bg-aqua-custom text-center p-2"><b>2026 Movie Rentals</b></h2>
        </div>
    </div>

    <div class="row align-items-stretch">
        <div class="col-12 col-sm-6 col-md-3 mb-3 d-flex">
            <div class="card text-center bg-new-releases promo-card h-100 w-100">
                <i class="fa-solid fa-star text-primary fa-2x mt-3"></i>
                <div class="card-body">
                    <h2 class="card-title">New Releases</h2>
                    <p class="card-text text-danger font-weight-bold mb-0">$4.99</p>
                    <p class="card-text mb-0">per rental</p>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-3 mb-3 d-flex">
            <div class="card text-center bg-classic-movies promo-card h-100 w-100">
                <i class="fa-solid fa-clapperboard fa-2x mt-3"></i>
                <div class="card-body">
                    <h2 class="card-title">Classic Movies</h2>
                    <p class="card-text text-danger font-weight-bold mb-0">$2.99</p>
                    <p class="card-text mb-0">per rental</p>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-3 mb-3 d-flex">
            <div class="card text-center bg-family-night promo-card h-100 w-100">
                <i class="fa-solid fa-users fa-2x mt-3"></i>
                <div class="card-body">
                    <h2 class="card-title">Family Night Bundle</h2>
                    <p class="card-text mb-0">3 movies for</p>
                    <p class="card-text text-danger font-weight-bold mb-0">$7.99</p>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-3 mb-3 d-flex">
            <div class="card text-center bg-late-fee promo-card h-100 w-100">
                <i class="fa-solid fa-clock fa-2x mt-3"></i>
                <div class="card-body">
                    <h2 class="card-title">Late Fee</h2>
                    <p class="card-text text-danger font-weight-bold mb-0">$1.00</p>
                    <p class="card-text mb-0">per day</p>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4 pb-3">
        <div class="col text-center">
            <button type="button" class="btn btn-success btn-lg px-5 py-3 h4 mb-0">
                <i class="fa-solid fa-ticket fa-rotate-by" style="--fa-rotate-angle: -45deg;"></i>
                Rent now
            </button>
        </div>
    </div>
`
)