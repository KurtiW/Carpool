<?php

include('connect.php');

if(isset($_GET['id']))
{
    $sql = "SELECT * FROM `CHAT` WHERE `ID` = '".$_GET['id']."'";
    
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

                echo $row["LAST_UPDATE"];
                 
                
                
                
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