<?php

include('connect.php');
if(isset($_GET['user'])
{
    $sql = "SELECT * FROM `PLACES` WHERE `USER_ID` = '".$_GET['user']."';";

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
                echo $row["ID"] . "|" . $row["RIDES_ID"] . ";<br>";
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