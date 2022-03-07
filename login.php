<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>

<?php
   
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        
        $insertCustomers = $cs->insert_customers($_POST);
        
    }
?>
<?php
	if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) {
        
        $login_Customers = $cs->login_customers($_POST);
        
    }
?>
 <div class="main">
    <div class="content">
    	 <div class="login_panel">
        	<h3>Đăng Nhập</h3>
        	<p>Sign in with the form below.</p>
        	<?php
			if(isset($login_Customers)){
    			echo $login_Customers;
    		}
        	?>
        	<form action="" method="post">
                	<input  type="text" name="email" class="field" placeholder="Email....">
                    <input  type="password" name="password" class="field"  placeholder="Password...." >
                 
                 <p class="note">Nếu bạn quên mật khẩu của mình, chỉ cần nhập email của bạn vào <a href="#">quên mật khẩu</a></p>
                    <div class="buttons"><div><input type="submit" name="login" class="grey" value="Đăng Nhập"></div></div>
             </form>
          </div>
         <?php

         ?> 
    	<div class="register_account">
    		<h3>Đăng Kí Tài Khoản Mới</h3>
    		<?php
    		if(isset($insertCustomers)){
    			echo $insertCustomers;
    		}
    		?>
    		<form action="" method="POST">
		   			 <table>
		   				<tbody>
						<tr>
						<td>
							<div>
							<input type="text" name="name" placeholder="Name..." >
							</div>
							
							<!-- <div>
							   <input type="text" name="city"  placeholder="Enter City..."  >
							</div> -->
							
							<!-- <div>
								<input type="text" name="zipcode"  placeholder="Enter Zipcode..."  >
							</div> -->
							<div>
								<input type="text" name="email"  placeholder="Email..."  >
							</div>
		    			
		    			
						<div>
							<input type="text" name="address"  placeholder="Address..."  >
						</div>
		    		<!-- <div>
						<select id="country" name="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Select a Country</option>   

							<option value="hcm">TPHCM</option>
							<option value="na">Nghệ An</option>
							<option value="hn">Hà Nội</option>
							<option value="dn">Đà Nẳng</option>
							

		         </select>
				 </div>	 -->	        
	
		           <div>
		          <input type="text" name="phone"  placeholder="Phone..." >
		          </div>
				  
				  <div>
					<input type="text" name="password"  placeholder="Password..." >
				</div>
		    	</td>
		    </tr> 
		    </tbody></table> 
		   <div class="search"><div><input type="submit" name="submit" class="grey" value="ĐĂNG KÍ"></div></div>
		    <p class="terms">Bằng cách nhấp vào 'Đăng Kí', bạn đồng ý với <a href="#">Điều Khoản &amp; Điều Kiện</a>.</p>
		    <div class="clear"></div>
		    </form>
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>
<?php 
	include 'inc/footer.php';
	
 ?>
 <style>
 .register_account {
 	height: 376px;
 }
 .login_panel {
 	height: 376px;
 	width: 376px;
 }
 </style>
