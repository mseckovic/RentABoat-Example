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
		        		<a class="nav-link" href="BoatController">Boat</a>
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
		<div class="container marketing">
		    <!-- Three columns of text below the carousel -->
			<div class="row">
		    	<div class="col-lg-4">
		        	<svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
		        	<h2>Heading</h2>
		        	<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
		        	<p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
		      	</div><!-- /.col-lg-4 -->
		      	<div class="col-lg-4">
		        	<svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
		        	<h2>Heading</h2>
		        	<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
		        	<p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
		      	</div><!-- /.col-lg-4 -->
		      	<div class="col-lg-4">
		        	<svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
		        	<h2>Heading</h2>
		        	<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
		        	<p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
		      	</div><!-- /.col-lg-4 -->
		    </div><!-- /.row -->
		    <!-- START THE FEATURETTES -->	
		    <hr class="featurette-divider">
		    <div class="row featurette">
		    	<div class="col-md-7">
		        	<h2 class="featurette-heading">First featurette heading. <span class="text-muted">It’ll blow your mind.</span></h2>
		        	<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
		      	</div>
		      	<div class="col-md-5">
		        	<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
		      	</div>
		    </div>
		    <hr class="featurette-divider">
		    <div class="row featurette">
		    	<div class="col-md-7 order-md-2">
		        	<h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">See for yourself.</span></h2>
		        	<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
		      	</div>
		      	<div class="col-md-5 order-md-1">
		        	<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
		      	</div>
		    </div>
		    <hr class="featurette-divider">
		    <div class="row featurette">
		    	<div class="col-md-7">
		        	<h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
		        	<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
		      	</div>
		      	<div class="col-md-5">
		        	<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
		      	</div>
		   	</div>
		    <hr class="featurette-divider">
		    <!-- /END THE FEATURETTES -->
		</div><!-- /.container -->
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