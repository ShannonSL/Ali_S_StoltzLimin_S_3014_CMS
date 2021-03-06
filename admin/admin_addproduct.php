<?php
require_once 'scripts/config.php';
confirm_logged_in();

$cat_tbl            = 'tbl_category';
$product_categories = getAll($cat_tbl);

if (isset($_POST['submit'])) {
    $pic     = $_FILES['pic'];
    $name    = $_POST['name'];
    $text    = $_POST['text'];
    $price   = $_POST['price'];
    $cat     = $_POST['catList'];

    if(empty($name) || empty($text) || empty($pic) || empty($price) || empty($cat)){
        $message = 'all fields required';
    }else{
        $result  = addProduct($pic, $name, $text, $price, $cat);        
        $message = $result;
    }
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Add Product</title>
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
                <strong>Add Products</strong>
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

<br><br>
   

    <div class="card">

<h5 class="card-header mdb-color white-text text-center py-4">
    <strong>Add a Product</strong>
</h5>

<div class="card-body px-lg-5 pt-0">

<form  action="admin_addproduct.php" method="post" enctype="multipart/form-data" class="md-form" style="color: #757575;">



       
<input type="text" name="name"  id="input name" class="form-control" placeholder="Product Name">


<input type="text" id="input text" name="text" class="form-control" placeholder="Product Description">


<input type="text" name="price" id="price input" class="form-control" placeholder="Product Price">

<select name="catList" id="catlist select" class="mdb-select md-form mb-4 initialized" >
        <option value="" disabled selected>Product Category</option>
        <?php while ($product_category = $product_categories->fetch(PDO::FETCH_ASSOC)): ?>
<option value="<?php echo $product_category['cat_id']; ?>">
    <?php echo $product_category['cat_name']; ?>
</option>
<?php endwhile; ?>
    </select>

<div class="file-field">
    <div class="btn btn-primary float-center ">
        <span>Choose an image(png, jpeg, jpg or gif) <br>No spaces, dashes, underscores, periods, commas or strange characters in filename.</span><br>
        <input type="file" name="pic" id="fileInput pic">
    </div>
   

</div>



<button class="btn btn-outline-info btn-rounded btn-block z-depth-0 my-4 waves-effect" type="submit" name="submit">Submit</button>

</form>
</div>
</div>

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
