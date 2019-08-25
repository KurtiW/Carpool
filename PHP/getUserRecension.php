<?php

include('connect.php');

if(isset($_GET['id']))
{
    $sql = "SELECT * FROM `RECENSION` WHERE `RECIEVER` = '".$_GET['id']."';";
    
    $result = $conn->query($sql);
    if(!$result)
    {
        die("error ".mysqli_error($conn));
        echo "query error";
    }
    else
    {
        if ($result->num_rows > 0) 
        {
            while($row = $result->fetch_assoc()) 
            {
                
                $sql_ = "SELECT * FROM `USER` WHERE `ID` = '".$row["AUTHOR"]."';";
    
                $result_ = $conn->query($sql_);
                if(!$result_)
                { 
                    die("error ".mysqli_error($conn));
                    echo "query error";
                }
                else
                {
                    if ($result_->num_rows > 0) 
                    {
                        while($r = $result_->fetch_assoc()) 
                        {
                            echo $r["NAME"] . "|" . $row["RATING"] . "|" .$row["TEXT"].";<br>";
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