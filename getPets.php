<?php
$servername = "localhost"; 
$username = "root"; 
$password = "";
$dbname = "Pets";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


function getPetsFromDatabase() {
    global $conn;

    // SQL query to select pets data
    $sql = "SELECT * FROM pets";

    $result = $conn->query($sql);

    $pets = array(); 

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $pets[] = $row;
        }
    }

    return $pets;
}


$pets = getPetsFromDatabase();


$pets_json = json_encode($pets);


echo "var pets = " . $pets_json . ";";
?>
