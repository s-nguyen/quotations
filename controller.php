<?php
// This file contains a bridge between the view and the model and redirects back to the proper page
// with after processing whatever form this codew absorbs. This is the C in MVC, the Controller.
//
// Authors: Rick Mercer and Hassanain Jamal
//
// TODO: Add control the new expected behavior to
// register
// log in
// flag one quote
// unflag all quotes
// log out
//
require_once './DataBaseAdaptor.php';

if (isset ( $_POST ['author'] ) && isset ( $_POST ['quote'] )) {
	$author = $_POST ['author'];
	$quote = $_POST ['quote'];
	$myDatabaseFunctions->addNewQuote ( $quote, $author );
	header ( "Location: ./index.php?mode=showQuotes" );
} elseif (isset ( $_POST ['action'] ) && isset ( $_POST ['ID'] )) {
	$action = $_POST ['action'];
	$ID = $_POST ['ID'];
	if ($action === 'increase') {
		$myDatabaseFunctions->raiseRating ( $ID );
	}
	if ($action === 'decrease') {
		$myDatabaseFunctions->lowerRating ( $ID );
	}
	if ($action === 'flag') {
		$myDatabaseFunctions->flag ( $ID );
	}
	  header ( "Location: ./index.php?mode=showQuotes" );
} elseif(isset ($_POST['tab'])){
	$tab = $_POST['tab'];
	session_start();
	if($tab === 'register'){
		$_SESSION['invalid'] = false;
		header( "Location: ./index.php?mode=register");
	} elseif($tab === 'login'){
		$_SESSION['valid'] = true;
		header( "Location: ./index.php?mode=login");
	} elseif($tab === 'addQuote'){
		header( "Location: ./index.php?mode=new");
	} elseif($tab === 'logOut'){
		$myDatabaseFunctions->logout();
		header ( "Location: ./index.php?mode=showQuotes" );
	} elseif($tab === 'unFlagAll'){
		$myDatabaseFunctions->unFlagAll();
		header ( "Location: ./index.php?mode=showQuotes" );
	}
} elseif(isset ($_POST['register'])){
	$user = $_POST['username'];
	$pass = $_POST['password'];
	if($myDatabaseFunctions->register($user, $pass)){
		header( "Location: ./index.php?mode=showQuotes");
	} else {
		session_start();
		$_SESSION['invalid'] = true;
		header( "Location: ./index.php?mode=register");
	}

} elseif(isset($_POST['login'])){
	$user = $_POST['username'];
	$pass = $_POST['password'];
	$valid = $myDatabaseFunctions->login($user, $pass);
	session_start (); // need this in any file using $_SESSION['index'];
	if($valid){
		$_SESSION['user'] = $user;
		header( "Location: ./index.php?mode=showQuotes");
	} else{
		$_SESSION['valid'] = false;
		header( "Location: ./index.php?mode=login");
	}
}
?>
