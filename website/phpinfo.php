<html>
<?php
require_once('dbconf.php');

$sql = "SELECT * FROM biobin";
$db_erg = mysqli_query( $db_link, $sql ) or die('Ungültige Abfrage: ' . mysqli_error($db_link));
header('Content-Type: charset=utf-8');
echo '<table border="1" border-spacing="10">'; 
  echo "<tr>";
  echo "<td>". 'ID' . "</td>";
  echo "<td>". 'TonnenNr' . "</td>";
  echo "<td>". 'Füllstand' . "</td>";
  echo "<td>". 'Uhrzeit'. "</td>";
  echo "<td>". ' '. "</td>";
  echo "<td>". 'Fehlerfreier Füllstand'. "</td>";
  echo "<td>". 'Fehlerfreie Uhrzeit'. "</td>";
  echo "<td>". 'Straßenname' . "</td>";
  echo "</tr>";
 while ($zeile = mysqli_fetch_array( $db_erg))
{
  echo "<tr>";
  echo "<td>". $zeile['id'] . "</td>";
  echo "<td>". $zeile['binnum'] . "</td>";
  echo "<td>". $zeile['filllevel'] . "</td>";
  echo "<td>". $zeile['timestamp'] . "</td>";
  echo "<td></td>";
  echo "<td>". $zeile['lastfl'] . "</td>";
  echo "<td>". $zeile['lastfltimestamp'] . "</td>";
  echo "<td>". $zeile['street'] . "</td>";
  echo "</tr>";
}

echo "</table>";

?>
</html>