<?php

include('connect.php');

if(isset($_GET['id']))
{
    $sql = "SELECT * FROM `MESSAGES` WHERE `CHAT_ID` = '".$_GET['id']."'";
    
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

                echo $row["ID"] . "|" . $row["SENDER"] . "|" .$row["MESSAGE"]. "|" .$row["CREATEDAT"] . ";<br>";
                 
                
                
                
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