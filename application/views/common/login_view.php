<?php

?>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"	>
	<link href="<?php echo base_url('assets/css/bootstrap.min.css')?>" rel="stylesheet"/>
		<link href="<?php echo base_url('assets/css/banjo.css')?>" rel="stylesheet"/>
		<link rel="icon" type="image/ico" href="favicon.ico">
		<title>AMA University College</title>
		<style>.errors{color: red;}</style>
</head>
<div class="ama">
<br/>
<h1><class="ama"><img src="<?php echo base_url('assets/img/AMACC.png')?>" width="150" height="80"></h1>
</div>
<body>
	
<div class="container ol">	
	<div class="weed">
		<center>
		<?php echo form_open('admin'); ?>
		<!-- <select id="usertype">
		  <option value="dean">Dean</option>
		  <option value="ssc">SSC</option>
		  <option value="accounting">Accounting</option>
		  <option value="hr">HR</option>
		  <option value="clinic">Clinic</option>
		  <option value="library">Library</option>
		  <option value="director">Director/Assistant</option>
		  <option value="property_custodian">Property Custodian</option>
		  <option value="cashier">Cashier</option>
		</select> -->
		<?php
		$options = array(
				'dean' => 'Dean',
				'ssc' => 'SSC',
				'accounting' => 'Accounting',
				'hr' => 'HR',
				'clinic' => 'Clinic',
				'library' => 'Library',
				'director' => 'Director/Assistant',
				'property_custodian' => 'Property Custodian',
				'cashier' => 'Cashier',
				);
				echo form_dropdown('usertype',$options,'cashier');
		?>
		</center>
	</div>
<center>
	<div class="form-inline line1">
	<label for=''password">
	<!-- <input type="password" class="form-control" id="password" placeholder="Enter Password"required="true" size="50"> -->
	<?php
	$data = array(		'name'	=> 'password',
									'id' 			=> 'password',
									'class'	=> 'form-control',
									'placeholder'	=> 'Enter Password',
									'required'	=> 'TRUE',
									'size'		=> '50',
	);?>
	
	<?php echo form_password($data); ?>
	</div>
</center>
	<!-- <center><button type="submit" id="submit"  class="btn btn-primary">Log In</button></center> -->
	<center><?php echo form_submit('submit','Log In','class="btn btn-primary"'); ?></center> 
	<?php echo form_close(); ?>
	<br/>
	<div class="errors"><?php echo validation_errors(); ?></div>
</div>






<script src="<?php echo base_url('assets/js/jquery.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/bootstrap.min.js')?>"></script>

</body>
</html>