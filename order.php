<?php 

include("includes/db.php");
include("functions/functions.php");

?>
<?php 

if(isset($_GET['c_id'])){
    
    $customer_id = $_GET['c_id'];
    
}

$ip_add = getRealIpUser();

$status = "pending";

$invoice_no = mt_rand();

$select_cart = "select * from cart where ip_add='$ip_add'";

$run_cart = mysqli_query($con,$select_cart);

while($row_cart = mysqli_fetch_array($run_cart)){
    
    $pro_id = $row_cart['p_id'];
    
    $pro_qty = $row_cart['qty'];


    $query2=mysqli_query($con,"SELECT * FROM products WHERE product_id='$pro_id'") or die (mysqli_error());
    $row2=mysqli_fetch_array($query2);
    $product_quantity=$row2['product_quantity'];
    $product_title=$row2['product_title'];
    
    
    mysqli_query($con,"UPDATE products SET product_quantity = product_quantity - $pro_qty WHERE product_id ='$pro_id' AND product_quantity='$product_quantity'");



    $shipping_county = $row_cart['county'];
    
    $get_products = "select * from products where product_id='$pro_id'";
    
    $run_products = mysqli_query($con,$get_products);
    
    while($row_products = mysqli_fetch_array($run_products)){
        
        $sub_total = $row_products['product_price']*$pro_qty + 250;

        

        $insert_customer_order = "insert into customer_orders (customer_id,due_amount,invoice_no,product_id,product_title,qty,county,order_date,order_status) values ('$customer_id','$sub_total','$invoice_no','$pro_id','$product_title','$pro_qty','$shipping_county',NOW(),'$status')";
        
        $run_customer_order = mysqli_query($con,$insert_customer_order);

        
        

        $insert_pending_order = "insert into pending_orders (customer_id,invoice_no,product_id,qty,county,order_status) values ('$customer_id','$invoice_no','$pro_id','$pro_qty','$shipping_county','$status')";
        
        $run_pending_order = mysqli_query($con,$insert_pending_order);

        
        
        $delete_cart = "delete from cart where ip_add='$ip_add'";
        
        $run_delete = mysqli_query($con,$delete_cart);
        
        echo "<script>alert('Your orders has been submitted, Thanks')</script>";
        
        echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";
        
    }
    
}

?>