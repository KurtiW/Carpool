<?php

include('connect.php');

$sql = "SELECT `USER`.`NAME` name, `RIDES`.`OWNER` owner, `RIDES`.`ID` id, `RIDES`.`COUNT` count, `RIDES`.`START` start, `RIDES`.`END` end, `RIDES`.`DEPARTURE` departure  FROM `RIDES` INNER JOIN `USER` ON `RIDES`.`OWNER` = `USER`.`ID` WHERE count > 0";
    
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
            echo $row["id"] . "|" . $row["count"]. "|" . $row["owner"]. "|" . $row["name"]. "|" . $row["start"]. "|" . $row["end"]. "|" . $row["departure"] . "|";
            
            if(isset($_GET['id']))
            {
                   echo CheckChat($row["owner"], $_GET['id'], $conn) . ";<br>";
            }
        
            
       
       }
       
   }
}
               
function CheckChat($id1, $id2, $conn)
{
    $a = -1;
    
    if($id1 == $id2){
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



mysqli_close($conn);



?>