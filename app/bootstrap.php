
<?php
// Load Config
require_once 'config/config.php';
require_once 'helpers/url_helper.php';
require_once 'helpers/session_helper.php';
 //require_once 'libraries/controller.php';
 //require_once 'libraries/database.php';
 //Auto load core libraries
 spl_autoload_register(function($className){

    require_once 'libraries/'.$className.'.php';

 })

?>