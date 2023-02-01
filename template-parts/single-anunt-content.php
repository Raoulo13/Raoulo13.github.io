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

$sql = "SELECT * FROM anunturi WHERE url='$url' LIMIT 1"; // Se cauta cu =$url asta potriveste exact, si cu LIMIT 1 pentru a selecta numai un rezultat
// se va gasi numai un singur anunt cu url exact ca cel solicitat.
$result = $conn->query($sql);

if ($result->num_rows > 0) {

$row = $result->fetch_assoc();
    

    echo '<div class="titlu-anunt">',$row['titlu'].'</div>';
    echo '<img class="imagine-anunt-pagina" src="'.$row['imagine'].'"></img>';
    echo '<br>';
    echo '<div>'.$row['descriere'].'</div>';
    echo '<br>';
    echo '<div>'.$row['pret'].' Euro</div>';
    echo '<br>';
    echo '<div>Postat la data de: '.$row['data_postare'].'</div>';


}

$conn->close();

?>