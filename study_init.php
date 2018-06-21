<?php # Maintained by ATS Webbing - Last modified 30 Oct 2016
	# This script looks for the required database and sets it up if it doesn't exist yet.
	
	# Load dbase settings from the initial settings XML file
	$file_contents = simplexml_load_file("study_settings.xml");
	# (Note that PHP requires an explicit variable declaration when reading from an XML file and working with sessions.
	# Consequently, the (string) declaration has to be included in front of the variable name.)
	$dbr_host = (string)$file_contents->Database->host;
	$dbr_name = (string)$file_contents->Database->name;
	$dbr_user = (string)$file_contents->Database->user;
	$dbr_password = (string)$file_contents->Database->pass;
	
	# Make the connection
	$dbreadings = mysqli_connect($dbr_host,$dbr_user,$dbr_password,$dbr_name);
	if (!$dbreadings) {
		die('The database has not yet been created. Please go to MySQL and import the file: readings.sql');
	}
	$_SESSION['dbreadings'] = $dbreadings;
	
	# Include the library functions for this application
	include('study_library.php');
?>