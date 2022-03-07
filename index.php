<?php 
	include 'inc/header.php';
	// include_once 'inc/slider.php';
?>
<div class="main">

    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>Sản phẩm nổi bật</h3>
    		</div>
    		<div class="clear"></div>
    	</div> 
	      <div class="section group">
	      	<?php
	      		$product_feathered = $product->getproduct_feathered();
	      		if($product_feathered){
	      			while($result = $product_feathered->fetch_assoc()){

	      	?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId'] ?>"><img src="admin/uploads/<?php echo $result['image'] ?>" width="150px" alt="" /></a>
					 <h2><?php echo $result['productName'] ?></h2>
					 <p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p>
					 <p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Chi tiết</a></span></div>
				</div>
				<?php
				}
			}
				?>
			</div> 
			<div class="sale">
    			<h3 class="title-ship">CHÍNH SÁCH SHOP</h3>
    			<div class="sale-content">
    				<div class="giaohang">
    					<img src="ship.png" alt="">
    					<h2 class="shipcode">Giao Hàng Toàn Quốc</h2>
    					<p class="title">Ship COD toàn quốc.Nhận hàng trong vòng 2-3 ngày</p>
    				</div>
    				<div class="giaohang">
    					<img src="doi.png" alt="">
    					<h2 class="shipcode">Đổi Trả Miễn Phí</h2>
    					<p class="title">Xem hàng trước khi nhận. Hoàn trả nếu không hài lòng.</p>
    				</div>
    				<div class="giaohang">
    					<img src="baohanh.png" alt="">
    					<h2 class="shipcode">Bảo Hành Miễn Phí</h2>
    					<p class="title">Bảo hành miễn phí. Lỗi 1 đổi 1 các sản phẩm của Shop.</p>
    				</div>
    			</div>
    		</div>
			<div class="content_bottom">
    		<div class="heading">
    		<h3>Sản phẩm mới nhất</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
				<?php
	      		$product_new = $product->getproduct_new();
	      		if($product_new){
	      			while($result_new = $product_new->fetch_assoc()){

	      		?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result_new['productId'] ?>"><img src="admin/uploads/<?php echo $result_new['image'] ?>" alt="" /></a>
					 <h2><?php echo $result_new['productName'] ?></h2>
					
					 <p><span class="price"><?php echo $fm->format_currency($result_new['price'])." "."VNĐ" ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result_new['productId'] ?>" class="details">Chi tiết</a></span></div>
				</div>
				
				<?php
				}
			}
				?>
			</div>
			<style type="text/css">
				a.phantrang {
				    border: 1px solid #ddd;
				    padding: 10px;
				    background: #414045;
				    color: #fff;
				    cursor: pointer;
				   
				}
				a.phantrang:hover {
				    background: blue;
				}
				.section {
					padding-left: 85px;
				}
				.images_1_of_4 {
				    width: 22.8%;
				    padding: 1.5%;
				    text-align: center;
				    position: relative;
				}
				.sale {
					/*margin-top: 70px;
					margin-bottom: 70px;*/
					background-color: #f3f3f3;
					padding: 20px;
					color: black;
				}
				.title-ship {
					text-align: center;
					padding-bottom: 30px;
				}
				.sale-content {
					display: flex;
					justify-content: space-between;
				}
				.giaohang {
					text-align: center;

				}
				.giaohang img {
					width: 20%
				}
				.giaohang .shipcode {
					 color: black;
				}

			</style>
			<div class="">
				<?php
				if(isset($_GET['trang'])){
					$trang = $_GET['trang'];
				}else{
					$trang = 1;
				}
				$product_all = $product->get_all_product(); 
				$product_count = mysqli_num_rows($product_all);
				$product_button = ceil($product_count/4);
				$i = 1;
				echo '<p>Trang : </p>';
				for($i=1;$i<=$product_button;$i++){
					?>
					<a class="phantrang" <?php if($i==$trang){ echo 'style="background:orange"';} ?> style="margin:0 10px;" href="index.php?trang=<?php echo $i ?>"><?php echo $i ?></a>	
					<?php
					
				}
				?>
			</div>
    </div>
 </div>
 
<?php 
	include 'inc/footer.php';
	
 ?>
