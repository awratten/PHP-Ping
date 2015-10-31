<html>
   <head><title>PHP Ping</title></head>
<style>
body
{
font-family:Consolas,Menlo,Monaco,Lucida Console,Liberation Mono,DejaVu Sans Mo$
}
</style>
<body>

<?php
$host = $_GET['host'];
$c = $_GET['c']?: '1';

exec("ping -c $c ".escapeshellarg($host), $output, $status);
echo implode('<br>',$output);
?>

</body>
</html>
