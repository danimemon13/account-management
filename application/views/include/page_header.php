<!DOCTYPE html>  
<html lang="en" dir="ltr"> 
<head>  
   <title>Welcome <?php $company = $this->session->userdata('company_name'); if($company==''){ $company = 'Account Management System';}else { $company = $company;} echo $company;?> </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
<link rel="stylesheet" href="<?php echo base_url(); ?>css/bootstrap.min.css">
<link type="text/css" href="<?php echo base_url();?>css/vendor-fullcalendar.css" rel="stylesheet">
<link type="text/css" href="<?php echo base_url(); ?>css/vendor-weathericons.css" rel="stylesheet">
	<link type="text/css" href="<?php echo base_url(); ?>css/vendor-bootstrap-datepicker.css" rel="stylesheet">
	<link type="text/css" href="<?php echo base_url(); ?>css/vendor-summernote.css" rel="stylesheet">
	<link type="text/css" href="<?php echo base_url(); ?>css/vendor-bootstrap-datatables.css" rel="stylesheet">
	<link type="text/css" href="<?php echo base_url(); ?>css/vendor-bootstrap-datepicker.css" rel="stylesheet">
	<link type="text/css" href="<?php echo base_url(); ?>css/vendor-bootstrap-switch.css" rel="stylesheet">
	<link type="text/css" href="<?php echo base_url(); ?>css/app.css" rel="stylesheet">
	

</head>  
<body>