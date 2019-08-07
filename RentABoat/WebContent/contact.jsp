<!doctype html>
<%@page import="javax.sound.midi.ControllerEventListener"%>
<html lang="en">
	<head>
		<!-- Meta tags -->
		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    	<!-- Title -->
		<title>Rent A boat</title>
		<!-- Links -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		
	</head>
	<style>
    	.bd-placeholder-img {
        	font-size: 1.125rem;
        	text-anchor: middle;
        	-webkit-user-select: none;
        	-moz-user-select: none;
        	-ms-user-select: none;
        	user-select: none;
      	}
      	@media (min-width: 768px) {
        	.bd-placeholder-img-lg {
          		font-size: 3.5rem;
        	}
      	}
    </style>
	<body>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">Navbar</a>
		  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		    	<span class="navbar-toggler-icon"></span>
		  	</button>
		  	<div class="collapse navbar-collapse" id="navbarNav">
		    	<ul class="navbar-nav">
		      		<li class="nav-item active">
		        		<a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="about.jsp">About</a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="CarsController">Cars</a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="contact.jsp">Contact</a>
		      		</li>
		    	</ul>
		    	<ul class="navbar-nav" style="float: right;margin-left: auto;">
		    	<%
		    	if(request.getSession().getAttribute("username") == null){%>
		    		<li class="nav-item">
		    			<a class="nav-link" href="registration.jsp">Registration</a>
		    		</li>
		    		<li class="nav-item">
		    			<a class="nav-link" href="login.jsp">Login</a>
		    		</li>
		    	<%}else{ %>
		    		 <li class="nav-item dropdown">
					    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><% out.print(request.getSession().getAttribute("username")); %></a>
					    <div class="dropdown-menu">
					    <form action="LogoutController" method="post">
					    	<input type="submit"   value="Logout">
					    </form>
					    </div>
					  </li>
		    	<%} %>
		    	</ul>
		  	</div>
		</nav>
		<div class="bd-example">
  			<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
			    <ol class="carousel-indicators">
			      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
			      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
			    </ol>
		    	<div class="carousel-inner">
		      		<div class="carousel-item active">
		        		<img src="IMG/austin-neill-142094-unsplash.jpg" class="d-block w-100" alt="...">
		        		<div class="carousel-caption d-none d-md-block">
		          			<h5>First slide label</h5>
		          			<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
		        		</div>
		      		</div>
		      		<div class="carousel-item">
		        		<img src="IMG/constantin-popescu-347447-unsplash.jpg" class="d-block w-100" alt="...">
		        		<div class="carousel-caption d-none d-md-block">
		          			<h5>Second slide label</h5>
		          			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
		        		</div>
		      		</div>
		      		<div class="carousel-item">
		        		<img src="IMG/nathan-lindahl-388915-unsplash.jpg" class="d-block w-100" alt="...">
		        		<div class="carousel-caption d-none d-md-block">
		          			<h5>Third slide label</h5>
		          			<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
		        		</div>
		      		</div>
		    	</div>
		    	<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
		      		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		      		<span class="sr-only">Previous</span>
		    	</a>
		    	<a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
		      		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		      		<span class="sr-only">Next</span>
		    	</a>
		  	</div>
		</div>
		<div class="my-5"></div>

<!-- Contact -->
<section class="container">

    <!--Contact heading-->
    <h2 class="h1 m-0">Contact us</h2>
    <!--Contact description-->
    <p class="pb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure provident voluptate esse quasi, veritatis totam voluptas nostrum quisquam eum porro a pariatur accusamus veniam.</p>

    <div class="row">

        <!--Grid column-->
        <div class="col-lg-5 mb-4">

            <!--Form with header-->
            <div class="card border-primary rounded-0">

                <div class="card-header p-0">
                    <div class="bg-primary text-white text-center py-2">
                        <h3><i class="fa fa-envelope"></i> Write to us:</h3>
                        <p class="m-0">We'll write rarely, but only the best content.</p>
                    </div>
                </div>
                <div class="card-body p-3">

                    <!--Body-->
                    <div class="form-group">
                        <label>Your name</label>
                        <div class="input-group">
                            <div class="input-group-addon bg-light"><i class="fa fa-user text-primary"></i></div>
                            <input type="text" class="form-control" id="inlineFormInputGroupUsername" placeholder="Username">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Your email</label>
                        <div class="input-group mb-2 mb-sm-0">
                            <div class="input-group-addon bg-light"><i class="fa fa-envelope text-primary"></i></div>
                            <input type="text" class="form-control" id="inlineFormInputGroupUsername" placeholder="Username">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Service</label>
                        <div class="input-group mb-2 mb-sm-0">
                            <div class="input-group-addon bg-light"><i class="fa fa-tag prefix text-primary"></i></div>
                            <input type="text" class="form-control" id="inlineFormInputGroupUsername" placeholder="Username">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Message</label>
                        <div class="input-group mb-2 mb-sm-0">
                            <div class="input-group-addon bg-light"><i class="fa fa-pencil text-primary"></i></div>
                            <textarea class="form-control"></textarea>
                        </div>
                    </div>

                    <div class="text-center">
                        <button class="btn btn-primary btn-block rounded-0 py-2">Submit</button>
                    </div>

                </div>

            </div>
            <!--Form with header-->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-7">

            <!--Google map-->
            <div class="mb-4">
               
            </div>

            <!--Buttons-->
            <div class="row text-center">
                <div class="col-md-4">
                    <a class="bg-primary px-3 py-2 rounded text-white mb-2 d-inline-block"><i class="fa fa-map-marker"></i></a>
                    <p>San Francisco, CA 94126,<br> United States</p>
                    
                </div>

                <div class="col-md-4">
                    <a class="bg-primary px-3 py-2 rounded text-white mb-2 d-inline-block"><i class="fa fa-phone"></i></a>
                    <p>+ 01 234 567 89, <br> Mon - Fri, 8:00-22:00</p>
                </div>

                <div class="col-md-4">
                    <a class="bg-primary px-3 py-2 rounded text-white mb-2 d-inline-block"><i class="fa fa-envelope"></i></a>
                    <p>info@gmail.com <br> sale@gmail.com</p>
                </div>
            </div>

        </div>
       <!--Grid column-->

    </div>

</section>
    	
		<!-- FOOTER -->
		<footer class="container">
			<p class="float-right"><a href="#">Back to top</a></p>
		    <p>&copy; 2017-2019 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Milos Seckovic 2016201137,SII</a></p>
		</footer>
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>	
	</body>
</html>