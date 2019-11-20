<?php

include('connect.php');

if(isset($_GET['user']))
{
    $sql = "    SELECT 
    `PLACES`.`ID` placeID, 
    `RIDES`.`ID` rideID, 
    `RIDES`.`COUNT` count,
    `RIDES`.`OWNER` ownerID,
    `RIDES`.`START` rideStart,
    `RIDES`.`END` rideEnd,
    `RIDES`.`DEPARTURE` rideDeparture,
    `USER`.`NAME` userNAME
    
    FROM `PLACES` 
    INNER JOIN `RIDES` ON `RIDES`.`ID` = `PLACES`.`RIDES_ID`
    INNER JOIN `USER` ON `USER`.`ID` = `RIDES`.`OWNER`
    WHERE `PLACES`.`USER_ID` = '".$_GET['user']."'
    ORDER BY `DEPARTURE`;";

    $result = $conn->query($sql);
    
    if(!$result)
    { //$execute_query instead of execute_query
        die("error ".mysqli_error($conn));
        echo "query error";
    }
    else
    {

        if ($result->num_rows > 0) 
        {
            while($row_ = $result->fetch_assoc()) 
            {
                echo $row_["placeID"] . "|" . $row_["rideID"]. "|" . $row_["ownerID"]. "|" . $row_["count"]. "|" . $row_["rideStart"]. "|" . $row_["rideEnd"]. "|" . $row_["rideDeparture"] ."|". $row_["userNAME"] . "|".CheckChat($_GET['user'], $row_["ownerID"], $conn). ";<br>";
            }
        }
    }
}
else
{
    echo "query error";

}



mysqli_close($conn);

function CheckChat($id1, $id2, $conn)
{
$a = -1;

if($id1 == $id2)
{
    return $a;
}

$s = "SELECT * FROM `CHAT_USER` a JOIN `CHAT_USER` b on b.`CHAT_ID` = a.`CHAT_ID` WHERE a.`USER_ID` = '".$id1."' and b.`USER_ID` = '".$id2."';";

$r = $conn->query($s);

if ($r->num_rows > 0) 
{
    while($row_ = $r->fetch_assoc()) 
    {
        $a = $row_["CHAT_ID"];
   }

}

    return $a;
}

?>