<?php

include('connect.php');

if(isset($_GET['user']))
{
    $sql = "SELECT * FROM `RIDES` WHERE `OWNER` = '".$_GET['user']."';";

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
                echo $row["ID"] . "|" . $row["START"]. "|" . $row["END"]. "|" . $row["DEPARTURE"] . ";§<br>";
                
                $sql = "SELECT `PLACES`.`ID` placeID , `USER`.`ID` userID, `USER`.`NAME` username FROM `PLACES` INNER JOIN `USER` ON `PLACES`.`USER_ID`= `USER`.`ID` WHERE `RIDES_ID` = '".$row["ID"]."'";
    
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
                            echo $row_["placeID"] . "|" . $row_["userID"] . "|" . $row_["username"] . "|";
                            
                            $sql = "SELECT AVG(`RATING`) FROM `RECENSION` WHERE `RECIEVER` = '".$row_["userID"]."'";
    
                            $a = $conn->query($sql);
                            if(!$a)
                            { //$execute_query instead of execute_query
                             die("error ".mysqli_error($conn));
                             echo "query error";
                            }
                            else
                            {
                                if ($a->num_rows > 0) 
                                {
                                    while($b = $a->fetch_assoc()) 
                                    {
                                        echo $b["AVG(`RATING`)"] . ";<br>";
                                    }
                                }
                            }
                        }
                    }
                                            echo "$<br>";

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