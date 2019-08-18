<?php

include('connect.php');

if(isset($_GET['user']) && isset($_GET['password']) && isset($_GET['email']))
{
$sql = "INSERT INTO `USER` (`ID`, `NAME`, `EMAIL`, `PASSWORD`, `CREATEDAT`) VALUES (NULL, '".$_GET['user']."', '".$_GET['email']."', '".$_GET['password']."', 'current_timestamp().000000');";
    
    $result = $conn->query($sql);
if(!$result)
{ //$execute_query instead of execute_query
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