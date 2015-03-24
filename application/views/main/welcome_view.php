<?php
defined('BASEPATH') OR exit('No direct script access allowed');

?>

<!-- <p>Welcome Page - <?php echo $office; ?></p> -->
<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
 <div class="main col-md-9">
                
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
                   	</div>
  </div>