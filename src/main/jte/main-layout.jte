@import gg.jte.Content
@param String pageTitle = "My Application"
@param Content bodyContent


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="/css/styles.css">

    <title>
        ${pageTitle}
    </title>
</head>

<body class="font-weight-bold">
<!--Header: Navbar_col [logo+title+toggle][navbar links]-->
<nav class="navbar navbar-expand-sm navbar-dark bg-primary-custom mb-2 flex-column" id="mainNavbar">
    <div class="d-flex align-items-center justify-content-center w-100">
        <a class="navbar-brand d-flex align-items-center mb-0">
            <img src="/images/clapperboard-64x64.png" alt="Film logo" class="mr-2">
            <span class="h1 mb-0 text-white">Retro Video Rentals</span>
        </a>

        <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarLinks"
                aria-controls="navbarLinks" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>

    <div class="collapse navbar-collapse w-100 mt-2 mt-sm-0" id="navbarLinks">
        <ul class="navbar-nav w-100 justify-content-around text-center">
            <li class="nav-item">
                <a class="nav-link text-white" href="/"><i class="fa-solid fa-home mr-2"></i>Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="/movies"><i class="fa-solid fa-film mr-2"></i>Movies</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="/customers"><i class="fa-solid fa-users mr-2"></i>Customers</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="/rentals"><i class="fa-solid fa-calendar-check mr-2"></i>Rentals</a>
            </li>
        </ul>
    </div>

</nav>

<!--Main page Contents -->
<main class="container-fluid px-4 my-0 d-flex flex-column flex-grow-1">
    ${bodyContent}
</main>

<!--footer-->
<footer class="bg-dark-custom text-white text-center p-3 w-100">
    <p class="mb-0">
        Copyright &copy; Retro Movie Rentals 2026<br>
        Movie icon created by <a href="https://www.flaticon.com/authors/freepik"><u>Freepik</u></a>
        from <a href="https://www.flaticon.com/"><u>Flaticon</u></a>
    </p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
</body>

</html>