<?php

include('connect.php');

if(isset($_GET['id']))
{
    $sql = "SELECT * FROM `CHAT_USER`  INNER JOIN `CHAT` ON `CHAT`.`ID` = `CHAT_USER`.`CHAT_ID` WHERE `USER_ID` = '".$_GET['id']."' ORDER BY `LAST_SEEN` DESC;";

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

                echo $row["CHAT_ID"]."|".$row["NAME"]."|".$row["CREATEDAT"]."|".$row["LAST_UPDATE"]. "|";
                 
                
                $sql_ = "SELECT * FROM `CHAT_USER` INNER JOIN `MESSAGES` ON `MESSAGES`.`CHAT_ID` = `CHAT_USER`.`CHAT_ID` WHERE `CHAT_USER`.`USER_ID` = '{$_GET['id']}' AND `CHAT_USER`.`CHAT_ID` = '{$row["CHAT_ID"]}' AND `CHAT_USER`.`LAST_SEEN` < `MESSAGES`.`CREATEDAT`";
                
                
                $r = $conn->query($sql_);
                echo ($r->num_rows). ";<br>";
                
                
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