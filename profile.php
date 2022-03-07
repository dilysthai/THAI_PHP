<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>
<?php
	
	$login_check = Session::get('customer_login'); 
	if($login_check==false){
		header('Location:login.php');
	}
		
?>
<?php

	// if(!isset($_GET['proid']) || $_GET['proid']==NULL){
 //       echo "<script>window.location ='404.php'</script>";
 //    }else{
 //        $id = $_GET['proid']; 
 //    }
 //    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
 //        $quantity = $_POST['quantity'];
 //        $AddtoCart = $ct->add_to_cart($quantity, $id);
        
 //    }
?>
 <div class="main">
    <div class="content">
    	<div class="section group">
    		<div class="content_top">
	    		<div class="heading">
	    		<h3>Thông Tin Tài Khoản</h3>
	    		</div>
	    		<div class="clear"></div>
    		</div>
			
			<table class="tblone">
				<?php
				$id = Session::get('customer_id');
				$get_customers = $cs->show_customers($id);
				if($get_customers){
					while($result = $get_customers->fetch_assoc()){

				?>
				<tr>
					<td>Name</td>
					<td>:</td>
					<td><?php echo $result['name'] ?></td>
				</tr>
				
				<tr>
					<td>Phone</td>
					<td>:</td>
					<td><?php echo $result['phone'] ?></td>
				</tr>
				<!-- <tr>
					<td>Country</td>
					<td>:</td>
					<td><?php echo $result['country'] ?></td>
				</tr> -->
				
				<tr>
					<td>Email</td>
					<td>:</td>
					<td><?php echo $result['email'] ?></td>
				</tr>
				<tr>
					<td>Address</td>
					<td>:</td>
					<td><?php echo $result['address'] ?></td>
				</tr>
				<tr> </tr>
				<tr>
					<td colspan="3" ><a href="orderdetails.php" style="padding:10px 20px; border: 1px solid black; margin-right: 20px">Chi Tiết Đơn Đặt Hàng</a> 
						<a href="editprofile.php" style="padding:10px 20px; border: 1px solid black;  margin-left: 40px">Update Thông Tin</a>
					</td>
					
				</tr>
				
				<?php
					}
				}
				?>
			</table>

 		</div>

 	</div>

<?php 
	include 'inc/footer.php';
	
 ?>
