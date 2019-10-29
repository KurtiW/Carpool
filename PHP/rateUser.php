<?php

include('connect.php');

if(isset($_GET['user']) && isset($_GET['author']) && isset($_GET['rating']) && isset($_GET['text']))
{
    $sql = "INSERT INTO `RECENSION` (`ID`, `TEXT`, `RATING`, `AUTHOR`, `RECIEVER`) VALUES (NULL, '".$_GET['text']."', '".$_GET['rating']."', '".$_GET['author']."', '".$_GET['user']."');";

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
?>