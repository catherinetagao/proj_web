<!-- Number 1  -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <!-- bootstrap cdn -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"></head>
<body class="bg-dark">
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Offcanvas navbar large">
            <div class="container-fluid">
              <a class="navbar-brand display-6 lh-1 fw-bold" style="font-size: 30px; text-transform: uppercase;" href="#">Name of the Website</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar2" aria-controls="offcanvasNavbar2" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasNavbar2" aria-labelledby="offcanvasNavbar2Label">
                <div class="offcanvas-header">
                  <h5 class="offcanvas-title" id="offcanvasNavbar2Label">Offcanvas</h5>
                  <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                  <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                    <img src="img/logo.ico" alt="" style="height: 50px; width: 50px; border-radius: 10px;">
                  </ul>
                </div>
              </div>
            </div>
          </nav>

    </header>

    <main class="flex-shrink-0">
        <div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-label="Slide 1" aria-current="true"></button>
              <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
              <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active" style="background-image: url(img/Black\ and\ Pink\ Gradient\ Motivational\ Quote\ Desktop\ Wallpaper.png );height: 300px; background-repeat: no-repeat;
              background-attachment: fixed;
              background-position: center;
              background-size: cover;">
                <svg class="bd-placeholder-img" width="300%" height="300%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="300%" height="300%" fill="var(--bs-secondary-color)"></rect></svg>
                <div class="container">
                  <div class="carousel-caption text-start">
                    
                  </div>
                </div>
              </div>
              <div class="carousel-item" style="background-image: url(img/bg.png); background-repeat: no-repeat;
              background-attachment: fixed;
              background-position: center;
              background-size: cover;height: 300px;">
                <svg class="bd-placeholder-img" width="300%" height="300%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="300%" height="300%" fill="var(--bs-secondary-color)"></rect></svg>
                <div class="container">
                  <div class="carousel-caption">
                    
                  </div>
                </div>
              </div>
              <div class="carousel-item" style="background-image: url(img/Blue\ &\ Pink\ Floral\ Desktop\ Wallpaper.png); height: 300px; background-repeat: no-repeat;
              background-attachment: fixed;
              background-position: center;
              background-size: cover;">
                <svg class="bd-placeholder-img" width="300%" height="300%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="300%" height="300%" fill="var(--bs-secondary-color)"></rect></svg>
                <div class="container">
                  <div class="carousel-caption text-end">
                    
                  </div>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>

          <div class="container">
            <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
                <div class="col">
                  <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('img/Blue\ &\ Pink\ Floral\ Desktop\ Wallpaper.png');">
                    <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
                        <p>Product</p>
                      <h3 class="pt-5 mb-4 display-6 lh-1 fw-bold">Short title, long jacket</h3>
                      <ul class="d-flex list-unstyled mt-auto">
                        <!-- <li class="me-auto">
                          <img src="https://github.com/twbs.png" alt="Bootstrap" width="32" height="32" class="rounded-circle border border-white">
                        </li>
                        <li class="d-flex align-items-center me-3">
                          <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#geo-fill"></use></svg>
                          <small>Earth</small>
                        </li>
                        <li class="d-flex align-items-center">
                          <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#calendar3"></use></svg>
                          <small>3d</small>
                        </li> -->
                      </ul>
                    </div>
                  </div>
                </div>
          
                <div class="col">
                  <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('img/bg.png');">
                    <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
                        <p>About</p>
                      <h3 class="pt-5 mb-4 display-6 lh-1 fw-bold">Much longer title that wraps to multiple lines</h3>
                      <ul class="d-flex list-unstyled mt-auto">
                      </ul>
                    </div>
                  </div>
                </div>
          
                <div class="col">
                  <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('img/Black\ and\ Pink\ Gradient\ Motivational\ Quote\ Desktop\ Wallpaper.png');">
                    <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
                        <p>Contact us</p>
                      <h3 class="pt-5 mb-4 display-6 lh-1 fw-bold">Another longer title belongs here</h3>
                      <ul class="d-flex list-unstyled mt-auto">
      
                      </ul>
                    </div>
                  </div>
                </div>


              </div>
          </div>
        
      </main>

      <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top p-3 bg-dark">
        <div class="col-md-4 d-flex align-items-center text-white">
          <span class="mb-3 mb-md-0 fw-bold">© 2023 Catherine Tagao, Inc</span>
        </div>
    
        <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
          <li class="ms-3"><a class=" text-bg-dark text-transform fw-bold" style="text-decoration: none;" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"></use></svg> October 10,2023</a></li>
        </ul>
      </footer>
    

    
    
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</html>