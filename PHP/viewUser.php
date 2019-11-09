<?php

include('connect.php');

if(isset($_GET['id']))
{
    $sql = "SELECT AVG(`RATING`), `USER`.`ID`, `USER`.`NAME`,`USER`.`EMAIL`  FROM `RECENSION` 
            INNER JOIN `USER` ON `USER`.`ID` = `RECENSION`.`RECIEVER` 
            WHERE `USER`.`ID` = '".$_GET['id']."'";

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

                echo $row["AVG(`RATING`)"]."|".$row["ID"]."|".$row["NAME"]."|".$row["EMAIL"]. ";<br>";
                 
                
                
                
            }
        }
    }
    
    echo "$<br>";
    
    $sql = "SELECT 
                r.`ID` id, 
                r.`RATING` rating, 
                r.`TEXT` t, 
                u.`ID` userID, 
                u.`NAME` userName 
            FROM `RECENSION` r
            INNER JOIN `USER` u ON u.ID = r.`AUTHOR`
            WHERE r.`RECIEVER` = '".$_GET['id']."'";

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

                echo $row["id"]."|".$row["rating"]."|".$row["t"]."|".$row["userID"]."|".$row["userName"]. ";<br>";
                 
                
                
                
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