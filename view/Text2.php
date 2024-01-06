<?php
    // require "../model/dbConfig.php";

    // $Name = "kelvin";
    // $sql = "SELECT * FROM `customer_list` WHERE `Name`=?";
    // $stmt = mysqli_prepare($db_1, $sql);
    // mysqli_stmt_bind_param($stmt, "s", $Name);
    // mysqli_stmt_execute($stmt);  // 執行sql

    // $result = mysqli_stmt_get_result($stmt);
    // // $rows = array(); //要回傳的陣列
	// // while($r = mysqli_fetch_assoc($result)) {
	// // 	$rows[] = $r; //將此筆資料新增到陣列中
	// // }
    // if($rows = mysqli_fetch_assoc($result)) {
    //     print_r($rows);
    // }
    session_start();
    // $_SESSION['user_id'] = 1;
    echo $_SESSION["U_In"];
    // header('Location: ./Text.php');
?>