<?php

include('connect.php');

if(isset($_GET['user']) && isset($_GET['ride']))
{
    //Test if there are places left
    
    $sql = "SELECT * FROM `RIDES` WHERE `ID` = '".$_GET['ride']."';";
    $result = $conn->query($sql);
    if(!$result)
    {
        die("error ".mysqli_error($conn));
    }
    else
    {
        if ($result->num_rows > 0) 
        {
            while($row = $result->fetch_assoc()) 
            {
                if($row["COUNT"] < 1)
                {
                    echo "no places left";
                    mysqli_close($conn);
                    exit();
                }
            }
        }
    }
    
    //Test if person already takes the seat
    $sql = "SELECT * FROM `PLACES` WHERE `USER_ID` = '".$_GET['user']."' AND `RIDES_ID` = '".$_GET['ride']."';";

    $result = $conn->query($sql);
    if($result)
    {
        if ($result->num_rows > 0) 
        {
            echo "place already exists";
            mysqli_close($conn);
            exit();
        }

    }
    
    //Register seat
    $sql = "INSERT INTO `PLACES` (`ID`, `USER_ID`, `RIDES_ID`) VALUES (NULL, '".$_GET['user']."', '".$_GET['ride']."');";
    $result = $conn->query($sql);
        if(!$result)
        {
            die("error ".mysqli_error($conn));
        }
        else
        {
            //decrase seat count
            $sql = "UPDATE `RIDES` SET `COUNT` = `COUNT` -1 WHERE `ID` = '".$_GET['ride']."';";
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