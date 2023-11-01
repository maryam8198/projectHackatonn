<?php  require_once '../config/config.php';?>

<?php
if(isset($_SESSION['admin_login']))
{
    echo 'yess';
    header("Location:adminPanel.php");
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ورود مدیر</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="shortcut icon" href="../images/icon.PNG" type="">
</head>
<body>
<div id="mani">
    <div class="main">
        <p class="login">ورود</p>
        <form class="form1" method="post" action="login_admin.php">
            <input type="text" class="UserName" name="name-admin" placeholder="نام کاربری مدیر">
            <input type="password" class="password"  name="password-admin" placeholder="گذرواژه مدیر">
            <input type="submit" name="login-admin" class="submit" value="ورود به بخش مدیریت">

            <p class="ForgetThePassword"><a href="singUpAdmin.php">اضافه کردن مدیر جدید  </a></p>
        </form>
    </div>
</div>

</body>
</html>

<?php
if (isset($_POST['login-admin']) && isset($_POST['name-admin']) && !empty($_POST['name-admin']) && isset($_POST['password-admin']) && !empty($_POST['password-admin'])) {
    $Username_admin = $_POST['name-admin'];
    $Password_admin = $_POST['password-admin'];

    // هش کردن گذرواژه
    $hashedPassword = password_hash($Password_admin, PASSWORD_DEFAULT);

    $loginCheck = mysqli_query($db, "SELECT * FROM admin WHERE name1 = '$Username_admin'");
    if (mysqli_num_rows($loginCheck) > 0) {
        $row = mysqli_fetch_assoc($loginCheck);
        $storedPassword = $row['password'];

        // مقایسه گذرواژه ورودی با گذرواژه ذخیره شده در دیتابیس
        if (password_verify($Password_admin, $storedPassword)) {
            $_SESSION['admin_login'] = $Username_admin;
            header("Location: adminPanel.php");
            exit;
        }
    }

    echo '<script>  alert("اطلاعات وارد شده صحیح نمی باشد ")</script>';
} else {
    echo '<script>  alert("برخی از فیلد ها مقدار دهی نشده!!!!")</script>';
}
?>





