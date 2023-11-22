<?php
// echo var_dump($dsdanhmuc_all);
$show_dm_all = show_DM($ds_danhmuc, $ds_brand);


if (isset($_SESSION['s_user']) && (count($_SESSION['s_user']) > 0)) {
    extract($_SESSION['s_user']);
    $html_account = '<li class="hm-minicart">
                        <div class="hm-minicart-trigger hm-minicart-trigger__user">
                            <a href="wishlist.html">
                                <span class="cart-item-count wishlist-item-count">0</span>
                            </a>
                            <span class="item-icon__user">

                            </span>
                        </div>
                        <div class="minicart minicart__register">
                            <ul style="margin-left: 10px;" class="minicart-product-list ">
                                <li>
                                    <a href="index.php?pg=account">My Account</a>
                                </li>
                                <li>
                                    <a href="index.php?pg=logout">Thoát</a>
                                </li>
                            </ul>

                        </div>
                    </li>
                    <!-- Header Mini Cart Area End Here -->
                </ul>
                <ul class="minicart-product-list__register" style="padding-top: 15px;">' . $username . '</ul>
                        ';
} else {
    $html_account = '<li class="hm-minicart">
                            <div class="hm-minicart-trigger hm-minicart-trigger__user">
                                <a href="wishlist.html">
                                    <span class="cart-item-count wishlist-item-count">0</span>
                                </a>
                                <span class="item-icon__user">

                                </span>
                            </div>
                            <div class="minicart minicart__register">
                                <ul style="margin-left: 10px;" class="minicart-product-list ">
                                    <li>
                                        <a href="index.php?pg=login_register">Đăng Nhập</a>
                                    </li>
                                    <li>
                                        <a href="#">Đăng ký</a>
                                    </li>
                                </ul>

                            </div>
                        </li>
                        <!-- Header Mini Cart Area End Here -->
                    </ul>
                    <ul class="minicart-product-list__register" style="padding-top: 15px;">Đăng nhập</ul>';
}
?>
<!doctype html>
<html class="no-js" lang="zxx">

<!-- index28:48-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>
        <?php
        if (isset($_GET['pg']) && ($_GET['pg'] != "")) {
            $pg = $_GET['pg'];
            echo $pg;
        } else {
            echo "Home";
        }
        // }
        ?>
    </title>
    <meta name="description" content>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="./view/layout/images/menu/logo/logo_full.png">
    <!-- Material Design Iconic Font-V2.2.0 -->
    <link rel="stylesheet" href="./view/layout/asset/css/material-design-iconic-font.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="./view/layout/asset/css/font-awesome.min.css">
    <!-- Font Awesome Stars-->
    <link rel="stylesheet" href="./view/layout/asset/css/fontawesome-stars.css">
    <!-- Meanmenu CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/meanmenu.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/owl.carousel.min.css">
    <!-- Slick Carousel CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/slick.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/animate.css">
    <!-- Jquery-ui CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/jquery-ui.min.css">
    <!-- Venobox CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/venobox.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/nice-select.css">
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/magnific-popup.css">
    <!-- Bootstrap V4.1.3 Fremwork CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/bootstrap.min.css">
    <!-- Helper CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/helper.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="./view/layout/asset/css/responsive.css">
    <!-- Modernizr js -->
    <script src="./view/layout/asset/js/vendor/modernizr-2.8.3.min.js"></script>
    <!-- icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="./view/layout/asset/css/myaccount.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
        
</head>

<body>
    <!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
    <!-- Begin Body Wrapper -->
    <div class="body-wrapper">
        <!-- Begin Header Area -->
        <header>
            <!-- Begin Header Top Area -->
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <!-- Begin Header Top Left Area -->
                        <div class="col-lg-3 col-md-4">
                            <div class="header-top-left">
                                <ul class="phone-wrap">
                                    <li><span>Yêu cầu qua điện thoại:</span><a href="#">(+123) 123 321 345</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- Header Top Left Area End Here -->
                        <!-- Begin Header Top Right Area -->
                        <div class="col-lg-9 col-md-8">
                            <div class="header-top-right">
                                <ul class="ht-menu">
                                    <!-- Begin Setting Area -->
                                    <li>
                                        <div class="ht-setting-trigger"><span>Cài đặt</span></div>
                                        <div class="setting ht-setting">
                                            <ul class="ht-setting-list">
                                                <li><a href="login-register.html">Tài khoản của tôi</a></li>
                                                <li><a href="checkout.html">Thanh toán</a></li>
                                                <li><a href="index.php?pg=login_register">Đăng nhập</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <!-- Setting Area End Here -->
                                    <!-- Begin Currency Area -->
                                    <li>
                                        <span class="currency-selector-wrapper">Tiền tệ :</span>
                                        <div class="ht-currency-trigger"><span>VNĐ</span></div>
                                        <div class="currency ht-currency">
                                            <ul class="ht-setting-list">
                                                <li><a href="#">EUR €</a></li>
                                                <li class="active"><a href="#">USD $</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <!-- Currency Area End Here -->
                                    <!-- Begin Language Area -->
                                    <li>
                                        <span class="language-selector-wrapper">Ngôn ngữ :</span>
                                        <div class="ht-language-trigger"><span>Tiếng việt</span></div>
                                        <div class="language ht-language">
                                            <ul class="ht-setting-list">
                                                <li class="active">
                                                    <a href="#"><img src="./view/layout/images/menu/flag-icon/1.jpg" alt>English</a>
                                                </li>
                                                <li>
                                                    <a href="#"><img src="./view/layout/images/menu/flag-icon/2.jpg" alt>Français</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <!-- Language Area End Here -->
                                </ul>
                            </div>
                        </div>
                        <!-- Header Top Right Area End Here -->
                    </div>
                </div>
            </div>
            <!-- Header Top Area End Here -->
            <!-- Begin Header Middle Area -->
            <div class="header-middle pl-sm-0 pr-sm-0 pl-xs-0 pr-xs-0">
                <div class="container">
                    <div class="row">
                        <!-- Begin Header Logo Area -->
                        <div class="col-lg-3">
                            <div class="logo pb-sm-30 pb-xs-30">
                                <a href="index.php">
                                    <img class="logo-main" src="./view/layout/images/menu/logo/logo_main.png" alt>
                                </a>
                            </div>
                        </div>
                        <!-- Header Logo Area End Here -->
                        <!-- Begin Header Middle Right Area -->
                        <div class="wrappr-nav-mid col-lg-9 pl-0 ml-sm-15 ml-xs-15">
                            <!-- Begin Header Middle Searchbox Area -->
                            <form action="index.php?pg=product" method="post" class="hm-searchbox">
                                <input type="text" id="search_product_name" placeholder="Nhập tên sản phẩm">
                                <button class="li-btn" name="timkiem" type="submit">
                                    <i style="color: white;" class="fa fa-search"></i>
                                </button>
                            </form>
                            <!-- Header Middle Searchbox Area End Here -->
                            <!-- Begin Header Middle Right Area -->
                            <div class="header-middle-right">
                                <ul class="hm-menu">
                                    <!-- Begin Header Middle Wishlist Area -->
                                    <li class="hm-wishlist">
                                        <a href="wishlist.html">
                                            <span class="cart-item-count wishlist-item-count">0</span>
                                            <i style="padding-top: 6px; color: red; font-size: 30px;" class="fa fa-heart-o"></i>
                                        </a>
                                    </li>

                                    <!-- Header Middle Wishlist Area End Here -->
                                    <!-- Begin Header Mini Cart Area -->
                                    <li class="hm-minicart">
                                        <div class="hm-minicart-trigger">
                                            <a href="wishlist.html">
                                                <span class="cart-item-count wishlist-item-count">0</span>
                                            </a>
                                            <span class="item-icon">
                                            </span>

                                        </div>
                                        <div class="minicart">
                                            <ul class="minicart-product-list">
                                                <li>
                                                    <a href="single-product.html" class="minicart-product-image">
                                                        <img src="./view/layout/images/product/small-size/5.jpg" alt="cart products">
                                                    </a>
                                                    <div class="minicart-product-details">
                                                        <h6><a href="single-product.html">Aenean eu tristique</a></h6>
                                                        <span>£40 x 1</span>
                                                    </div>
                                                    <button class="close" title="Remove">
                                                        <i class="fa fa-close"></i>
                                                    </button>
                                                </li>
                                                <li>
                                                    <a href="single-product.html" class="minicart-product-image">
                                                        <img src="./view/layout/images/product/small-size/6.jpg" alt="cart products">
                                                    </a>
                                                    <div class="minicart-product-details">
                                                        <h6><a href="single-product.html">Aenean eu tristique</a></h6>
                                                        <span>£40 x 1</span>
                                                    </div>
                                                    <button class="close" title="Remove">
                                                        <i class="fa fa-close"></i>
                                                    </button>
                                                </li>
                                            </ul>
                                            <p class="minicart-total">Tổng: <span>£80.00</span></p>
                                            <div class="minicart-button">
                                                <a href="shopping-cart.html" class="li-button li-button-fullwidth li-button-dark">
                                                    <span>View Full Cart</span>
                                                </a>
                                                <a href="checkout.html" class="li-button li-button-fullwidth">
                                                    <span>Thanh toán</span>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                    <?= $html_account ?>
                            </div>
                            <!-- Header Middle Right Area End Here -->
                        </div>
                        <!-- Header Middle Right Area End Here -->
                    </div>
                </div>
            </div>
            <!-- Header Middle Area End Here -->
            <!-- Begin Header Bottom Area -->
            <div style="display: flex;" class="header-bottom  d-none d-lg-block d-xl-block">
                <div style="justify-content: center;" class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Begin Header Bottom Menu Area -->
                            <div class="hb-menu">
                                <nav>
                                    <ul>
                                        <li>
                                            <a href="index.php">Trang chủ</a>
                                        </li>
                                        <li class="themne megamenu-holder">
                                            <a href="index.php?pg=product">Sản phẩm</a>
                                            <ul class="megamenu hb-megamenu">


                                                <?= $show_dm_all ?>


                                                <!-- <li><a href="shop-left-sidebar.html">LAPTOP</a>
                                                    <ul>
                                                        <li><a href="shop-left-sidebar.html">iphone</a></li>
                                                        <li><a href="shop-right-sidebar.html">SamSung</a>
                                                        </li>
                                                        <li><a href="shop-list.html">Xiaomi</a></li>
                                                        <li><a href="shop-list-left-sidebar.html">Shop List Left
                                                                Sidebar</a></li>
                                                        <li><a href="shop-list-right-sidebar.html">Shop List Right
                                                                Sidebar</a></li>
                                                    </ul>
                                                </li> -->

                                            </ul>
                                        </li>
                                        <li><a href="index.php?pg=blog">Tin tức</a></li>
                                        <li><a href="index.php?pg=aboutus">Về chúng tôi</a></li>
                                        <li><a href="index.php?pg=contact">Liên hệ</a></li>

                                    </ul>
                                </nav>
                            </div>
                            <!-- Header Bottom Menu Area End Here -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header Bottom Area End Here -->
            <!-- Begin Mobile Menu Area -->
            <div class="mobile-menu-area d-lg-none d-xl-none col-12">
                <div class="container">
                    <div class="row">
                        <div class="mobile-menu">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Mobile Menu Area End Here -->
        </header>
        <!-- Header Area End Here -->