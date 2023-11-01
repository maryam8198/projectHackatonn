-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 06:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poroject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name1` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `display_name` text COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `password` int(32) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name1`, `display_name`, `email`, `password`, `phone`) VALUES
(1, 'admin1', 'motahare_afshar', 'z@gmail.com', 123456789, 2147483647),
(2, 'admin', 'maryam_soleimani', 'm@gmail.com', 789, 987456310);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` varchar(60) COLLATE utf8mb4_persian_ci NOT NULL,
  `product_id` varchar(20) COLLATE utf8mb4_persian_ci NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `price`) VALUES
(27, '', '52', 293000);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `users_name` text COLLATE utf8mb4_persian_ci NOT NULL,
  `users_email` text COLLATE utf8mb4_persian_ci NOT NULL,
  `comment_text` text COLLATE utf8mb4_persian_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `users_name`, `users_email`, `comment_text`, `product_id`) VALUES
(31, '$username', '$emailUser', '$messageUser', 0),
(32, 'wwww', 'vampiremaryam0@gmail.com', 'very good', 28),
(33, '', '', '', 0),
(34, 'maryam soleimani', 'vampiremaryam0@gmail.com', 'nbvcxs', 28),
(35, 'maryam soleimani', 'vampiremaryam0@gmail.com', 'very good', 28),
(36, 'maryam soleimani', 'vampiremaryam0@gmail.com', 'very good', 28),
(37, 'maryam soleimani', 'vampiremaryam0@gmail.com', 'very good', 28),
(38, 'maryam soleimani', 'vampiremaryam0@gmail.com', 'very good', 28),
(39, 'maryam soleimani', 'vampiremaryam0@gmail.com', 'dryxix', 28),
(40, 'maryam soleimani', 'vampiremaryam0@gmail.com', 'fhnxnu', 0),
(41, 'maryam soleimani', 'vampiremaryam0@gmail.com', 'fhnxnu', 0),
(42, 'maryam soleimani', 'vampiremaryam0@gmail.com', 'kjhgfdsmnbvcx', 0),
(43, '', '', '', 0),
(44, '', '', '', 0),
(45, 'maryam soleimani', 'vampiremaryam0@gmail.com', 'very good', 29),
(46, 'maryam soleimani', 'vampiremaryam0@gmail.com', 'dryxix', 29),
(47, 'maryam', 'maryam@gmail.com', 'بسیار عالی و زیبا', 45),
(48, 'sogand', 'sogand@gamil.com', 'بسیار عالی و زیبا', 47),
(49, 'maryam', 'maryam@gmail.com', 'ماندگاری عالی', 52);

-- --------------------------------------------------------

--
-- Table structure for table `favariteflower`
--

CREATE TABLE `favariteflower` (
  `id` int(11) NOT NULL,
  `products_name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `user_name` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `favariteflower`
--

INSERT INTO `favariteflower` (`id`, `products_name`, `product_price`, `product_image`, `user_name`, `product_id`) VALUES
(3, 'flower12', 850000, 'p4.jpg', 'sara', 26),
(8, 'باکس رز آبی', 586000, 'rozAbi.JPG', 'zahra', 39),
(10, 'باکس گل سرمست', 615000, 'boxGolSarmast.JPG', 'zahra', 37),
(12, 'ست گلدان ساکولنت یادگار', 181000, 'kaktos1.JPG', 'sogand', 42),
(14, 'باکس رز آبی', 586000, 'rozAbi.JPG', 'sogand', 39),
(15, 'باکس گل غزال', 516000, 'mikhak.JPG', '', 47),
(16, 'باکس گل آنیسا', 398000, 'mikhak1.JPG', '', 48),
(17, 'گل آرا', 2500000, 'tratiyom.JPG', '', 49),
(18, 'گل صنم کبود', 234000, 'orkide.JPG', 'sara12', 50),
(19, 'باکس گل آنیسا', 398000, 'mikhak1.JPG', 'sara12', 48);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_email` text COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `product_ids` varchar(11) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `is_paid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_email`, `product_ids`, `total`, `is_paid`) VALUES
(21, 'zahra', '33, ', 727000, 1),
(22, 'zahra', '45, 42, ', 606000, 1),
(23, 'sara', '43, 37, ', 891000, 1),
(24, 'sogand', '45, 44, 40,', 1148000, 1),
(25, 'sara12', '37, 45, ', 1040000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `products_name` text COLLATE utf8mb4_persian_ci NOT NULL,
  `products_price` int(11) NOT NULL,
  `products_desc` text COLLATE utf8mb4_persian_ci NOT NULL,
  `products_image` text COLLATE utf8mb4_persian_ci NOT NULL,
  `products_offer` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `products_name`, `products_price`, `products_desc`, `products_image`, `products_offer`, `type`) VALUES
(35, 'باکس دل یار', 350000, 'باکس گل رز و آنتوریوم سفید که باکس دل یار نامگذاری شده است هدیه‌ای است برای کسانی که علاقمند گل‌هایی به رنگ سفید هستند. این دسته گل جذابیت خاص خود را دارد و هدیه‌ای برای مناسبت‌های مختلف است.\r\nمحصولی که از گُل‌سِتان دریافت خواهید کرد مشخصات زیر را داراست :\r\n\r\nهفت شاخه رز هلندی سفید، چهار شاخه آنتوریوم سفید، چهار عدد برگ عبایی، یک عدد برگ آرالیا، پنج شاخه نخل مرداب و مقداری برگ شمشاد\r\nباکس استوانه مشکی مقوایی برای ساخت این باکس استفاده شده است.\r\nاین محصول دارای 48 سانتی‌متر ارتفاع و 38 سانتی‌متر عرض\r\nکارت پستال رایگان با متن دلخواه شما ارسال می‌گردد.\r\nدر این محصول گل آنتوریوم در کنار رز هلندی جلوه زیبایی ایجاد کرده است.', 'boxDel.jpg', 0, 'باکس گل'),
(36, 'باکس گل به وقت عاشقی', 854000, 'باکس رز و لیسیانتوس کرم صورتی هدیه‌ای جذاب و سوپرایزی هیجان انگیز برای محبوب شماست. اگر برای قرار ملاقات عاشقانه، هدیه سالگرد ازدواج یا حتی جشن تولد محبوبتان در جستجوی هدیه هستید، این محصول را به شما پیشنهاد می‌کنیم.\r\nمشخصات محصولی که از گل‌سِتان دریافت می‌کنید\r\nباکس رز و لیسیانتوس کرم صورتی که از گل‌سِتان دریافت می‌کنید دارای مشخصات زیر است :\r\n\r\n8 شاخه رز هلندی یاسی، یک دسته رز مینیاتوری کرم صورتی، 3 دسته لیسیانتوس سفید، مقداری گل عروس\r\nظرف شیشه‌ای حاوی پوشال صورتی که گل‌ها درون آن قرار گرفته‌اند.\r\nابعاد محصول عبارتند از ارتفاع 25 و عرض 30 سانتی‌متر\r\nکارت پستال رایگان با متن دلخواه شما که بر روی محصول قرار می‌گیرد.', 'boxGol.JPG', 1, 'باکس گل'),
(37, 'باکس گل سرمست', 615000, 'باکس رز مینیاتوری قرمز هدیه رمانتیک و زیبایی است که سرمست نام گرفته و دریافت کننده آنرا به شدت سوپرایز خواهد کرد. گل‌های رز قرمز در احاطه برگ‌های قرمز رنگ تزیینی، درون تندیس دلربایی قرار گرفته‌اند که مجموع آنها پیشکشی ساخته‌اند که نشان از شور عشق و محبت دارد.\r\nمشخصات محصولی که از گل‌سِتان دریافت می‌کنید\r\nمحصول گل‌های رز در تندیس مشکی هدیه‌ای است که دارای مشخصات زیر می‌باشد :\r\n\r\nسه دسته رز مینیاتوری قرمز، یک دسته برگ جزه قرمز، مقداری سبزه ریزه\r\nتندیس مشکی سایز کوچک که گل‌های سرخ را درون آن قرار داده‌ایم\r\nاین محصول دارای ارتفاع 30 و عرض 25 سانتی‌متری می‌باشد', 'boxGolSarmast.JPG', 1, 'باکس گل'),
(38, 'رز جاودان دیو و دلبر', 470000, 'رز جاودان دیو و دلبر هدیه‌ای عاشقانه از گل رز زیبای ماندگاری است که نام آن برگرفته از داستان دیو و دلبر می‌باشد. عشاق در مناسبت‌های به یادماندنی می‌توانند این هدیه را به عزیزان خود تقدیم کنند و به پاس عشق و دوستی لبخند بر لب محبوب خود بیاورند.\r\nگل رز جاودان قرمز که  دریافت می‌کنید دارای مشخصات زیر است :\r\n\r\n1 عدد گل رز جاودان قرمز با ساقه بلند\r\nباکس شیشه‌ای که گل درون آن قرار گرفته است\r\nابعاد محصول عبارتند از ارتفاع 25 و عرض 14 سانتی‌متر', 'rozJavdan.JPG', 0, 'رز'),
(39, 'باکس رز آبی', 586000, 'باکس گل رز آبی هلندی که با گل‌های عروس و تری چیلیوم تزیین شده، هدیه زیبایی برای سوپرایز عزیزان شماست. این جعبه گل دوست داشتنی مناسب برای خانم و آقاست و گل‌های تازه و باطراوت آن هر بیننده‌ای را مسحور می‌سازد.\r\nمحصولی که  دریافت می‌کنید دارای مشخصات زیر است :\r\n\r\n۹ شاخه رز جمیلا لاجوردی، ۱ دسته تریچیلیوم بنفش، اسپاراگوس، عروس\r\nباکس مقوایی استوانه سفید که گل‌ها را در بر گرفته است.\r\nابعاد این باکس عبارتست از ارتفاع ۲۵ و عرض ۱۸ سانتی‌متر', 'rozAbi.JPG', 0, 'رز'),
(40, 'باکس چوبی آنتوریوم سفید', 200000, 'باکس آنتوریوم سفید در جعبه چوبی با طراحی یک طرفه زیبا طراحی شده است. اگر برای مناسبت مهمی که در پیش رو دارید در جستجوی باکس گلی زیبا با رنگ‌های ملایم هستید ، این محصول را به دقت بررسی کنید و خریدی مطمئن و خاص انجام دهید.\r\nباکسی که  دریافت خواهید کرد شامل موارد زیر است:\r\n\r\nشش شاخه آنتوریوم سفید و شگفت انگیز همراه برگ عبایی و نخل مرداب که به زیبایی در یک باکس چوبی یکطرفه با اندازه متوسط تزیین شده اند.\r\nابعاد این باکس به همراه گل های درون آن بطور کلی 30 در 40 سانتی‌متر است.', 'tarhim.JPG', 0, 'ترحیم'),
(41, 'دیش گاردن بتنی کاکتوس', 256000, 'اگر فضای زیادی برای نگهداری گیاهان آپارتمانی ندارید، اگر دوست دارید با یک خرید تعداد زیادی کاکتوس به خانه ببرید، اگر از دوستداران کاکتوس‌ها و ساکولنت‌ها هستید به شما دیش گاردن بتنی کاکتوس را پیشنهاد می‌کنیم. این محصول هم مناسب هدیه دادن است و هم مناسب دکوراسیون داخلی.\r\nمحصولی که  خریداری می‌نمایید دارای مشخصات زیر است :\r\n\r\nگلدان بتنی رنگ شده به رنگ مشکی ، طلایی و طوسی\r\nچند عدد کاکتوس‌ و ساکولنت در انواع مختلف و زیبا که در کنار یکدیگر درون دیش گاردن کاشته شده‌اند\r\nاین دیش گاردن دارای ارتفاع ۱۵ و عرض ۲۱ سانتی‌متر است', 'kaktos.JPG', 1, 'کاکتوس'),
(42, 'ست گلدان ساکولنت یادگار', 181000, 'ست گلدان هاورتیا گورخری  یک انتخاب فوق‌العاده برای مصارف تزیینی است. از این دو گلدان می‌توانید برای تزیین میزکار یا میز تلوزیون خود استفاده کنید. حتی می‌توانید آن‌ها را برای محل کار خود خریداری کرده و طراوت و تازگی را برای محل کارتان به ارمغان آورید.\r\n\r\nمشخصات ست گلدان هاورتیا گورخری\r\nست گلدانی که دریافت می‌کنید شامل موارد زیر است:\r\n\r\nگلدان هاورتیا گورخری بزرگ\r\nگلدان هاورتیا گورخری مینی', 'kaktos1.JPG', 0, 'کاکتوس'),
(43, 'گیاه سانسوریا سبز پرغلاف', 276000, 'سانسوریا سبز پرقلاف گیاهی دوست داشتنی با ماندگاری و مقاومت بالاست. اگر در جستجوی گیاهی با قابلیت تصفیه کنندگی هوا برای نگهداری در منزل یا محل کارتان هستید این محصول را به شما پیشنهاد می‌کنیم.\r\n\r\n\r\nمحصولی که دریافت می‌کنید مشخصات زیر را داراست:\r\n\r\nیک عدد گیاه سانسوریا سبز با قلاف‌های انبوه\r\nاین گیاه در گلدان از جنس مواد آلی قرار داده شده است.\r\nارتفاع این گیاه آپارتمانی 100 تا 110 و عرض آن 25 سانتی‌متر می‌باشد.\r\n', 'sansoriya.JPG', 1, 'سانسوریا'),
(44, 'تراریوم بونسای جینسینگ بسته', 523000, '5تراریوم بونسای جینسینگ بسته محصولی است که در اینجا به معرفی آن می‌پردازیم. هدیه ای زیبا و لاکچری که هر کسی از داشتن آن خرسند می‌شود.\r\nتراریوم بونسای جینسینگ یکی از زیباترین تراریوم‌هایی است که می‌توانید به مناسبت‌های مختلف به عزیزان خود هدیه بدهید و یا در خانه و یا محل کارتان برای زینت دادن به فضا از آن استفاده کنید. بطور کلی، تراریوم‌ ها باغ های مینیاتوری ای هستند که می‌توان بخشی از طبیعت زیبا را در آن مشاهده کرد.\r\nتراریومی که  دریافت خواهید کرد شامل موارد زیر است:\r\n\r\nیک تراریوم حبابی شکل شیشه ای بسته حاوی بنسای جینسینگ با تزئینات سنگریزه‌های رنگی تزئینی.\r\nارتفاع این محصول در حدود 35 سانتیمتر و عرض آن 20 سانتی‌متر می‌باشد.\r\n', 'tratiyom.JPG', 0, 'تراریوم'),
(45, 'باکس گل تارا', 425000, 'باکس گل رز و آفتابگردان که با شاخه‌های گندم درون باکس حصیری به زییایی در کنار هم جای گرفته‌اند گلی تماشایی برای سالگرد ازدواج و یا هر مناسبت مهم دیگر برای هدیه دادن به معشوق شماست. این باکس گل را تارا نامیده‌ایم.\r\nاین باکس گل، متشکل از گل‌هایی خیره کننده با رنگ‌هایی گرم و گیرا و انرژی بخش است که علاوه بر زیبایی، مفاهیم عمیقی چون عشق و وفاداری و احترام را به گیرنده هدیه منتقل می‌کند. رزهای قرمز هلندی که از جمله باکیفیت‌ترین انواع گل‌های رز هستند، با رنگ انرژی بخش و دلفریب خود می‌توانند بیانگر عمق احساسات عاشقانه باشند.\r\nباکس گل رز و آفتابگردان که دریافت خواهید کرد شامل موارد زیر است:\r\n\r\nاین باکس گل خیره کننده شامل هشت شاخه رز هلندی قرمز و هشت شاخه آفتابگردان با دو دسته گندم طلایی است.\r\nباکس حصیری بافته شده زیبایی در سایز متوسط این گل‌ها را درون خود جای داده است.\r\n ابعاد این محصول به طور کلی، 48 (بلندی) در 42 (پهنا) سانتی‌متر است.', 'aftabgardan.JPG', 0, 'آفتاب گردان'),
(46, 'سانسوریا ابلق پرغلاف', 435200, 'سانسوریا ابلق پرغلاف گیاه آپارتمانی جذاب و مقاومی که برای تزیین اتاق شما چه در منزل و چه محل کار بسیار مناسب است. این گیاه را می‌توانید به دوستانی که به بهداشت محیط اهمیت می‌دهند نیز هدیه کنید، زیرا این گیاه تصفیه کننده خوبی برای آلودگی‌های هواست.\r\nاگر می‌خواهید یک گیاه آپارتمانی داشته باشید که هم به رسیدگی خاصی نیاز نداشته باشد، هم زیبا و چشم‌گیر باشد و هم در هر مکانی به رشد خود ادامه دهد، گل‌سِتان به شما خرید گیاه سانسوریا شمشیری ابلق را پیشنهاد می‌کند. این گیاه زیبا که برگ‌هایی با لبه‌­های زرد‌رنگ دارد، با تعداد زیادی غلاف، در یک گلدان استوانه‌ای به رنگ طوسی روشن کاشته شده‌است. این گلدان که از مواد آلی تشکیل شده، یکی از بهترین و زیباترین انواع گلدان می‌باشد. به طوری که گیاه درون آن به خوبی رشد می­‌کند.\r\n\r\nسانسوریا ابلق پرغلاف\r\nاین گیاه در گلدان از جنس مواد آلی به رنگ طوسی قرار داده شده است.\r\nارتفاع این گیاه آپارتمانی 90 تا 120 و عرض آن 25 سانتی‌متر می‌باشد.', 'sansoriya1.JPG', 0, 'سانسوریا'),
(47, 'باکس گل غزال', 516000, 'باکس گل رز و میخک قرمز هدیه زیبایی است که آنرا غزال نامیده‌ایم. اگر در جستجوی باکس گلی هستید که گل‌های زیبای آتشین آن بیانگر احساسات عمیق عشق‌ورزی و محبت شما باشد این باکس گل را به شما پیشنهاد می‌کنیم.\r\n\r\nباکس گل رز و میخک\r\nهمیشه هدیه‌های جذاب و خاص می‌توانند حس فوق ‌العاده‌ای به طرف مقابل القا کنند و باعث ایجاد حس صمیمیت و علاقه بین دو طرف شوند. انواع گل‌ها‌ نیز به دلیل زیبایی منحصر به فرد و تنوع رنگی بالایی که دارند می‌توانند به عنوان هدیه برای هر عزیزی یک پیشنهاد جذاب به شمار آیند. گل‌های قرمز همیشه بیشترین طرفدار را در میان عشاق داشته‌اند و هنگامی که یک دسته از این گل‌ها با نارنجی آتشین ترکیب شود تصویری زیبا و هیجان انگیز پدید می‌آورند.', 'mikhak.JPG', 1, 'میخک'),
(48, 'باکس گل آنیسا', 398000, 'باکس میخک صورتی و عروسک آنیسا که دریافت می‌کنید دارای مشخصات زیر است :\r\n\r\nیک دسته میخک صورتی، مقداری استاتیس بنفش، یک عدد عروسک روسی\r\nباکس مقوایی صورتی که موارد بالا درون آن قرار گرفته‌اند.\r\nاین محصول دارای ارتفاع 30 و عرض 15 سانتی‌متر است.', 'mikhak1.JPG', 1, 'میخک'),
(49, 'گل آرا', 2500000, 'باکس گل ارکیده هدیه‌ای بسیار زیبا و لوکس می‌باشد. کسانی که مناسبت مهمی با خاص‌ترین فرد زندگی خود در پیش دارند و در جستجوی باکس گلی با گل‌های جذاب و خیره کننده هستند این محصول را در نظر داشته باشند.\r\n\r\nباکس گل ارکیده\r\nهنگامی که نام گل ارکیده به میان می‌آید حس جذابیت و زیبایی گل‌های سلطنتی در ذهن مخاطب بروز می‌کند. به ویژه هنگامی که گل‌های ارکیده درون باکس خاص و هنری مانند تندیس چهره یک زن قرار گرفته باشند. در این محصول گل‌های زیبای ارکیده به رنگ سفید بنفش در کنار آنتوریوم بنفش قرار گرفته و هارمونی زیبایی به وجود آورده‌اند. برای تزیین زیباتر و هر چه بیشتر این باکس گل از ورونیکا بنفش بهره گرفته شده که ظرافت خاص آن باکس گل را به خوبی آراسته است.\r\nبرگ سرخس و گل هور به همراه سایر گل‌های به کار رفته در این باکس گل به گونه‌ای بر روی باکس گل آویزان شده‌اند که که گیسوان تندیس سفید را در ذهن تداعی می‌کنند. این هدیه به اندازه‌ای زیبا و منحصر به فرد است که یقین داشته باشید دریافت کننده این هدیه از داشتن آن هیجان زده خواهد شد.\r\nباکس گل ارکیده که دریافت خواهید کرد دارای مشخصات زیر است :\r\n\r\nهفده عدد گل ارکیده، چهار شاخه آنتوریوم بنفش، یک دسته ورونیکا بنفش، یک دسته لویی خشک (گل هور)، برگ تزیینی\r\nتندیس زن سفید رنگ در اندازه متوسط\r\nاین محصول دارای ارتفاع 45 و عرض 35 سانتی‌متر است', 'tratiyom.JPG', 0, 'باکس'),
(50, 'گل صنم کبود', 234000, 'باکس گل ارکیده هدیه‌ای بسیار زیبا و لوکس می‌باشد. کسانی که مناسبت مهمی با خاص‌ترین فرد زندگی خود در پیش دارند و در جستجوی باکس گلی با گل‌های جذاب و خیره کننده هستند این محصول را در نظر داشته باشند.\r\nهفده عدد گل ارکیده، چهار شاخه آنتوریوم بنفش، یک دسته ورونیکا بنفش، یک دسته لویی خشک (گل هور)، برگ تزیینی\r\nتندیس زن سفید رنگ در اندازه متوسط\r\nاین محصول دارای ارتفاع 45 و عرض 35 سانتی‌متر است', 'orkide.JPG', 0, 'ارکیده'),
(51, 'ارکیده سفید بنفش در گلدان بتنی', 674000, 'ارکیده سفید بنفش با گلدان بتنی نام این محصول زیباست. گل ارکیده یکی از زیباترین گیاهان آپارتمانی است که این روزها طرفداران زیادی در سراسر دنیا دارد، به‌خصوص نوع فالانوپسیس این گیاه. دلیل این همه محبوبیت چیزی جز زیبایی این گیاه نیست. البته نگهداری نسبتا آسان این گیاه نیز در این‌باره بی‌تاثیر نبوده است.\r\nارکیده فالانوپسیس گیاهی فوق‌العاده ساده و در عین حال بسیار زیباست. به تعبیری می‌توان ارکیده را یک گیاه مینیمال به تمام معنا دانست. از ارکیده می‌توان برای زیباسازی هر فضایی از آپارتمان گرفته تا محیط کار رستوان و … استفاده کرد.\r\nیک ارکیده فالانوپسیس سفید بنفش کاشته شده در یک گلدان بتنی\r\nارتفاع محصول حدود 60 تا 90 سانتی‌متر و عرض 25 سانتی‌متر\r\nگل‎‌های ارکیده در شرایط ایده آل گیاه، به مدت دو ماه ماندگار هستند. در شرایط نگهداری مختلف، گیاه بعد از 6 ماه یا 9 ماه یا یک سال دوباره گل می‌دهد. بازه‌های زمانی گلدهی گیاه و ماندگاری گل‌ها، کاملا وابسته به شرایط نگهداری و آب و هوایی می‌باشد.\r\n', 'orkide1.JPG', 1, 'ارکیده'),
(52, 'گل مهر', 293000, 'دسته گل آفتابگردان و اکالیپتوس که دریافت می‌کنید دارای مشخصات زیر است :\r\n\r\n6 شاخه آفتابگردان، مقداری اکالیپتوس\r\nاین محصول دارای ارتفاع 60 و عرض 30 سانتی‌متر است.', 'aftabgardan1.JPG', 0, 'آفتاب گردان'),
(53, 'گل گندم', 4500000, 'ارتفاغ 45 سانتی', 'rozAbi.JPG', 0, 'باکس');

-- --------------------------------------------------------

--
-- Table structure for table `usermmessages`
--

CREATE TABLE `usermmessages` (
  `id` int(11) NOT NULL,
  `user_name` varchar(60) COLLATE utf8_persian_ci DEFAULT NULL,
  `user_phone` varchar(11) COLLATE utf8_persian_ci DEFAULT NULL,
  `user_email` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `text_message` text COLLATE utf8_persian_ci DEFAULT NULL,
  `is_confirm` varchar(10) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `usermmessages`
--

INSERT INTO `usermmessages` (`id`, `user_name`, `user_phone`, `user_email`, `text_message`, `is_confirm`) VALUES
(25, 'maryam', '0315984531', 'maryam@gmail.com', 'بسیار عالی و زیبا', '0'),
(26, 'ali', '087306505', 'zahra@gmail.com', 'سایت بسیار زیبا ', '1'),
(22, 'motahar Afshar', '09134612974', 'motaharAfshar@gmail.com', 'مشاوره و پشتبانی عالی هنگام خرید سپاس فراوان', '0'),
(24, 'maryam Soleimani', '091364870', 'soleimanimaryam98@gmail.com', 'سایت بسیار زیبا ', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name1` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `display_name` text COLLATE utf8mb4_persian_ci NOT NULL,
  `phone` text COLLATE utf8mb4_persian_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_persian_ci NOT NULL,
  `password` text COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name1`, `display_name`, `phone`, `email`, `password`) VALUES
(54, 'sara', 'maryamSoleimani', '0999999999', 'soleimano@gmail.com', '147'),
(55, 'admin1', 'Ali_soleimani', '7894561230', 'q@gmail.com', '123'),
(56, 'sogol', 'sogol_soleimani', '091364508', 'soleimanimaryam98@gamil.com', '123'),
(57, 'motahare', 'motahare_afshar', '91365080', 'motaharh@gamil.com', '741'),
(58, 'sogand', 'sogand_soleimani', '09164608', 'ogand@gamil.com', '123'),
(59, 'sara12', 'maryam_soleimani', '09136280', 'soleimanimaryam98@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favariteflower`
--
ALTER TABLE `favariteflower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usermmessages`
--
ALTER TABLE `usermmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `favariteflower`
--
ALTER TABLE `favariteflower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `usermmessages`
--
ALTER TABLE `usermmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
