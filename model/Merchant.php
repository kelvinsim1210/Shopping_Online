<?php
    require('dbConfig.php');
    
    function Add_Commodity($Name, $Introduction, $Price, $Num, $M_Id) {
        global $db_1;

        $sql = "SELECT count(*) as Num FROM commodity_list WHERE 1";
        $stmt = mysqli_prepare($db_1, $sql);
        mysqli_stmt_execute($stmt);  // 執行sql
    
        $result = mysqli_stmt_get_result($stmt); //取得查詢結果
        $Id = mysqli_fetch_assoc($result);
        $CO_Id = "CO".str_pad($Id["Num"], 13, "0", STR_PAD_LEFT);

        $sql = "insert into commodity_list (Id, Name, Introduction, M_Id, Price, Num) values (?,?,?,?,?,?)";
		$stmt = mysqli_prepare($db_1, $sql); //prepare sql statement
		mysqli_stmt_bind_param($stmt, "ssssii", $CO_Id, $Name, $Introduction, $M_Id, $Price, $Num);
	    mysqli_stmt_execute($stmt);  //執行SQL
	    return "complete";
    }
?>