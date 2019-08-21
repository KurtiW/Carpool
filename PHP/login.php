<?php

include('connect.php');

if(isset($_GET['password']) && isset($_GET['email']))
{
$sql = "SELECT * FROM `USER` WHERE `EMAIL` = '".$_GET['email']."' AND `PASSWORD` = '".$_GET['password']."'";
    
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
                echo $row["ID"] . "|" . $row["NAME"];
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