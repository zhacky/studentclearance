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

<div id="container">
	<?php
	$name=""; 
	switch ($_SESSION['username'] ) {
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
<br/>
  <header><center>	<h1>Welcome, <?php echo $name; ?>!</h1></center>
                
             <hr />
             <br />
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
                
<!--                 ito and 2nd -->
                <div class="main col-md-9">
                   <div class="toplinks">
                        <a href="#">Home</a> | <a href="#">Feedback</a> | <a href="<?php echo base_url('logout'); ?>">Logout</a>
                        </div>
                                      <center><h4>ANNOUNCEMENTS</h4></center>
                   <div class="minibar-left">
                       <h3>SSC</h3>
                       <p>SSC Requirements for the Signing of Clearance</p>
                       <ul>
                           <li>* SSC Project fee: P150.00</li>
                           <li>* College Night fee: P300.00</li>
                       </ul>
                       
                       <h3>ACCOUNTING</h3>
                       <p>Requirement(s) for Signing of Clearance</p>
                       <ul>
                           <li>Full payment for student accounts</li>
                       </ul>
                       
                       <h3>HR Deparment</h3>
                       <p>Requirements for the Signing of Clearance</p>
                       <ul>
                           <li>Singing of AMA Hymn</li>
                       </ul>
                   </div>
                   <div class="minibar-right">
                       List of Students That are NOT CLEARED
                   	<?php echo $output; ?>
                       <!-- <select>
                           <option>By Departments</option>
                           <option>By Year</option>
                           <option>By Section</option>
                           <option>By Course</option>
                       </select>
                   <div class="name-list">
                       <table>
                           <tr><td>AJIT A
                               <br/>
                               <ul>
                                   <li>Tinoy, Marlon S.</li>
                                   <li>Espinosa, Francis J.</li>
                                   <li>Espinosa, Francis F.</li>
                                   <li>Beleta, Rodjan Rai</li>
                               </ul>
                               </td></tr>
                           <tr><td>AJIT B
                                <br/>
                               <ul>
                                   <li>Tinoy, Marlon S.</li>
                                   <li>Espinosa, Francis J.</li>
                                   <li>Espinosa, Francis F.</li>
                                   <li>Beleta, Rodjan Rai</li>
                               </ul>
                               </td></tr>
                            <tr><td>
                                
                            </td>
                            </tr>
                       </table>
                   </div>    
              s -->         
                   </div>
                </div>
            </div>
            <footer>
                
                
            </footer>
        </div>
        <script src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
        <script src="<?php echo base_url('assets/js/bootstrap.min.js'); ?>"></script>
</body>
</html>