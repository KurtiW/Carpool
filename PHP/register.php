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
            
        
    

    
    echo "Query successfull";
}
}
else
{
     echo "query error";

}

mysqli_close($conn);



?>