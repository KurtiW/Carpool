<?php

include('connect.php');

if(isset($_GET['user']))
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
                
                $sql = "SELECT * FROM `RIDES` WHERE `ID` = '".$row["RIDES_ID"]."'";
    
                $r = $conn->query($sql);
                if(!$r)
                { //$execute_query instead of execute_query
                 die("error ".mysqli_error($conn));
                 echo "query error";
                }
                else
                {
                    if ($r->num_rows > 0) 
                    {
                        while($row_ = $r->fetch_assoc()) 
                        {
                            echo $row_["ID"] . "|" . $row_["COUNT"]. "|" . $row_["OWNER"]. "|" . $row_["START"]. "|" . $row_["END"]. "|" . $row_["DEPARTURE"] . ";<br>";
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