<?php

include('connect.php');

if(isset($_GET['user']) && isset($_GET['ride']))
{
    $sql = "INSERT INTO `PLACES` (`ID`, `USER_ID`, `RIDES_ID`) VALUES (NULL, '".$_GET['user']."', '".$_GET['ride'].");";

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