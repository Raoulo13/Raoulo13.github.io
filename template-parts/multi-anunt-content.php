<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "database_anunturi";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM anunturi WHERE url LIKE '$url%'"; //Se cauta cu LIKE $url%, asta potriveste dupa inceput.
//se vor gasi petru /auto, potriviri de genul /auto/cumparare/dacia-logan
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    
    echo '<a class="anunt-link" href="http://localhost/'.$row['url'].'"><div class="anunt-container">';
        echo '<div class="titlu-anunt">',$row['titlu'].'</div>';
        echo '<img class="imagine-anunt" src="'.$row['imagine'].'"></img>';
        echo '<div class="pret-anunt">'.$row['pret'].' Euro</div>';
    echo '</div></a>';

  }
} else {
  echo "0 results";
}
$conn->close();

?>