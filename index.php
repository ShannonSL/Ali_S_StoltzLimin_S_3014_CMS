<?php require_once('admin/scripts/config.php');
if(isset($_GET['filter'])){
	$tbl = 'tbl_products';
	$tbl_2 = 'tbl_category';
	$tbl_3 = 'tbl_product_category';
	$col = 'prod_id';
	$col_2 = 'cat_id';
	$col_3 = 'cat_name';
	$filter = $_GET['filter'];
	$results = filterResults($tbl,$tbl_2,$tbl_3,$col,$col_2,$col_3,$filter);
}else{
	$results = getAll('tbl_products');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Material Design Bootstrap</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
  <!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.7/css/mdb.min.css" rel="stylesheet">
  <!-- css -->
  <link href="css/style.css" rel="stylesheet">
  <style type="text/css">
    html,
    body,
    header,
    .carousel {
      height: 60vh;
    }

    @media (max-width: 740px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

  </style>
</head>

<body>

  <!-- Navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container">

      <!-- Brand -->
      <a class="navbar-brand waves-effect" href="index.php">
        <img src="images/logo.png" style="height:50px;padding:5px;margin-right:10px;">
      </a>

      <!-- Collapse -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Links -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">

        

        <!-- Right -->
        <ul class="navbar-nav nav-flex-icons ml-auto">
          <li class="nav-item">
            <a class="nav-link waves-effect">
              <span class="badge red z-depth-1 mr-1"> 1 </span>
              <i class="fas fa-shopping-cart"></i>
              <span style="margin-right:20px;" class="clearfix d-none d-sm-inline-block"> Cart </span>
            </a>
          </li>
          
          
          <li class="nav-item">
            <a href="admin/" class="nav-link border border-light rounded waves-effect">
              <i class="far fa-id-badge mr-2"></i>Admin
            </a>
          </li>
        </ul>

      </div>

    </div>
  </nav>
  <!-- Navbar -->

  <!--Carousel Wrapper-->
  <div id="carousel-example-1z" class="carousel slide carousel-fade pt-4" data-ride="carousel">



    <!--Slides-->
    <div class="carousel-inner" role="listbox">

      <!--First slide-->
      <div class="carousel-item active">
        <div class="view" style="background-image: url('images/top.png'); background-repeat: no-repeat; background-size: cover;">

          <!-- Mask & flexbox options-->
          <div class="mask rgba-white-strong d-flex justify-content-center align-items-center">

            <!-- Content -->
            <div class="text-center black-text mx-5 wow fadeIn">
              
                <center><img src="images/logo.png" style="height:140px;margin-top:2em;"><br></center>
              

              <h1 class="mb-4">
                <strong>Your Better Starts Here</strong>
              </h1>

            </div>
            <!-- Content -->

          </div>
          <!-- Mask & flexbox options-->

        </div>
      </div>
      <!--/First slide-->

      
    </div>
    <!--/.Slides-->

    

  </div>
  <!--/.Carousel Wrapper-->

  <!--Main layout-->
  <main>
    <div class="container">

      <!--Navbar-->
      <nav class="navbar navbar-expand-lg navbar-dark mdb-color lighten-3 mt-3 mb-5">

        <!-- Navbar brand -->
        <span class="navbar-brand">Categories:</span>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
          aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="basicExampleNav">

          <!-- Links -->
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.php">All
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.php?filter=accessories">Accessories</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.php?filter=coats">Coats</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.php?filter=shoes">Shoes</a>
			</li>
			
			<li class="nav-item">
              <a class="nav-link" href="index.php?filter=pants">Pants</a>
            </li>
			<li class="nav-item">
			  <a class="nav-link" href="index.php?filter=socks">Socks</a>
			
			</li>
			<li class="nav-item">
              <a class="nav-link" href="index.php?filter=tops">Tops</a>
            </li>
			
			<li class="nav-item">
              <a class="nav-link" href="index.php?filter=swimwear">Swimwear</a>
            </li>
          </ul>
          <!-- Links -->

         
        </div>
        <!-- Collapsible content -->

      </nav>
      <!--/.Navbar-->
	  
      <!--Section: Products v.3-->
      <section class="text-center mb-4">
	   
	  <!--Fourth column-->
  


<!--Card--><div class="card-columns wow fadeIn">	  <?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>


<div class="card wow fadeIn">

  <!--Card image-->
  <div class="view overlay">
	<img src="images/<?php echo $row['prod_img'];?>" alt="<?php echo $row['prod_name'];?>" class="card-img-top"
	  alt="">
	<a>
	  <div class="mask rgba-white-slight"></div>
	</a>
  </div>
  <!--Card image-->

  <!--Card content-->
  <div class="card-body text-center">
	<!--Category & Title-->
	
	<h5>
	  <strong>
		<a href="" class="dark-grey-text"><?php echo $row['prod_name'];?></a>
	  </strong>
	</h5>

	<h4 class="font-weight-bold blue-text">
	  <strong>$ <?php echo $row['prod_price'];?></strong>
  </h4>
  
  <button type="button" class="btn btn-mdb-color"><?php echo $row['prod_desc'];?></button>


  </div>

  
  <!--Card content-->

</div>
<!--Card-->
<?php endwhile;?>
</div>
<!--Fourth column-->


      </section>
      <!--Section: Products v.3-->


    </div>
  </main>
  <!--Main layout-->

  <!--Footer-->
  <footer class="page-footer text-center font-small mt-4 wow fadeIn">

   

    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">
      
    </div>
    <!-- Social icons -->

    <!--Copyright-->
    <div class="footer-copyright py-3">
      © 2019 Copyright
      Sportchek
    </div>
    <!--/.Copyright-->

  </footer>
  <!--/.Footer-->
  <!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.7/js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();

  </script>
</body>

</html>
