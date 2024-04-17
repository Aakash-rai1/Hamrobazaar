<div class="top-bar animate-dropdown">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">
					<?php if (strlen($_SESSION['login'])) { ?>
						<li><a href="#"><i class="icon fa fa-user"></i>Welcome
								-<?php echo htmlentities($_SESSION['username']); ?></a></li>
					<?php } ?>

					<li><a href="my-account.php"><i class="icon fa fa-user"></i>My Account</a></li>
					<li><a href="my-cart.php"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
					<li><a href="order_history.php"><i class="icon fa fa-history"></i>Order History</a></li>
				</ul>
			</div>

			<div class="cnt-block">
				<ul class="list-unstyled list-inline">
					<?php if (strlen($_SESSION['login']) == 0) { ?>
						<li><a href="login.php"><i class="icon fa fa-sign-in"></i>Login</a></li>
					<?php } else { ?>

						<li><a href="logout.php"><i class="icon fa fa-sign-out"></i>Logout</a></li>
					<?php } ?>


				</ul>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
</div>