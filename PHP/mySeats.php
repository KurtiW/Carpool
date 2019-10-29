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
                echo $row_["placeID"] . "|" . $row_["rideID"]. "|" . $row_["ownerID"]. "|" . $row_["count"]. "|" . $row_["rideStart"]. "|" . $row_["rideEnd"]. "|" . $row_["rideDeparture"] ."|". $row_["userNAME"] . ";<br>";
            }
        }
    }
}
else
{
    echo "query error";

}



mysqli_close($conn);



?>