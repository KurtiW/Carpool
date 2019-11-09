<?php

include('connect.php');

if(isset($_GET['id']))
{
    $sql = "SELECT * FROM `CHAT_USER` INNER JOIN `MESSAGES` ON `MESSAGES`.`CHAT_ID` = `CHAT_USER`.`CHAT_ID` WHERE `CHAT_USER`.`USER_ID` = '{$_GET['id']}' AND `CHAT_USER`.`LAST_SEEN` < `MESSAGES`.`CREATEDAT` LIMIT 1;";

    $checked = false;
    
    
    
    
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
            echo "MESSAGES AVAILABLE";
        }
        else
        {
            echo "UP TO DATE";

        }
    }
}
else
{
     echo "query error";

}

mysqli_close($conn);



?>