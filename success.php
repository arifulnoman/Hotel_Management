<?php

    require('admin/inc/db_config.php');
    require('admin/inc/essentials.php');
    
    date_default_timezone_set("Asia/Kolkata");
    session_start();
    function regenrate_session($uid)
    {
        $user_q = select("SELECT * FROM `user_cred` WHERE `id`=? LIMIT 1", [$uid], 'i');
        $user_fetch = mysqli_fetch_assoc($user_q);

        $_SESSION['login'] = true;
        $_SESSION['uId'] = $user_fetch['id'];
        $_SESSION['uName'] = $user_fetch['name'];
        $_SESSION['uPic'] = $user_fetch['profile'];
        $_SESSION['uPhone'] = $user_fetch['phonenum'];
    }
    
    $frm_data = filteration($_GET);
    
    $slct_query = "SELECT `booking_id`, `user_id` FROM `booking_order` WHERE `order_id`='$frm_data[order]'";
    
    $slct_res = mysqli_query($con, $slct_query);
    
    $slct_fetch = mysqli_fetch_assoc($slct_res);
    
    if(!(isset($_SESSION['login']) && $_SESSION['login'] == true))
    {
        regenrate_session($slct_fetch['user_id']);
    }

    $upd_query = "UPDATE `booking_order` SET `booking_status`='booked',`trans_status`='TXN_SUCCESS',`trans_resp_msg`='You have successfully done the transaction' WHERE `booking_id`='$slct_fetch[booking_id]'";

    mysqli_query($con, $upd_query);
    
    redirect('pay_status.php?order='.$frm_data['order']);
?>