<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

define('DOC_ROOT', realpath(dirname(__FILE__)) . '/');

/**
 * Menyertakan Composer Autoloading
 */
require_once 'vendor/autoload.php';

/**
 * Instansiasi Smarty Template Engine
 */
$smarty = new Smarty();
$smarty->compile_check = true;
$smarty
    ->setTemplateDir(DOC_ROOT . 'templates') // ? Templates directory
    ->setCompileDir(DOC_ROOT . 'templates_c'); // ? Templates cache directory
?>
