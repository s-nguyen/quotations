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
if (isset ( $_GET ['mode'] )) {
  if ($_GET ['mode'] === 'showQuotes')
    require_once ("./showQuotes.php");
  elseif ($_GET ['mode'] === 'new')
    require_once ("./addQuote.html");
  elseif ($_GET ['mode'] === 'login')
    require_once ("./login.html");
  elseif ($_GET ['mode'] === 'register')
    require_once ("./register.html");
} else // default
  require_once ("./showQuotes.php");

?>
</body>
</html>
