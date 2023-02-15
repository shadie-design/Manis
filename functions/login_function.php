<?php 

if(isset($_POST['login'])){
    
    $customer_email = $_POST['c_email'];
    
    $customer_pass = $_POST['c_pass'];
    
    $select_customer = "select * from customers where customer_email='$customer_email' AND customer_pass='$customer_pass'";
    
    $run_customer = mysqli_query($con,$select_customer);
    
    $get_ip = getRealIpUser();
    
    $check_customer = mysqli_num_rows($run_customer);
    
    $select_cart = "select * from cart where ip_add='$get_ip'";
    
    $run_cart = mysqli_query($con,$select_cart);
    
    $check_cart = mysqli_num_rows($run_cart);

    date_default_timezone_set('Africa/Nairobi');
        $date = date("Y-m-d H:i:s");

    
    if($check_customer==0){
        
        echo "<script>alert('Your email or password is wrong')</script>";
        echo "<script>window.open('checkout.php','_self')</script>";
        exit();
        
    }
    
    if($check_customer==1 AND $check_cart==0){
        
        $_SESSION['customer_email']=$customer_email;
        
       echo "<script>alert('You are Logged in')</script>"; 
        
       echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";

       $remarks="has logged in the system at ";

       $insert_logs = "INSERT INTO logs (customer_email,action,date) VALUES ('$customer_email','$remarks','$date')";
       $run_logs = mysqli_query($con,$insert_logs);
    
    }else{ 
        
        $_SESSION['customer_email']=$customer_email;
        
       echo "<script>alert('You are Logged in')</script>"; 
        
       echo "<script>window.open('checkout.php','_self')</script>";
       
       $remarks="has logged in the system at ";

       $insert_logs = "INSERT INTO logs (customer_email,action,date) VALUES ('$customer_email','$remarks','$date')";

       $run_logs = mysqli_query($con,$insert_logs);
        
    }
    
}

?>