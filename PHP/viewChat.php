<?php

include('connect.php');

if(isset($_GET['id']) && isset($_GET['user']))
{
    //UPDATE `CHAT_USER` SET `CHAT_USER`.`LAST_SEEN` = CURRENT_TIMESTAMP WHERE CHAT_ID = '77' AND USER_ID = '5'
    
    $sql = "UPDATE `CHAT_USER` SET `CHAT_USER`.`LAST_SEEN` = CURRENT_TIMESTAMP WHERE `CHAT_ID` = '{$_GET['id']}' AND `USER_ID` = '{$_GET['user']}'";
    $result = $conn->query($sql);

    
    
    $sql = "SELECT * FROM `MESSAGES` WHERE `CHAT_ID` = '".$_GET['id']."' ORDER BY `CREATEDAT` ASC";
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

                echo $row["ID"] . "|" . $row["SENDER"] . "|" .$row["MESSAGE"]. "|" .$row["CREATEDAT"] ."|" ;
                 
                
                

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