<?php # Maintained by ATS Webbing - Last modified 10 Mar 2017
	# This script displays a common footer on all pages and closes the menu database.
?>

			<div id="footer">
				<h6>&copy;2017 - Maintained by <a href="http://www.allthingssound.co.uk/">All Things Sound</a></h6>
			</div> <!-- close footer -->

			<?php mysqli_close($dbreadings); ?>


		</div> <!-- close wrapper previously opened in [study_header.php]-->
	</body>
</html>