<?php

include('connect.php');

if(isset($_GET['chat']) && isset($_GET['author']) && isset($_GET['text']))
{
    $sql = "INSERT INTO `MESSAGES` (`ID`, `MESSAGE`, `CHAT_ID`, `SENDER`) VALUES (NULL, '".$_GET['text']."', '".$_GET['chat']."', '".$_GET['author']."');";

    $result = $conn->query($sql);
        if(!$result)
        {
            die("error ".mysqli_error($conn));
            echo "query error";
        }
        else
        {
            echo "Query successfull";
            
            $sql = "UPDATE `CHAT` SET `LAST_UPDATE` = CURRENT_TIMESTAMP WHERE `CHAT`.`ID` = '".$_GET['chat']."';";

            $result = $conn->query($sql);

        }
    }
else
{
    echo "query error";

}

mysqli_close($conn);
?>