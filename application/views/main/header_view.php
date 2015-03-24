<?php
defined('BASEPATH') OR exit('No direct script access allowed');

?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <title>Student Online Clearance System</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css');?>" />
        <link rel="stylesheet" href="<?php echo base_url('assets/css/din.css');?>" />
        <link rel="stylesheet" href="<?php echo base_url('assets/css/banjo.css');?>" />
        <link rel="stylesheet" href="<?php echo base_url('assets/css/rafe.css');?>" />
</head>
<body>
<div class="ama">
<br/>
<h1><class="ama"><img src="<?php echo base_url('assets/img/AMACC.png')?>" width="150" height="80"></h1>
</div>
   
<div id="container">
	<?php
	$name="";
	$options = "";
	switch ($_SESSION['office'] ) {
		case 'cashier':
			$name = "Cashier";
			break;
		case 'dean':
			$name = "Dean";
			break;
			case 'ssc':
			$name = "SSC";
			break;
			case 'accounting':
			$name = "Accounting";
			break;
			case 'hr':
			$name = "HR";
			$options = "<a href='users'>Users</a>";
			break;
			case 'clinic':
			$name = "Clinic";
			break;
			case 'library':
			$name = "Library";
			break;
			case 'director':
			$name = "Director";
			break;
			case 'property_custodian':
			$name = "Property Custodian";
			break;
		default:
		$name = "Cashier";	
			break;
	}
	?>
  <header>
             <hr />
             <p><?php echo $options; ?></p>
                <div class="toplinks">
                		 <span><?php echo $name; ?></span> | <a href="<?php echo base_url('dashboard'); ?>">Home</a> | <a href="<?php echo base_url('main/managefeedback'); ?>">Feedback</a> | <a href="<?php echo base_url('logout'); ?>">Logout</a>
                        </div>
            </header>
 <div class="row">
<!--                 1st div -->
                <div class="sidebar col-md-3">
                  
                       <ul>
                           <li><a href="welcome/ssc">SSC</a></li>
                           <li><a href="ACCOUNTING_REQUIREMENTS.HTML">Accounting</a></li>
                           <li><a href="">HR</a></li>
                           <li><a href="">Clinic</a></li>
                           <li><a href="">Library</a></li>
                           <li><a href="">Dean</a></li>
                           <li><a href="">Director/Assistant</a></li>
                           <li><a href="welcome/propertycustodian">Property Custodian</a></li>
                       </ul>
                </div>
 