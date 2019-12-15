<?php

include('connect.php');

if(isset($_GET['user']) && isset($_GET['password']) && isset($_GET['email']))
{
$sql = "INSERT INTO `USER` (`ID`, `NAME`, `EMAIL`, `PASSWORD`) VALUES (NULL, '".$_GET['user']."', '".$_GET['email']."', '".$_GET['password']."');";
    
    $result = $conn->query($sql);
    
    $user_id = $conn->insert_id;

    
if(!$result)
{ //$execute_query instead of execute_query
 die("error ".mysqli_error($conn));
 echo "query error";
}
else
{
        $sql = "INSERT INTO `CHAT` (`ID`) VALUES(NULL);";
    
        $result = $conn->query($sql);
   
    
        $last_id = $conn->insert_id;
       
        $sql = "INSERT INTO `CHAT_USER` (`ID`, `USER_ID`, `CHAT_ID`) VALUES (NULL, '" . 0 .   "', '" . $last_id . "') , (NULL, '" . $user_id . "', '" . $last_id . "');";

        $r = $conn->query($sql);
    

            
        $chat = CheckChat(0,$user_id, $conn);
            

        if($chat != -1)
        {
            
                $text = "Herzlich willkommen, vielen Dank für die Anmeldung. Allzeit gute Fahrt wünscht Ihnen Ihr IGShuttle Team! Probieren Sie gerne auch unser App für Android und IOS aus!";
            
                $sql = "INSERT INTO `MESSAGES` (`ID`, `MESSAGE`, `CHAT_ID`, `SENDER`) VALUES (NULL, '".$text."', '".$chat."', '" . 0 . "');";

                $conn->query($sql);
        }

    

    
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