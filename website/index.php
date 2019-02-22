<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" charset="utf-8" src="js/script.js"></script>
</head> 
<body onload="set();setOptionbg()">
<div id="header">
<div id ="logo"> 
<img src="img/logo.png" alt="logo" width="500px">
</div>
<div id="head">
<h1>Biotonnen</h1>
</div>
</div> 
<br>
<div id="divimg">
<?php
require_once('dbconf.php');
$sql2 = "SELECT * FROM biobin";
$db_erg2 = mysqli_query( $db_link, $sql2 ) or die('Ungültige Abfrage: ' . mysqli_error($db_link));
while ($line = mysqli_fetch_array( $db_erg2))
{
	echo "<img src='img/".$line['id']."_".$line['lastfl'].".png' alt='".$line['id']."' id='img".$line['id']."'>";	
}
?>

<script>
array = new Array(<?php 

$sql2 = "SELECT * FROM biobin";
$db_erg2 = mysqli_query( $db_link, $sql2 ) or die('Ungültige Abfrage: ' . mysqli_error($db_link));
while ($line = mysqli_fetch_array( $db_erg2))
{
	echo "'".$line['lastfl'] . "',";	
}
?>);
</script> 
	
	
<img src="img/rgb.png" alt="regensburg">
</div>

<div id="tables">
<?php
ini_set( 'error_reporting', E_ALL );
ini_set( 'display_errors', true );
include 'phpinfo.php';
?>
</div>
<div>
<br>
<br>
<br>
<form action="#" method="post">
<table border="1">
<tr>
<td>1</td>
<td>2</td>
<td>3</td>
<td>4</td>
<td>5</td>
<td>6</td>
<td>7</td>
<td>8</td>
<td>9</td>
<td>10</td>
<td>11</td>
<td>12</td>
<td>13</td>
<td>14</td>
<td>15</td>
</tr>
<tr>
<td> Start </td>
<td><select name="sel2" id="sel2" onclick="setOptionbg()"><option value="">Voll</option><option value="1">Leer</option></select></td>
<td><select name="sel3" id="sel3" onclick="setOptionbg()"><option value="">Voll</option><option value="2">Leer</option></select></td>
<td><select name="sel4" id="sel4" onclick="setOptionbg()"><option value="">Voll</option><option value="3">Leer</option></select></td>
<td><select name="sel5" id="sel5" onclick="setOptionbg()"><option value="">Voll</option><option value="4">Leer</option></select></td>
<td><select name="sel6" id="sel6" onclick="setOptionbg()"><option value="">Voll</option><option value="5">Leer</option></select></td>
<td><select name="sel7" id="sel7" onclick="setOptionbg()"><option value="">Voll</option><option value="6">Leer</option></select></td>
<td><select name="sel8" id="sel8" onclick="setOptionbg()"><option value="">Voll</option><option value="7">Leer</option></select></td>
<td><select name="sel9" id="sel9" onclick="setOptionbg()"><option value="">Voll</option><option value="8">Leer</option></select></td>
<td><select name="sel10" id="sel10" onclick="setOptionbg()"><option value="">Voll</option><option value="9">Leer</option></select></td>
<td><select name="sel11" id="sel11" onclick="setOptionbg()"><option value="">Voll</option><option value="10">Leer</option></select></td>
<td><select name="sel12" id="sel12" onclick="setOptionbg()"><option value="">Voll</option><option value="11">Leer</option></select></td>
<td><select name="sel13" id="sel13" onclick="setOptionbg()"><option value="">Voll</option><option value="12">Leer</option></select></td>
<td><select name="sel14" id="sel14" onclick="setOptionbg()"><option value="">Voll</option><option value="13">Leer</option></select></td>
<td><select name="sel15" id="sel15" onclick="setOptionbg()"><option value="">Voll</option><option value="14">Leer</option></select></td>
</tr>
</table>


<input type="submit" name="submit" value="Route Berechnen" onclick="itv = setInterval(prog, 50)"/>
<button type="button" onclick="set();setOptionbg()">Sensor Daten laden</button>
<button type="button" onclick="reset();setOptionbg()">Reset</button> 
</form>

<div id="pwidget" >  
<div id="progressbar">
    <div id="indicator"></div>
</div>
</div>


<?php
if(isset($_POST['submit'])){

$dump = "[";
for ($i = 15; $i > 1; $i--) {
	if($_POST['sel'.$i] != "")
	{
	$dump .= $_POST['sel'.$i] . ",";
	}
}
$dump .= "]";
exec("java -jar vadim/target/dynamic-acs-1.0-jar-with-dependencies.jar --acs --tries 1 --time 5 --localsearch 0 --quiet -p 2 ".$dump, $output);
echo "<a target='_blank' rel='noopener noreferrer' href='/maps/rgbmap.html'>Berechnete Route ansehen</a>";
}
?>

    
    
</br> 

<div id="footer">
<a target='_blank' rel='noopener noreferrer' href='https://www.oth-regensburg.de/impressum.html'>Impressum</a>
<a target='_blank' rel='noopener noreferrer' href='https://www.oth-regensburg.de/datenschutz.html'>Datenschutz</a>
</div>
</body>
</html>