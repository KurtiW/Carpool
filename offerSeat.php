<?php

include('connect.php');

if(isset($_GET['user']) && isset($_GET['count']) && isset($_GET['start'])&& isset($_GET['end'])&& isset($_GET['time']))
{
    $sql = "INSERT INTO `RIDES` (`ID`, `COUNT`, `OWNER`, `START`, `END`, `DEPARTURE`) VALUES (NULL, '".$_GET['count']."', '".$_GET['user']."', '".$_GET['start']."', '".$_GET['end']."', '".$_GET['time']."');";

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