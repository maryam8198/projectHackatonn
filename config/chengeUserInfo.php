<?php
require_once '../config/config.php';
if (isset($_POST['chngeInfo']))
{
    $username2 =$_SESSION['session_login'];
    $email = $_POST['email'];
    $fullname = $_POST['fullname'];
    $phone = $_POST['phone'];
    $password = $_POST['password'];


    $query = mysqli_query($db, "UPDATE  users SET name1 ='$username2' , display_name ='$fullname'
                                 , phone ='$phone' , email ='$email' , password='$password'
                                 WHERE name1 ='$username2'");
    if ($query)
    {
        echo '<script>  alert(" ویرایش اطلاعات موفقیت آمیز بود ")</script>';
        header("Location:../users/users_about.php");


    } else {
        echo '<script>  alert(" خطایی  پیش امده است لطفا مجدد امتحان کنید ")</script>';
    }


}
?>