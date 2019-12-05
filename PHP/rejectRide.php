<?php

include('connect.php');

if(isset($_GET['id']))
{
    
    $sql = "SELECT a.ID mitfahrerID, b.NAME fahrerName, `RIDES`.`DEPARTURE` time FROM `PLACES` 
INNER JOIN `USER` a ON a.ID = `PLACES`.USER_ID
INNER JOIN `RIDES` ON RIDES.ID = `PLACES`.`RIDES_ID`
INNER JOIN `USER` b ON b.ID = `RIDES`.`OWNER`

WHERE `RIDES_ID` = '".$_GET['id']."';";

    if ($r->num_rows > 0) 
    {
        while($row_ = $r->fetch_assoc()) 
        {
            
            $chat = CheckChat(0,$row_["mitfahrerID"], $conn);
            
            if($chat != -1)
            {
            
                $text = "Der Nutzer {$row_["fahrerName"]} hat seine Fahrt mit der Abfahrtszeit {$row_["time"]} abgesagt.";
            
                $sql = "INSERT INTO `MESSAGES` (`ID`, `MESSAGE`, `CHAT_ID`, `SENDER`) VALUES (NULL, '".$text."', '".$chat."', '"."0"."');";

                $conn->query($sql);
            }
       }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    $sql = "DELETE FROM `RIDES` WHERE `ID` = '".$_GET['id']."';";

    $result = $conn->query($sql);
        if(!$result)
        {
            die("error ".mysqli_error($conn));
            echo "query error";
        }
        else
        {
            echo "Query successfull";
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

?>