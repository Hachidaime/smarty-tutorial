<?php
include './Init.php';

$hello = 'Hello World!';

$smarty->assign('hello', $hello);
$smarty->display('hello.tpl');
?>
