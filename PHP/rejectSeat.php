<?php

include('connect.php');

if(isset($_GET['id']))
{
    $sql = "DELETE FROM `PLACES` WHERE `ID` = '".$_GET['id']."';";

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