<?php 
include'connection.inc.php';
$res=mysqli_query($con,"select order_detail.qty,product.name,`order`.*,order_status.name as order_status_str from order_detail,product,`order`,order_status where order_status.id=`order`.order_status and product.id=order_detail.product_id and `order`.id=order_detail.order_id and product.added_by='".$_SESSION['ADMIN_ID']."' order by `order`.id desc");
								while($row=mysqli_fetch_assoc($res)){

?>


									<td class="product-add-to-cart"><?php echo $row['id']?><br/>
									</td>
<!-- 
$data="UPDATE `order_status` SET `id`=[value-1],`name`=[value-2] WHERE 1"
 --><?php } ?>

 