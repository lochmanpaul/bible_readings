<?php # Maintained by ATS Webbing - Last modified 16 Mar 2017
    session_start();
    include('study_init.php');
    include('study_header.php');
    # Get today's date
    $thisday = date('j');
    $month = date('F');
?>

<!-- Main page content goes here -->
	<div id="readings">
		<?php 
                    echo '<h2 class="centre">Readings for the days up to '.$thisday.' '.$month.'</h2>'; 
		?> 
		<div id="studynavcontainer">
                    <ul id='navlist4'>
                    <?php
                        # Find previous and next month from table of months.
                        # Start by finding the current month.
                        # Also, adjust for the beginning or end of the year.
                        $dbreadings = $_SESSION['dbreadings'];
                        $query = "SELECT * FROM months";
                        $allmonths = mysqli_query($dbreadings,$query);
                        if ($allmonths) {
                            while ($row = mysqli_fetch_array($allmonths,MYSQLI_ASSOC)) {
                                if ($row['month'] == $month) {
                                    $prev = $row['id']-1;
                                    $next = $row['id']+1;
                                    # If the current month is January, force the change to December for the previous month.
                                    if ($prev == 0) {
                                        $prev = 12;
                                    }
                                    # If the current month is December, force the change to January for the next month.
                                    if ($next == 13) {
                                        $next = 1;
                                    }
                                }    
                            }
                        }
                        # Find last month and next month by repeating this query.
                        $allmonths = mysqli_query($dbreadings,$query);
                        if ($allmonths) {
                            while ($row = mysqli_fetch_array($allmonths,MYSQLI_ASSOC)) {
                                if ($row['id'] == $prev) {
                                    $lastmonth = $row['month'];
                                }
                                if ($row['id'] == $next) {
                                    $nextmonth = $row['month'];
                                }
                            }
                        }
                        # Filter out everything except today's date, the 3-4 preceding ones and tomorrow's date.
                        # On the last day of the year, data will have to be selected with December FIRST, ordered by MONTH then ID.
                        if ($month == 'December' && $thisday == 31) {
                            $query = "SELECT * FROM readings WHERE month LIKE '".$month."' || month LIKE '".$lastmonth."' || month LIKE '".$nextmonth."' ORDER BY month,id";
                        } else {
                            $query = "SELECT * FROM readings WHERE month LIKE '".$month."' || month LIKE '".$lastmonth."' || month LIKE '".$nextmonth."'";
                        }
                        $readings = mysqli_query($dbreadings,$query);
                        if ($readings) {
                            while ($row = mysqli_fetch_array($readings,MYSQLI_ASSOC)) {
                                switch ($thisday) {
                                    # Catch 28 February and add the following day as well.
                                    case ($thisday >= 28 && $month == 'February'):
                                        $firstday = $thisday-4;
                                        $lastday = 1;
                                        if ($row['day'] >= $firstday && $row['day'] < $thisday && $row['month'] == $month) {
                                        display_standard_row($row);
                                        } else if (($row['day'] == $thisday || $row['day'] == $thisday+1) && $row['month'] == $month) {
                                            $readings_today = display_special_row($row);
                                        } else if ($row['day'] == $lastday && $row['month'] == $nextmonth) {
                                            display_standard_row($row);
                                        }
                                    break;
                                    # If the date is 1-3 of the month, show 3 or 4 days of the preceding month as well.
                                    case ($thisday < 4):
                                        # When February is the preceding month, show a couple more days.
                                        if ($month == 'March') {
                                            $firstday = 26;
                                        } else {
                                            $firstday = 28;
                                        }
                                        if ($row['day'] >= $firstday && $row['day'] <= 31 && $row['month'] == $lastmonth) {
                                            display_standard_row($row);
                                        } else if ($row['day'] < $thisday && $row['month'] == $month) {
                                            display_standard_row($row);
                                        } else if ($row['day'] == $thisday && $row['month'] == $month) {
                                            $readings_today = display_special_row($row);
                                        } else if ($row['day'] == $thisday+1 && $row['month'] == $month) {
                                            display_standard_row($row);
                                        }
                                    break;
                                    # If the date is the last day of the month, show the first day of the next month as well.
                                    # Start with months having only 30 days.
                                    case ($thisday == 30 && ($month == 'April' || $month == 'June' || $month == 'September' || $month == 'November')):
                                        $firstday = $thisday-4;
                                        $lastday = 1;
                                        if ($row['day'] >= $firstday && $row['day'] < $thisday && $row['month'] == $month) {
                                            display_standard_row($row);
                                        } else if ($row['day'] == $thisday && $row['month'] == $month) {
                                            $readings_today = display_special_row($row);
                                        } else if ($row['day'] == $lastday && $row['month'] == $nextmonth) {
                                            display_standard_row($row);
                                        }
                                    break;
                                    # Then consider months having 31 days.
                                    case ($thisday == 31 && ($month == 'January' || $month == 'March' || $month == 'May' || $month == 'July' || $month == 'August' || $month == 'October' || $month == 'December')):
                                        $firstday = $thisday-4;
                                        $lastday = 1;
                                        if ($row['day'] >= $firstday && $row['day'] < $thisday && $row['month'] == $month) {
                                            display_standard_row($row);
                                        } else if ($row['day'] == $thisday && $row['month'] == $month) {
                                            $readings_today = display_special_row($row);
                                        } else if ($row['day'] == $lastday && $row['month'] == $nextmonth) {
                                            display_standard_row($row);
                                        }
                                    break;
                                    # If the date is nothing special, just show the four previous days of the month
                                    # and the following day...
                                    case ($thisday >= 4): 
                                        $firstday = $thisday-4;
                                        if ($row['day'] >= $firstday && $row['day'] < $thisday && $row['month'] == $month) {
                                            display_standard_row($row);
                                        } else if ($row['day'] == $thisday && $row['month'] == $month) {
                                            $readings_today = display_special_row($row);
                                        } else if ($row['day'] == $thisday+1 && $row['month'] == $month) {
                                            display_standard_row($row);
                                        }
                                    break;
                                }
                            }
                        }
                    ?>
                    </ul>
                        <ul id="nav3plain">
                            <?php # Get the books, chapters and abbreviations for today's readings
                            for ($i=0; $i<3; $i++) {
                                $book[$i] = get_book_name($readings_today[$i]);
                                # Get the abbreviations required for <YouVersion>
                                $brief[$i] = get_abbreviation($book[$i]);
                                # check for "I" or "II" at the start of a book name, using spaces as a guide...
                                if (substr($book[$i],1,1)==" ") {
                                        $book[$i]=substr_replace($book[$i],"1",0,2);
                                } else if (substr($book[$i],2,1)==" ") {
                                        $book[$i]=substr_replace($book[$i],"2",0,3);
                                }
                                # check for particular case of "II and III" on 13 Feb
                                if (substr($book[$i],1,3)=="and") {
                                        $book[$i]='2+John';
                                }
                                # then retrieve the chapter number...
                                $chapter[$i] = get_chapter($readings_today[$i]);
                                # Store these values in an array so that they can be redistributed in two separate rows
                                $display[$i] = array('reading'=>$readings_today[$i],'book'=>$book[$i],
                                'chapter'=>$chapter[$i],'brief'=>$brief[$i]);
                            }
                            for ($i=0; $i<3; $i++) {
                                    # Set up the appropriate links for the NET Bible
                                    # The previous link used was: http://net.bible.org/#!bible/
                                    echo '<li><a href="http://lumina.bible.org/bible/'.$display[$i]['book'].'+'.$display[$i]['chapter'].'" target="_blank"
                                    alt = "'.$display[$i]['reading'].'" title = "'.$display[$i]['reading'].'">Net Bible</a></li>';
                            }
                            for ($i=0; $i<3; $i++) {
                                    # Then set up the appropriate links for the YouVersion Bible
                                    echo '<li><a href="http://www.youversion.com/bible/'.$display[$i]['brief'].'.'.$display[$i]['chapter'].'.nivuk/" target="_blank"
                                    alt = "'.$display[$i]['reading'].'" title = "'.$display[$i]['reading'].'">YouVersion</a></li>';
                            }
                            ?>
                            <li><a href="http://eastonsbibledictionary.com/" target="_blank">Dictionary</a></li>
                            <li><a href="http://biblecommenter.com/" target="_blank">Commentaries</a></li>
                            <li><a href="http://bibleatlas.org/" target="_blank">Bible Atlas</a></li>
			</ul>
		</div> <!-- close navcontainer -->

	</div> <!-- close readings -->

  <?php include('study_footer.php'); ?>
	</div> <!-- close wrapper -->
</body>
</html>