<!DOCTYPE html>
<html>
<head>
    <!-- By Stephen Nguyen -->
    <meta charset="UTF-8">
    <title>Quotations Enhanced</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<?php
require_once './DataBaseAdaptor.php';
$arrayOfQuotes = $myDatabaseFunctions->getQuotesAsArray ();
?>

<h1>Quotes</h1>

<!-- Add a horizontal menu -->
<form action="controller.php" method="post">
	<button id='buttos2' name="tab" value="register">Register</button>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<button id='buttos2' name="tab" value="login">Login</button>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<button id='buttos2' name="tab" value="addQuote">Add Quote</button>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br>
	<?php
		session_start (); // Need this in each file before $_SESSION['key'] is used.
		if(isset($_SESSION['user'])){ ?>
			<button id="buttos" name="tab" value="unFlagAll">Unflag All</button>
			<button id="buttos" name="tab" value="logOut">Log Out</button>
		<?php } ?>

</form>
	<br>



<!--  Show all quotes on a separate row -->
<?php foreach($arrayOfQuotes as $quote) { ?>

<div class="container">
		 <?= '"'. $quote['quote'] . '"' ?>
     <br>
	<p class="author">
     &nbsp;&nbsp;--
     <?= $quote['author'] ?>
     <br>
	</p>

	<form action="controller.php" method="post">
		<input type="hidden" name="ID" value="<?= $quote['id']?>">
		&nbsp;&nbsp;&nbsp;
		<button name="action" value="increase">+</button>

		 <span id="rating"> <?= $quote['rating']?> </span>
		<button name="action" value="decrease">-</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<button name="action" value="flag">flag</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</form>

</div>
<br>

<?php } // End for loop  ?>

</body>
</html>
