<?php
    // session_start();
    // if (!isset(session_id())) {
    //     $_SESSION['user_id'] = uniqid(); // 使用uniqid生成唯一的会话ID
    // }
    
    // 输出会话ID
    // echo "Your session ID: " . session_id();
    session_start();
    $_SESSION['user_id'] = 2;
    header('Location: ./Text.php');
?>