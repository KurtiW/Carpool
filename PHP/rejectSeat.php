<?php

include('connect.php');

if(isset($_GET['id']))
{
    
    $sql = "SELECT * FROM `PLACES` WHERE `ID` = '".$_GET['id']."';";

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

                $ride_id = $row['RIDES_ID'] ;                
                
                
                
            }
        }
    }     
    
    
        $sql = "DELETE FROM `PLACES` WHERE `ID` = '".$_GET['id']."';";

        $result = $conn->query($sql);
        if(!$result)
        {
            die("error ".mysqli_error($conn));
            echo "query error";
        }
        else
        {
            $sql = "UPDATE `RIDES` SET `COUNT` = `COUNT` +1 WHERE `ID` = '".$ride_id."';";
            $result = $conn->query($sql);
            if(!$result)
            {
                die("error ".mysqli_error($conn));
            }
            else
            {

                echo "Query successfull";
            }
        }
    }
else
{
    echo "query error";

}

mysqli_close($conn);
?>