
<?php

if(isset($_GET['delete_pair'])){

$delete_id = $_GET['delete_pair'];

$delete_wishlist = "delete from pairing where pair_id='$delete_id'";

$run_delete = mysqli_query($con,$delete_wishlist);

if($run_delete){

echo "<script>alert('One Pair Has Been Deleted')</script>";

echo "<script>window.open('my_account.php?pairing','_self')</script>";

}


}




?>

