<?php

include('connect.php');

if(isset($_GET['id']) && isset($_GET['user']))
{
    
    $sql = "INSERT INTO `CHAT` (`ID`) VALUES(NULL);";
    
    $result = $conn->query($sql);
    if(!$result)
    {
        die("error ".mysqli_error($conn));
        echo "query error";
    }
    else
    {
        $last_id = $conn->insert_id;
       
        $sql = "INSERT INTO `CHAT_USER` (`ID`, `USER_ID`, `CHAT_ID`) VALUES (NULL, '" . $_GET['id'] .   "', '" . $last_id . "') , (NULL, '" . $_GET['user'] . "', '" . $last_id . "');";

        $r = $conn->query($sql);
        if(!$r)
        {
            die("error ".mysqli_error($conn));
            echo "query error";
        }
        else
        {
            echo "Query successfull";
        }
            
        
    }
}
else
{
    echo "query error";

}

mysqli_close($conn);
?>