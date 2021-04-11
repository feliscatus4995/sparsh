
<center><!-- center Starts -->

<h1> Paired Products </h1>

<p class="lead"> All paired items at one place. Get pairing suggestions by family members & friends.</p>

</center><!-- center Ends -->

<hr>

<div class="table-responsive"><!-- table-responsive Starts -->

<table class="table table-bordered table-hover"><!-- table table-bordered table-hover Starts -->

<thead>

<tr>

<th> Pairing No: </th>

<th> Product 1 </th>

<th> Product 2 </th>

<th> Delete Pair </th>
 
</tr>

</thead>

<tbody>

<?php


$customer_session = $_SESSION['customer_email'];

$get_customer = "select * from customers where customer_email='$customer_session'";

$run_customer = mysqli_query($con,$get_customer);

$row_customer = mysqli_fetch_array($run_customer);

$customer_id = $row_customer['customer_id'];

$i = 0;


$get_wishlist = "select * from pairing where customer_id='$customer_id'";

$run_wishlist = mysqli_query($con,$get_wishlist);

while($row_wishlist = mysqli_fetch_array($run_wishlist)){

$wishlist_id = $row_wishlist['pair_id'];

$product_id_1 = $row_wishlist['product_1_id'];

$product_id_2 = $row_wishlist['product_2_id'];

$get_products_1 = "select * from products where product_id='$product_id_1'";

$run_products_1 = mysqli_query($con,$get_products_1);

$row_products_1 = mysqli_fetch_array($run_products_1);

$product_title_1 = $row_products_1['product_title'];

$product_url_1 = $row_products_1['product_url'];

$product_img1_1 = $row_products_1['product_img1'];

$get_products_2 = "select * from products where product_id='$product_id_2'";

$run_products_2 = mysqli_query($con,$get_products_2);

$row_products_2 = mysqli_fetch_array($run_products_2);

$product_title_2 = $row_products_2['product_title'];

$product_url_2 = $row_products_2['product_url'];

$product_img1_2 = $row_products_2['product_img1'];

$i++;

?>

<tr>

<td width="100"> <?php echo $i; ?> </td>

<td>

<img src="../admin_area/product_images/<?php echo $product_img1_1; ?>" width="60" height="60">

&nbsp;&nbsp;&nbsp; 

<a href="../<?php echo $product_url_1; ?>">

<?php echo $product_title_1; ?>

</a>

</td>

<td>


<img src="../admin_area/product_images/<?php echo $product_img1_2; ?>" width="60" height="60" alt="" & onerror="this.style.display='none'">
<!-- alt="" & onerror="this.style.display='none'" this is used to remove broken image link-->

&nbsp;&nbsp;&nbsp; 

<a href="../<?php echo $product_url_2; ?>">

<?php echo $product_title_2; ?>

</a>


</td>

<td>

<a href="my_account.php?delete_pair=<?php echo $wishlist_id; ?>" class="btn btn-primary">

<i class="fa fa-trash-o"> </i> Delete

</a>

</td>

</tr>

<?php } ?>

</tbody>

</table><!-- table table-bordered table-hover Ends -->

</div><!-- table-responsive Ends -->