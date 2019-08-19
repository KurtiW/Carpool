<?php

include('connect.php');

if(isset($_GET['id']))
{
    $sql = "SELECT * FROM `CHAT_USER` WHERE `CHAT_ID` = '".$_GET['id']."'";
    
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
                $sql = "SELECT * FROM `USER` WHERE `ID` = '".$row["USER_ID"]."'";

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

                            echo $row["ID"] . "|" . $row["USER_ID"] . "|" . $row_["NAME"] . ";<br>";




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