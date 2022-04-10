<?php
  session_start();
  unset($_SESSION["nomusu"]); 
  unset($_SESSION["apeusu"]);
  session_destroy();
  header("Location: index.php");
  exit;
?>