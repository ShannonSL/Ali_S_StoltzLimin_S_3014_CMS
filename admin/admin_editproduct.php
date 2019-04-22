<?php require_once('scripts/config.php');
    $results = getAll('tbl_products');
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Edit or Delete Product</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
  <!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.7/css/mdb.min.css" rel="stylesheet">
  <!-- css -->
  <link href="../css/style.css" rel="stylesheet">
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
        <img src="../images/logo.png" style="height:50px;padding:5px;margin-right:10px;">
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
            <a href="scripts/caller.php?caller_id=logout" class="nav-link border border-light rounded waves-effect">
              <i class="far fa-id-badge mr-2"></i>Logout
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
        <div class="view" style="background-image: url('../images/top.png'); background-repeat: no-repeat; background-size: cover;">

          <!-- Mask & flexbox options-->
          <div class="mask rgba-white-strong d-flex justify-content-center align-items-center">

            <!-- Content -->
            <div class="text-center black-text mx-5 wow fadeIn">
              
                <center><img src="../images/logo.png" style="height:140px;margin-top:2em;"><br></center>
              

              <h1 class="mb-4">
                <strong>Edit or Delete Products</strong>
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



	<table class="table table-striped table-responsive-md btn-table">
        <thead>
            <tr>
                
				<th scope="row">Image</th>
				<th scope="row">Item</th>
				<th scope="row">Description</th>
        <th scope="row">Price</th>
				<th scope="row">Edit</th>
				<th scope="row">Delete</th>

            </tr>
        </thead>
        <tbody>
			<?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>
            <tr>
                <td class="wow fadeIn"><img src="../images/<?php echo $row['prod_img']; ?>" alt="<?php echo $row['prod_name'];?>" width="100px" height="60px"></td>
				<td class="wow fadeIn"><?php echo $row['prod_name'];?></td>
				<td class="wow fadeIn"><?php echo $row['prod_desc'];?></td>
        <td class="wow fadeIn"><?php echo $row['prod_price'];?></td>
				<td class="wow fadeIn"><a href="product_detail.php?update_id=<?php echo $row['prod_id']; ?>"><button type="button" class="btn btn-indigo btn-sm m-0">Edit</button></a></td>
				<td class="wow fadeIn"><a href="scripts/caller.php?caller_id=erase&id=<?php echo $row['prod_id']; ?>"><button type="button" class="btn btn-red btn-sm m-0">Delete</button></a></td>

            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>

	
	<a href="../admin"><button class="btn btn-info btn-rounded btn-block z-depth-0 my-4 waves-effect">Back</button></a>

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
