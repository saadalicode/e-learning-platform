
<?php
session_start();
if(!isset($_SESSION['stu_name']) && !isset($_SESSION['admin_name'])){
    header("location: login.php");
}
require_once "dbconnection.php";
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    

    

    
    <!-- Custom CSS  -->
    <link rel="stylesheet" href="css/style.css?v=1.0">
    <!-- Animate CSS  -->
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
      <!-- Font Awesome CSS  -->
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
 
  

  <!-- favicon  -->
  <link rel="icon" type="image/x-icon" href="images/logo1.png">
    <title>TechStudio</title>

    

<body>



<header>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark pl-5 fixed-top pt-4">
            <a class="navbar-brand" href="index.php"><img src="images/Screenshot 2023-08-28 114609.png" width="100"
                    height="30" class="d-inline-block align-top" alt="">
            </a>
            <span class="tagline">Learn and Implement</span>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse pl-5 ml-5 " id="navbarNavDropdown">
                <ul class="navbar-nav custom-nav ml-5 pl-5" style="font-size: 20px;">
                    <li class="nav-item  custom-nav-item">
                        <a class="nav-link active" href="home.php">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown custom-nav-item">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            Courses
                        </a>
                        <div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdownMenuLink">
                        <?php
            $sql="Select *from course limit 1";
            $result=$mysqli->query($sql);
                    $course_id=19;   
                    echo     '<a class="dropdown-item text-success" href="coursedetails.php?course_id='.$course_id.'">Web Development</a>';
                    $course_id=17;   
                    echo     '<a class="dropdown-item text-success" href="coursedetails.php?course_id='.$course_id.'">App Development</a>';
                    $course_id=18;   
                    echo     '<a class="dropdown-item text-success" href="coursedetails.php?course_id='.$course_id.'">Python Programming</a>';
            ?>
                            <a class="dropdown-item text-success" href="courses.php">See More</a>
                        </div>
                    </li>
                    <li class="nav-item custom-nav-item">
                        <a class="nav-link" href="paymentstatus.php">Payment Status</a>
                    </li>
                    <!-- <li class="nav-item custom-nav-item">
                        <a class="nav-link" href="studentprofile.php">My Profile</a>
                    </li> -->
                    <li class="nav-item custom-nav-item">
                        <a class="nav-link" href="logout.php">Logout</a>
                    </li>
                    <li class="nav-item custom-nav-item">
                        <a class="nav-link" href="Studentfeedback.php">Feedback</a>
                    </li>
                    <li class="nav-item custom-nav-item">
                        <a class="nav-link" href="contactpage.php">Contact</a>
                    </li>

                </ul>
            </div>
        </nav>

        </header>
<!-- Start background video  -->
<div class="container-fluid remove-vid-margin">
    <div class="vid-parent">
        <video playsinline autoplay muted loop>
            <source src="videos/laptop.mp4">
        </video>

        <div class="vid-overlay"></div>

        <div class="vid-content animate__animated animate__backInDown">
            <h1 class="my-content">Welcome to TechStudio</h1>
            <span class="my-content">Learn and Implement</span><br>
            
        </div>
    </div>
</div>


<!-- End background video  -->



<main>

    <!-- text banner start -->
    <div class="container-fluid btn-danger text-banner">
        <div class="row bottom-banner">
            <div class="col-sm">
                <h5><i class="fas fa-open-book mr-3 animate__animated animate__backInLeft"></i>100+ Online Courses</h5>
            </div>

            <div class="col-sm">
                <h5><i class="fas fa-users mr-3 animate__animated animate__backInLeft"></i>Expert Instructor</h5>
            </div>

            <div class="col-sm">
                <h5><i class="fas fa-keyboard mr-3 animate__animated animate__backInLeft"></i>Lifetime Access</h5>
            </div>

            <div class="col-sm">
                <h5><i class="fas fa-keyboard mr-3 animate__animated animate__backInLeft"></i>Money Back Guarantee*</h5>
            </div>
        </div>
    </div>
    <!-- text banner end -->


    <!-- courses section start -->
    <div class="container mt-5">
        <h1 class="text-center ">Popular Courses</h1>
        <div class="row">
         <?php
            $sql="Select *from course limit 9";
            $result=$mysqli->query($sql);
            if($result->num_rows>0){

                while($row=$result->fetch_assoc()){
                    $course_id=$row['course_id'];
                    echo '<div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xlg-4">



                    <div class="card mt-4 ">
    
                        <a href="coursedetails.php?course_id='.$course_id.'" class="btn" style="text-align:left;margin: 0px; padding: 0px;">
                            <img src="images/course_images/'.$row['course_img'].'" alt="java-photo" class="img-fluid"></a>
    
    
                        <div class="card-body">
                            <h5 class="card-title">'.$row['course_name'].'</h5>
                            <p class="card-text">'.$row['course_desc'].'</p>
    
                        </div>
                        <div class="card-footer">
                            <p class="card-text d-inline">Price: <small><del>RS '.$row['course_original_price'].' </del></small><span
                                    class="font-weight-bolder pl-1">RS '.$row['course_price'].'</span></p>
                                     <a href="coursedetails.php?course_id='.$course_id.'" class="btn btn-primary text-white font-weight-bolder float-right">Enroll</a>
    
                        </div>
                    </div>
    
                </div>';
                }
            }
            ?> 


   


    </div> 

    <div class="text-center m-2 ">
        <a href="courses.php" class="btn btn-danger btn-sm p-3">View All Courses</a>
    </div>

    </div>


    <!-- courses section end -->

    <!-- BANNER 2 START  -->

    <div class="contain-fluid mt-5">
        <img src="images/6017156.jpg" alt="banner" class="img-fluid">
    </div>
    <!-- BANNER 2 END -->





    <!-- Instructor section start -->
    <div class="container mt-5">
        <h1 class="text-center">Our Instructors</h1>
        <div class="row">


            <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xlg-4">

                <div class="card mt-4">


                    <img src="images/Sara.jpg" alt="java-photo" class="img-fluid">


                    <div class="card-body">
                        <h5 class="card-title text-center">Dr.Sara Khawar</h5>
                        <p class="card-text text-center">Professional Ethical Hacking Instructor with 5 year
                            experience</p>

                    </div>

                </div>

            </div>
            <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xlg-4">

                <div class="card mt-4">


                    <img src="images/Dr.-Fahad.jpg" alt="java-photo" class="img-fluid">


                    <div class="card-body">
                        <h5 class="card-title text-center">Dr.Fahd Mustafa </h5>
                        <p class="card-text text-center">Professional Web development instructor with 10 year
                            experience</p>

                    </div>

                </div>

            </div>
            <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xlg-4">

                <div class="card mt-4">


                    <img src="images/7.jpg" alt="java-photo" class="img-fluid">


                    <div class="card-body">
                        <h5 class="card-title text-center">Dr.Muhammad Qasim Mahmood </h5>
                        <p class="card-text text-center">Professtional App development instructor with 7 year
                            experience</p>

                    </div>

                </div>

            </div>



        </div>

    </div>

    <!-- Instructor section start -->
</main>







<!-- Footer start  -->
<?php include 'footer.php';?>
<!-- FOOTER END -->





 


















