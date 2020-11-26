<?php
include '../Init.php';

$smarty->assign('title', 'Comments');
$smarty->assign('includeFile', 'header.tpl');
$smarty->assign('vals', [3, 24, 32, 5, 2]);
$smarty->assign('selected_id', 0);
$smarty->display('basic-syntax/comments.tpl');
?>
