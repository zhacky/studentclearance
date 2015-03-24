<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
  <title>Student Online Clearance System</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css');?>" />
        <link rel="stylesheet" href="<?php echo base_url('assets/css/din.css');?>" />
        <link rel="stylesheet" href="<?php echo base_url('assets/css/banjo.css');?>" />
        <link rel="stylesheet" href="<?php echo base_url('assets/css/rafe.css');?>" />
	<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
</head>
<body>
	     	<?php echo $output; ?>
	     	        <script src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
        <script src="<?php echo base_url('assets/js/bootstrap.min.js'); ?>"></script>
</body>
</html>