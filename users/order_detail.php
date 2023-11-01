<?php  require_once '../config/config.php';?>
<?php
if (!isset($_SESSION['session_login']))
{
    header("Location:login_users.php");
}
$name = $_SESSION['session_login'];
$getUsername = mysqli_query($db, "SELECT * FROM users WHERE name1='$name'");
$username = mysqli_fetch_array($getUsername);
$orderId = $_GET['order-id'];
$getOrderDetail = mysqli_query($db, "SELECT * FROM orders WHERE id=$orderId");
$orderDetail = mysqli_fetch_array($getOrderDetail);
$productIds = $orderDetail['product_ids'];
$getIds = explode(',', $productIds, -1);
?>

<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/styleadmin.css" rel="stylesheet" />
    <link href="../css/responsive.css" rel="stylesheet" />
    <link rel="shortcut icon" href="../images/icon.PNG" type="">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title>پروفایل کاربر</title>
</head>

<body class="body-users-panel">
    <input type="checkbox" id="nav-toggle">
    <div class="sidebar">
        <div class="sidebar-brand">
            <h2><img  src="../images/icon.PNG" width="50px" height="50px"><span>گیلدا</span></h2>
        </div>
        <div class="sidebar-menu">
            <ul>
                <li class="list active">
                    <a href="usersPanel.php">
                        <span class="icon"><ion-icon name="bar-chart-outline"></ion-icon></span>
                        <span class="title">داشبورد</span>
                    </a>
                </li>
                <li class="list">
                    <a href="../index.php">
                        <span class="icon"><ion-icon name="storefront-outline"></ion-icon></span>
                        <span class="title">مشاهده فروشگاه</span>
                    </a>
                </li>
                <li class="list">
                    <a href="users_about.php">
                        <span class="icon"><ion-icon name="person-outline"></ion-icon></span>
                        <span class="title">مشخصات</span>
                    </a>
                </li>
                <li class="list">
                    <a href="cart.php">
                        <span class="icon"><ion-icon name="cart-outline"></ion-icon></span>
                        <span class="title">سبد خرید</span>
                    </a>
                </li>
                <li class="list active">
                    <a href="orders.php">
                        <span class="icon"><ion-icon name="list-outline"></ion-icon></span>
                        <span class="title">سفارشات</span>
                    </a>
                </li>
                <li class="list">
                    <a href="../config/logOut.php">
                        <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                        <span class="title">خروج از حساب</span>
                    </a>
                </li>
            </ul>
        </div>        
    </div>
<!--main-->
<div class="main-content">
    <header>
        <h1>
            <label for="nav-toggle">
                <span><ion-icon name="menu-outline"></ion-icon></span>
            </label>
        </h1>
        <!--search-->
        <div class="search-wrappar">
            <label>
                <span><ion-icon name="search-outline"></ion-icon></span>
                <input type="Search" placeholder="Search here"/>
            </label>
        </div>
        <!--AdminImg-->
        <div class="user-wrappar">
            <img src="../images/usericon.png" width="40px" height="40px">
            <div>
                <h4>
                    <?php
                    echo $username['name1'];
                    ?>
                </h4>
            </div>
        </div>
    </header>
    <main>
        <div class="content">
            <div class="content-2">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">جزئیات سفارش </h3>
                                <div class="card-tools">
                                    <div class="input-group input-group-sm" style="width: 150px;">
                                        <input type="text" name="table_search" class="form-control float-right" placeholder="Search">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-default"><ion-icon name="search-outline"></ion-icon</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.order-header -->
                            <div class="card-body table-responsive p-0">
                                <h2 ALIGN="CENTER">اقلام سفارش</h2><br>

                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th>نام محصول</th>
                                        <th>قیمت محصول</th>
                                        <th>تصویر محصول</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <?php
                                        foreach ($getIds as $getId){
                                            $getProduct = mysqli_query($db, "SELECT * FROM products WHERE id=$getId");
                                            $product = mysqli_fetch_array($getProduct);?>
                                    <tr>
                                        <td>
                                            <?php echo $product['products_name'] . "<br>";?>
                                        </td>
                                        <td>
                                            <?php echo $product['products_price'] . "<br>";?>
                                        </td>
                                        <td>
                                            <img src="../images/<?php echo $product['products_image']?>" alt="<?php echo $product['products_name']?>" width="80px" id="productsimg">
                                        </td>
                                    </tr>
                                    <?php } ?>
                                    </tr>

                                    </tbody>

                                </table>

                                <br><hr><br>

                                <h2 ALIGN="CENTER">جزئیات پرداخت</h2><br>
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th>درگاه</th>
                                        <th>مبلغ</th>
                                        <th>وضعیت</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                       <td>درگاه پارسیان</td>
                                        <td>
                                            <?php
                                            echo $orderDetail['total'];
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            if( $orderDetail['is_paid'] == 0 )
                                            {
                                                echo 'پرداخت نشده'."";
                                            ?>
                                                <a href="cart.php"> <input class="btn" type="submit" value="پرداخت"></a>
                                            <?php
                                            }
                                            else
                                            {echo 'پرداخت شده';}
                                            ?>
                                        </td>
                                        <td>

                                        </td>

                                    </tr>
                                    </tbody>

                                </table>

                            </div>
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>


<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


<script>
    // add active class in selected list item
    let list =document.querySelectorAll('.list');
    for (let i=0;i<list.length;i++){
        list[i].onclick=function(){
            let j=0;
            while(j<list.length){
                list[j++].className='list';
            }
            list[i].className='list active';
        }
    }
</script>

</div>

</body>
</html>