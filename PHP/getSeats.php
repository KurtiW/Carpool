<?php

include('connect.php');

$sql = "SELECT `USER`.`NAME` name, `RIDES`.`OWNER` owner, `RIDES`.`ID` id, `RIDES`.`COUNT` count, `RIDES`.`START` start, `RIDES`.`END` end, `RIDES`.`DEPARTURE` departure  FROM `RIDES` INNER JOIN `USER` ON `RIDES`.`OWNER` = `USER`.`ID`";
    
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
        while($row = $result->fetch_assoc()) 
        {
            echo $row["id"] . "|" . $row["count"]. "|" . $row["owner"]. "|" . $row["name"]. "|" . $row["start"]. "|" . $row["end"]. "|" . $row["departure"] . ";<br>";
        }
    }
}



mysqli_close($conn);



?>