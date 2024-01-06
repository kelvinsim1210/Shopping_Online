<?php
    
    require('../model/Commodity.php');
    
    $Target = $_REQUEST['Target'];
    switch ($Target) {
        case "Load_List":
            echo Load_List();
            return;

        default: 
    }
?>