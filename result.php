<?php
$active='shop';
include("includes/header.php");
include("includes/db.php");
include("functions/functions.php");

?>


<?php



     if (isset($_POST['search'])){
                                                            
     $search=$_POST['search'];
                                                                
     $querry="SELECT * FROM products WHERE product_categories LIKE '%$search%' OR categories LIKE '%$search%' OR product_desc LIKE '%$search%'";
     $runn_check = mysqli_query($con,$querry);

    while($res=mysqli_fetch_array($runn_check)){
     echo  "
          <div class='col-md-4 col-sm-6 single'>
        
            <div class='product'>
            
                <a href='details.php?pro_id=$pro_id'>
                
                    <img class='img-responsive' src='admin_area/product_images/$pro_img1'>
                
                </a>
                
                <div class='text'>

                <center>
                      
                      <p class='btn btn-primary'>$manufacturer_title </p>

                </center>
                
                    <h3>
            
                        <a href='details.php?pro_id=$pro_id'>

                            $pro_title

                        </a>
                    
                    </h3>
                    
                    <p class='price'>
                    
                        $product_price &nbsp;$product_sale_price
                    
                    </p>
                    
                    <p class='button'>
                    
                        <a class='btn btn-default' href='details.php?pro_id=$pro_id'>

                            View Details

                        </a>
                    
                        <a class='btn btn-primary' href='details.php?pro_id=$pro_id'>

                            <i class='fa fa-shopping-cart'></i> Add to Cart

                        </a>
                    
                    </p>
                
                </div>

                 $product_label
            
            </div>
        
        </div>
        
        ";  
      }      
     
 }

 ?> 