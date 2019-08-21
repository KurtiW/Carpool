<?php

include('connect.php');

if(isset($_GET['id']))
{
    $sql = "SELECT * FROM `USER` WHERE `ID` = '".$_GET['id']."'";
    
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
                
                $sql = "SELECT AVG(`RATING`) FROM `RECENSION` WHERE `RECIEVER` = '".$row["ID"]."'";
    
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
                        while($r = $result->fetch_assoc()) 
                        {




                            echo $row["ID"] . "|" . $row["NAME"] . "|" .$r["AVG(`RATING`)"];
                        }
                    }
                }
                
                
                
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