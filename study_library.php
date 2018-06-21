<?php # Maintained by ATS Webbing - Last modified 30 Oct 2016
	# This script sets up various functions for this application.
	
	# <Display Standard Row> This is used in [readings.php]
	function display_standard_row($row) {
		echo "<li class='day'>".$row['day']."</li>".
		"<li>".$row['otreading1']."</li>".
		"<li>".$row['otreading2']."</li>".
		"<li>".$row['ntreading']."</li>";
	}
	function display_special_row($row) {
		# This displays this row with a different class
		# but also creates an array with the three readings for today
		$ot1 = $row['otreading1'];
		$ot2 = $row['otreading2'];
		$nt = $row['ntreading'];
		echo "<li class='day special'>".$row['day']."</li>".
		"<li class='special'>".$ot1."</li>".
		"<li class='special'>".$ot2."</li>".
		"<li class='special'>".$nt."</li>";
		$readings_today = array($ot1,$ot2,$nt);
		return $readings_today;
	}
	function get_book_name($reading) {
		# Find the last occurrence of a space in the string
		$bk_length = strripos($reading," ");
		if ($bk_length) {
			$book = substr($reading,0,$bk_length);
		} else {
			$book = $reading; # Some books are complete in themselves.
		}
		return $book;
	}
	function get_chapter($reading) {
		# Find the last space in the text to indicate the start of the chapters
		# But there may be more than one chapter number, separated by a comma or a hyphen
		$pos1 = strripos($reading," ");
		$pos2 = stripos($reading,",");
		$pos3 = stripos($reading,"-");
		if (!$pos1) {
			$number = 1;
			return $number; # Some books are complete in themselves.
		} else if ($pos2) {
			$len = ($pos2-$pos1-1);
		} else if ($pos3) {
			$len = ($pos3-$pos1-1);
		} else {
			$len = strlen($reading)-$pos1;
		}
		$number = substr($reading,$pos1+1,$len);
		# check for individual case of II John
		if ($number=='John') {
			$number = 1;
		}
		return $number;
	}
	function get_abbreviation($reading) {
		$dbreadings = $_SESSION['dbreadings'];
		$query = "SELECT * FROM books";
		$allbooks = mysqli_query($dbreadings,$query);
		if ($allbooks) {
			while ($row = mysqli_fetch_array($allbooks,MYSQLI_ASSOC)) {
				if ($reading==$row['fullname']) {
					$brief = $row['abbreviation'];
				}
			}
		}
		return $brief;
	}	
?>