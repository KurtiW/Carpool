<?php

include('connect.php');

$sql = "SELECT * FROM `RIDES`";
    
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
            echo $row["ID"] . "|" . $row["COUNT"]. "|" . $row["OWNER"]. "|" . $row["START"]. "|" . $row["END"]. "|" . $row["DEPARTURE"] . ";<br>";
        }
    }
}



mysqli_close($conn);



?>