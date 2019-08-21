<?php
    $servername = "localhost";
    $username   = "carpool_admin";
    $password   = "geheim00";
    $dbname     = "carpool";

    // Erstelle Verbindung
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Teste Verbindung
    if ($conn->connect_error) 
    {
        //Fehlermeldung ausgeben
        die("Connection failed: " . $conn->connect_error);
    }
?>