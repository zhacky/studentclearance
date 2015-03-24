<?php
defined('BASEPATH') OR exit('No direct script access allowed');

?>
<br /><?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>

<div class="feedback-list container">
	      	<?php echo $output; ?>
</div>
