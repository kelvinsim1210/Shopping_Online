<?php
    require('dbConfig.php');
    
    function Load_List() {
        global $db_1;

        $sql = "SELECT * FROM commodity_list WHERE 1";
        $stmt = mysqli_prepare($db_1, $sql);
        mysqli_stmt_execute($stmt);  // 執行sql
    
        $result = mysqli_stmt_get_result($stmt); //取得查詢結果
        $rows = array(); //要回傳的陣列
	    while($r = mysqli_fetch_assoc($result)) {
	    	$rows[] = $r; //將此筆資料新增到陣列中
	    }
	    return json_encode($rows);
        // return $rows;
    }
?>