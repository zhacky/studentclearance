<?php
defined('BASEPATH') OR exit('No direct script access allowed');

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
<body>
<div class="ama">
<br/>
<h1><class="ama"><img src="<?php echo base_url('assets/img/AMACC.png')?>" width="150" height="80"></h1>
</div>
	
<div class="container ol">	
		<center>
			<br/>
	<div class="form-inline">
		<?php echo form_open('main'); ?>
		
		<?php
		$data1=array(
		'type' => 'email',
		'name'	=>	'email_address',
		'id'			=>	'email_address',
		'class' 	=> 'form-control',
		'placeholder' =>'Email Address',
		'required' => 'TRUE',
		'size' 		=> '50',
		);
			echo form_input($data1,set_value('email_address'));
	?>
	</div>
	<div class="form-inline">
	<br/>
	<?php
	$data2 = array(		'name'	=> 'password',
									'id' 			=> 'password',
									'class'	=> 'form-control',
									'placeholder'	=> 'Enter Password',
									'required'	=> 'TRUE',
									'size'		=> '50',
	);?>
	
	<?php echo form_password($data2); ?>
	<br/>
	</div>
		<div class="form-inline line1">
	<?php echo form_submit('submit','Log In','class="btn btn-primary"'); ?>
	<?php echo form_close(); ?>
	</div>
	</center> 
	<br/>
	<div class="errors"><?php echo validation_errors(); ?></div>
</div>






<script src="<?php echo base_url('assets/js/jquery.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/bootstrap.min.js')?>"></script>

</body>
</html>