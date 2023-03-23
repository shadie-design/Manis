

<?php


include("includes/db.php");


?>


<?php    
if(isset($_GET['invoice_no'])){
    
    $invoice_no = $_GET['invoice_no'];
    
}
?>
                           
      <?php 
          
                                

      $payment_confirmed = "Paid";
                             
      $get_payments = "select * from pending_orders where invoice_no = '$invoice_no'";
                                
      $run_payments = mysqli_query($con,$get_payments);
          
      $row_payments=mysqli_fetch_array($run_payments);
                                    
       $status = "Paid";


       if(isset($_GET['invoice_no'])){

            $update_paymentStatus = "update pending_orders set order_status = '$status' where invoice_no = '$invoice_no'";
            $run_updatePaymentStatus = mysqli_query($con,$update_paymentStatus);

            $update_orderStatus = "update customer_orders set order_status = '$status' where invoice_no = '$invoice_no'";
            $run_updateOrdersStatus = mysqli_query($con,$update_orderStatus);

            

            if($run_updatePaymentStatus){
                            
                            echo "<script>alert('Payment confirmed successfuly')</script>";
                            
                            echo "<script>window.open('index.php?view_orders','_self')</script>";
                            
                        }

       }
                                    
                            
       ?>
                            