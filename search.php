<?php
$file = $_GET['file'];
if(isset($file)) {
    include $file;
} else {
    echo 'No file specified.';
}
?>

