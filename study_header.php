<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Maintained by ATS Webbing  - Last modified 10 Mar 2017 -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<meta http-equiv="content-type" content="application/xhtml+xml;charset=utf-8" />
	<title>Daily Bible Readings</title>
	<link rel="stylesheet" type="text/css" href="readings.css" />
</head>

<body> 
	<div id="rwrap"> <!-- Start of overall wrapper -->
		<div id="header">
			<h1>Daily Bible Readings</h1>
			
			<h6 class="centre">
			<?php
				echo "Today is ".date('l j M Y').". ";
				echo "This page was last updated on ".date ("D j M Y", getlastmod());
			?>
			</h6>

		</div> <!-- close header -->