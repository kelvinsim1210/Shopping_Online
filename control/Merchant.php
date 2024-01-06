<?php
    require('../model/Merchant.php');

    $User = $_REQUEST['Target'];  // 用戶分類
    switch ($User) {
        case "Add_Commodity":
            $Data = $_POST["Form"];
            $Data = json_decode($Data);
            echo Add_Commodity($Data->Name, $Data->Introduction, $Data->Price, $Data->Num, $Data->M_Id);
            return;

        default: 
    }
?>