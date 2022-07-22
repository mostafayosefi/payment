-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 10:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tehranxe_payment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `status`, `address`, `image`, `tell`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'مدیریت سایت', 'admin@gmail.com', 'active', 'address', '/upload/images/admins/1656264928teamwork-unity.jpg', '09137775568', 'admin', '$2y$10$.BaqBC3ph5mwcZvPeH6D.egrddbiKci8Inir7iE6E1J2RQdAHftk.', NULL, '2022-06-26 16:20:54', '2022-06-26 17:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `authentications`
--

CREATE TABLE `authentications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verify` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `tell` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tell_verify` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `tells` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tells_verify` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `cardmelli` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardmelli_verify` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `selfi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selfi_verify` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_verify` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comids`
--

CREATE TABLE `comids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `link`, `rate`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'دلار', 'USD', '336000', 'active', '/upload/images/currencies/1656351794US-dollar-icon.png', '2022-06-27 17:43:15', '2022-06-27 17:52:01'),
(2, 'لیر', 'TL', '25600', 'active', '/upload/images/currencies/1656352927tl.webp', '2022-06-27 18:02:07', '2022-06-27 18:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subgroup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `short` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_currency_id` int(11) DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `text` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `form_template_id` bigint(20) UNSIGNED NOT NULL,
  `typeservice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `form_subcategory_id`, `group`, `subgroup`, `link`, `status`, `short`, `form_currency_id`, `price`, `text`, `money`, `image`, `created_at`, `updated_at`, `form_template_id`, `typeservice`) VALUES
(1, '10 دلاری گوگل پلی', 2, 'group_giftcard_google', 'subgroup_giftcard_google', 'giftcard_google_10', 'active', NULL, 1, '49000', 'دسترسی به بیش از 1 میلیون اپلیکیشن در فروشگاه گوگل پلی. با گیفت کارت گوگل پلی میتوانید اپلیکیشن بخرید یا از پرداخت های درون برنامه ای استفاده کنید. همچنین با اعتباری که از این کارت بدست می آورید میتوانید از فروشگاه گوگل پلی فیلم یا موزیک بخرید.', '22', '/upload/images/forms/16562631881603684464google-play.png', '2022-06-26 17:06:28', '2022-07-01 13:06:26', 1, '1'),
(2, 'خرید(شارژ) پی پال از تهرانیکس', 3, 'group_paypal', 'subgroup_paypal', 'buy_charge_paypal', 'active', 'شارژ یا انتقال وجه به حساب پی پال تنها در صورتی که حساب مقصد وریفای یا تایید شده باشد، امکان پذیر است.', 1, '0', '<p>شارژ یا انتقال وجه به حساب پی پال تنها در صورتی که حساب مقصد وریفای یا تایید شده باشد، امکان پذیر است. کارمزد انتقال پی پال ۳ الی ۷ درصد است که از حساب دریافت کننده کسر میشد، این مبلغ با توجه به کشور اکانت پی پال متفاوت است. درصورتی که قصد دارید مبلغ دقیقی به حساب پی پال مقصد واریز شود، هزینه کارمزد انتقال را در مبلغ نهایی محاسبه نمایید. در صورتی که قصد ریفاند کردن مبلغ را دارید، حتما با هماهنگی قبلی ایرانیکارت باشد و به هیج عنوان مبلغ ارزی را بدون هماهنگی به حساب های ما برگشت نزنید. دقت نمایید در صورت ریفاند کردن تراکنش بدون هماهنگی، ایرانیکارت مسئولیت آن را نخواهد پذیرفت. توجه داشتید باشید ممکن است برخی تراکنش ها با توجه به سیاست های شبکه پی پال از یک روز تا ۲۱ روز در اکانت گیرنده بصورت on hold نمایش داده شود و بعد از زمانی که توسط پی پال مشخص می شود قابل دسترس و استفاده است. انتقال وجه بصورت دلار و یورو انجام می شود و جهت انتقال وجه به ارز های دیگر (پوند، دلار کانادا، دلار استرالیا، &hellip;) می بایست از طریق پنل کاربری خود در سایت ایرانیکات از قسمت پشتیبانی - ارسال تیکت؛ مقدار مبلغی که قصد واریز کردن آن را دارید را اطلاع دهید پس از ثبت، درخواست شما توسط کارشناسان بخش کیف پول الکترونیک بررسی شده و معادل دلار آن به را شما اعلام می کنند. و سپس می توانید درخواست خود را ثبت نمایید درصورتی که قصد انتقال وجه به حساب پی پال از طریق لینک پی پال (PayPal.me/example) را داشته باشید می بایست در قسمت توضیحات لینک پی پالی که قصد ارسال به آن را دارید را وارد نمایید و همچنین در قسمت حساب پی پال آدرس ایمیل example@email.com را وارد نمایید کلیه درخواست های شارژ(خرید) پی پال از ایرانیکارت به صورت services item(goods and services) انجام میشود که در این روش کارمزد شبکه پی پال از گیرنده کسر خواهد شد و در صورتی که کاربری قصد انتقال مبلغ به صورت friend and family را دارد قبل از ثبت درخواست حتما از طریق تیکت از کارشناسان بخش کیف پول الکترونیک استعلام گرفته و در صورت تایید درخواست خود را ثبت بفرمایید. توجه داشته باشید که برای درخواست&zwnj;های فرند و فمیلی ۵ دلار هزینه انتقال به صورت فرند و فمیلی را به مبلغ نهایی خود اضافه کرده و حتما در قسمت توضیحات ذکر شود که به صورت فرند و فمیلی انتقال داده شود.</p>', '0', '/upload/images/forms/16578984278acc6e53-8921-3984-a0bf-77f530445c01.png', '2022-07-03 15:06:28', '2022-07-15 15:23:24', 2, '1'),
(3, 'دبیت کارت', 4, 'group_debit-card', 'subgroup_debit-card', 'debit-card', 'active', 'حساب بانکی شما همراه با یک دبیت کارت از شبکه ویزا از زراعت بانک کشور ترکیه افتتاح می شود.\r\nسطح کارت الکترون میباشد.\r\nنام شما روی کارت ثبت نمیشود.', 1, '65520000', '<p><span data-v-56da923f=\"\">حساب بانکی شما همراه با یک دبیت کارت از شبکه ویزا از زراعت بانک کشور ترکیه افتتاح می شود.<br />سطح کارت الکترون میباشد.<br />نام شما روی کارت ثبت نمیشود.<br />ارز پایه کارت لیر است.<br />حساب مادام العمر است و کارت بانکی نیز تاریخ انقضای ۸ ساله دارد.<br />افتتاح حساب بانکی بر پایه یورو، پوند، فرانک سوییس و لیر است که برای هر نوع حساب شماره IBAN و کد سوئیفت جداگانه ایجاد می شود.<br />حساب ها دارای اینترنت بانک و موبایل بانک و اس ام اس بانک هستند .<br />برای افتتاح حساب نیاز به بلوکه کردن مبلغی نمیباشد.<br />جهت افتتاح حساب بانکی در ترکیه حضور شخص حقیقی (با همراه داشتن پاسپورت با اعتبار حداقل ۶ ماه) در استانبول به مدت ۳ روز الزامی می باشد.</span></p>', '195', '', '2022-07-11 15:44:03', '2022-07-11 15:44:03', 3, '1'),
(4, 'شارژ پی پال (friend and family)', 3, 'group_Paypal-Friend-Family', 'subgroup_Paypal-Friend-Family', 'Paypal-Friend-Family', 'active', 'توجه داشته باشید همه ی حساب های پی پال قابلیت دریافت از طریق friend and family را ندارند و در صورتی که حساب پی پال گیرنده شما پذیرنده این شرایط هست، ثبت درخواست خود را انجام دهید.', 1, '1680000', '<p><span data-v-56da923f=\"\">توجه داشته باشید همه ی حساب های پی پال قابلیت دریافت از طریق friend and family را ندارند و در صورتی که حساب پی پال گیرنده شما پذیرنده این شرایط هست، ثبت درخواست خود را انجام دهید. <br /><br />با توجه به اینکه در انتقال وجه به صورت friend and family پس از نهایی شدن تراکنش امکان برگشت و کنسل کردن نیست، لطفا در وارد کردن مبلغ و آدرس کیف پول پی پال گیرنده دقت بفرمایید. <br /><br />کارمزد انتقال پی پال به صورت friend and family به طور میانگین ۵ دلار می&zwnj;باشد که این هزینه به مبلغ نهایی شما اضافه شده است.</span></p>', '5', '/upload/images/forms/16578982158acc6e53-8921-3984-a0bf-77f530445c01.png', '2022-07-15 15:16:55', '2022-07-15 15:16:55', 2, '1'),
(5, 'فروش پی پال به تهرانیکس', 3, 'group_salePaypal', 'subgroup_salePaypal', 'salePaypal', 'active', 'خرید پی پال از مشتری\r\n\r\n\r\nخرید پی پل فقط در صورتی که حساب های وریفای شده باشد انجام می شود.', 1, '0', '<p><span data-v-56da923f=\"\">خرید پی پال از مشتری<br /><br /><br />خرید پی پل فقط در صورتی که حساب های وریفای شده باشد انجام می شود.<br /><br /><br />اولویت خرید از کاربرانی است، که حساب پی پل آنها توسط مجموعه تهرانیکس ایجاد شده باشد.<br /><br /><br />روش نقد کردن به این صورت میباشد که می بایست میزان ارز مورد نیاز را به حساب پی پال اعلام شده از سوی ما منتقل کرده سپس اسکرین شات از رسید پرداخت ارسال نمایید و با توجه به نرخی که در سایت می باشد با شما تسویه ریالی میشود ، برای اطلاعات بیشتر با شماره های ثابت شرکت تماس حاصل فرمایید. <br /><br /><br />برای تبدیل موجودی پی پال می بایست از طریق پنل کاربری خود در سایت ایرانیکات از قسمت پشتیبانی - ارسال تیکت ؛ مقدار مبلغی که قصد نقد کردن آن را دارید را اطلاع دهید پس از ثبت، درخواست شما توسط کارشناسان بخش کیف پول الکترونیک بررسی شده و نام شما در لیست انتظار قرار گرفته میگیرد و در صورتی که نیاز به خرید پی پال داشتیم با شما تماس خواهیم گرفت.<br /><br />با توجه به تعداد بالای درخواست های فروش پی پال به تهرانیکس، و متناسب نبودن میزان عرضه و تقاضای پی پال مدت زمان جهت نقد کردن یک تا هفت روز کاری میباشد . <br /><br />در صورتی که در آمد از سایت های معتبر دارید و نیاز به اکانت پی پال جهت واریز به آن را دارید می توانید از اکانت پی پال مجموعه استفاده کنید جهت این کار درخواست خود را از طریق پنل کاربری (قسمت پشتیبانی، ارسال تیکت جدید ) ثبت نمایید تا اطلاعات حساب توسط کارشناس مربوطه برای شما ارسال شود .<br /><br /><br />واریز به حساب پی پال مجموعه فقط در صورتی که حساب ها وریفای شده و از سایت های معتبر و شناخته شده باشد انجام می شود. و در صورتی که واریز از سوی شخص باشد امکان ارسال حساب پی پال مجموعه وجود ندارد</span></p>', '0', '/upload/images/forms/16578999818acc6e53-8921-3984-a0bf-77f530445c01.png', '2022-07-15 15:46:21', '2022-07-15 15:46:21', 2, '1'),
(6, 'خرید وب مانی از تهرانیکس', 5, 'group_buywebmoney', 'subgroup_buywebmoney', 'buywebmoney', 'active', 'به منظور استفاده از خدمات شارژ وب مانی، پیش از هر چیز می بایست نسبت به تایید هویت خود در پنل کاربری - قسمت تایید مدارک اقدام کنید. و در صورتی که تمام مدارک تایید نشوند درخواست شما انجام نخواهد شد', 1, '0', '<p><span data-v-56da923f=\"\">به منظور استفاده از خدمات شارژ وب مانی، پیش از هر چیز می بایست نسبت به تایید هویت خود در پنل کاربری - قسمت تایید مدارک اقدام کنید. و در صورتی که تمام مدارک تایید نشوند درخواست شما انجام نخواهد شد<br /><br />در صورت تمایل به ارسال وجه با کد امنیتی یا توضیحات ، می توانید در زمان ثبت درخواست از قسمت توضیحات عبارت مورد نظر را وارد نمایید<br /><br />شماره کیف پول دلاری وب مانی با حرف Z آغاز می شود.<br /><br />سقف خرید وب مانی از تهرانیکس در هر پارت ۱۷۵۰ دلار است و هر پنل کاربری در هر ۲۴ ساعت مجاز به ثبت ۲ درخواست ۱۷۵۰ دلاری می&zwnj;باشد و در صورتی که بیش از ۲ بار ثبت درخواست انجام دهید، درخواست دوم به بعد شما روز بعد و همچنین با نرخ روز محاسبه و انجام می&zwnj;شود.<br /><br />با توجه به سقف و محدودیت حساب های وب مانی درصورتی که مبلغ ثبت درخواست شما بیشتر از سقف مجاز اکانت باشد، تا مبلغی که حساب اجازه انتقال دهد اکانت شما شارژ و مابقی مبلغ به حساب بانکی شما برگشت داده می&zwnj;شود. لازم به ذکر است که تسویه ریالی ۱ الی ۳ روز کاری انجام می&zwnj;گردد.<br /><br />هزینه انتقال در وب مانی 0.8 درصد است که از ارسال کننده کسر می&zwnj;شود. به این نکته دقت کنید که هزینه انتقال در مبلغ نهایی شما محاسبه شده است.<br /><br />سفارش های وبمانی بین ۵ تا ۳۰ دقیقه انجام می شود.</span></p>', '0', '/upload/images/forms/1657900794ae8aca0b-015c-3c4a-9cbf-7ba64935741d.png', '2022-07-15 15:59:54', '2022-07-15 15:59:54', 2, '1'),
(7, 'فروش وب مانی به تهرانیکس', 5, 'group_saleWebmoney', 'subgroup_saleWebmoney', 'saleWebmoney', 'active', 'برای تبدیل موجودی وب مانی می بایست از طریق پنل کاربری خود در سایت ایرانیکات از قسمت پشتیبانی - ارسال تیکت ؛ مقدار مبلغی که قصد نقد کردن آن را دارید را اطلاع دهید پس از ثبت، درخواست شما توسط کارشناسان بخش کیف پول الکترونیک بررسی شده ,نرخ و آدرس کیف پول را اعلام می کنند و هنگامی که پول را واریز کردید لازم است رسید ارایه شود. پس از واریز مبلغ ، 1 الی 3 روز کاری با شما تسویه ریالی خواهد شد.', 1, '0', '<p><span data-v-56da923f=\"\">برای تبدیل موجودی وب مانی می بایست از طریق پنل کاربری خود در سایت ایرانیکات از قسمت پشتیبانی - ارسال تیکت ؛ مقدار مبلغی که قصد نقد کردن آن را دارید را اطلاع دهید پس از ثبت، درخواست شما توسط کارشناسان بخش کیف پول الکترونیک بررسی شده ,نرخ و آدرس کیف پول را اعلام می کنند و هنگامی که پول را واریز کردید لازم است رسید ارایه شود. پس از واریز مبلغ ، 1 الی 3 روز کاری با شما تسویه ریالی خواهد شد.<br /><br />دقت نمایید در هنگام انتقال دقیقا عبارت گفته شده توسط کارشناسان را برای توضیح (Note, Description, Comment یا Transfer Details) وارد نمایید در غیر این صورت امکان تسویه ریالی نخواهد بود.<br /><br />ارسال را به صورت نرمال انجام دهید و از وارد کردن کد حفاظتی جدا خودداری نمایید <br /><br />پس از ثبت، درخواست شما توسط همکاران ما بررسی شده و در صورت تایید انتقال، پس از گذشت 1 الی 3 روز کاری معادل ریالی آن به حساب بانکی شما که در بخش حسابداری ثبت کرده اید، واریز خواهد شد. چنان چه هنوز اطلاعات حساب بانکی خود را در سیستم ثبت نکرده اید، به بخش حسابداری - ثبت حساب بانکی مراجعه کرده و اطلاعات مورد نیاز را ارسال کنید.<br /><br /><br />لطفا پس از ثبت درخواست برای پیگیری درخواست خود از طریق منوی پشتیبانی و ارسال تیکت ، با پشتیبانان ما در ارتباط باشید.</span></p>', '0', '/upload/images/forms/1657901212ae8aca0b-015c-3c4a-9cbf-7ba64935741d.png', '2022-07-15 16:06:53', '2022-07-15 16:06:53', 2, '1'),
(8, 'خرید پرفکت مانی از تهرانیکس', 6, 'group_BuyPerfectmoney', 'subgroup_BuyPerfectmoney', 'BuyPerfectmoney', 'active', 'به منظور استفاده از خدمات شارژ پرفکت مانی، پیش از هر چیز می بایست نسبت به تایید هویت خود در پنل کاربری - قسمت تایید مدارک اقدام کنید. و در صورتی که تمام مدارک تایید نشوند درخواست شما انجام نخواهد شد.', 1, '0', '<p><span data-v-56da923f=\"\">به منظور استفاده از خدمات شارژ پرفکت مانی، پیش از هر چیز می بایست نسبت به تایید هویت خود در پنل کاربری - قسمت تایید مدارک اقدام کنید. و در صورتی که تمام مدارک تایید نشوند درخواست شما انجام نخواهد شد.<br /><br />در صورت تمایل به خرید ووچر پرفکت مانی میتوانید از بخش خرید ووچر پرفکت مانی از ایرانیکارت اقدام به خرید ووچر نمایید.<br /><br />شماره کیف پول دلاری پرفکت مانی با حرف U آغاز می شود.<br /><br />سقف خرید پرفکت مانی از ایرانیکارت در هر پارت ۱۷۵۰ دلار است و هر پنل کاربری در هر ۲۴ ساعت مجاز به ثبت ۲ درخواست ۱۷۵۰ دلاری می&zwnj;باشد. در صورتی که بیش از ۲ بار ثبت درخواست انجام دهید، درخواست دوم به بعد شما روز بعد و همچنین با نرخ روز محاسبه و انجام می&zwnj;شود.<br /><br />کارمزد شبکه پرفکت مانی معادل ۰.5 درصدی است که از ارسال کننده کسر می&zwnj;شود. به این دقت توجه داشته باشید که هزینه انتقال به مبلغ نهایی شما اضافه می&zwnj;گردد.</span></p>', '0', '/upload/images/forms/1657902713bbedcd92-56d3-360e-a0aa-6c6d995c7776.png', '2022-07-15 16:31:53', '2022-07-15 16:31:54', 2, '1'),
(9, 'خرید ووچر پرفکت مانی از تهرانیکس', 6, 'group_BuyPerfectmoneyvoucher', 'subgroup_BuyPerfectmoneyvoucher', 'BuyPerfectmoneyvoucher', 'active', 'به منظور استفاده از خدمات ووچر پرفکت مانی، پیش از هر چیز می بایست نسبت به تایید هویت خود در پنل کاربری - قسمت تایید مدارک اقدام کنید. و در صورتی که تمام مدارک تایید نشوند درخواست شما انجام نخواهد شد', 1, '0', '<div class=\"row w-100 mx-0\" data-v-ea9b42a4=\"\">\r\n<div class=\"mb-2 col-12 col-xl-12 col-lg-12 col-md-12 col-sm-12\" data-v-ea9b42a4=\"\">\r\n<div class=\"form-group\" data-v-ea9b42a4=\"\">\r\n<div class=\"card mb-3\">\r\n<div class=\"card\">\r\n<div id=\"headingOne\" class=\"card-header\"></div>\r\n<div id=\"collapse01\" class=\"collapse show\">\r\n<div class=\"card-body\">\r\n<p>به منظور استفاده از خدمات ووچر پرفکت مانی، پیش از هر چیز می بایست نسبت به تایید هویت خود در پنل کاربری - قسمت تایید مدارک اقدام کنید. و در صورتی که تمام مدارک تایید نشوند درخواست شما انجام نخواهد شد<br /><br />در صورتیکه ووچر پرفکت مانی میخواهید میتوانید در این بخش ثبت درخواست نمایید . برای درخواست شارژ حساب پرفکت مانی میتوانید از بخش خرید پرفکت مانی از تهرانیکس استفاده نمایید.<br /><br /><br />سقف خرید پرفکت مانی از تهرانیکس در هر پارت ۱۷۵۰ دلار است و هر پنل کاربری در هر ۲۴ ساعت مجاز به ثبت ۲ درخواست ۱۷۵۰ دلاری می&zwnj;باشد. در صورتی که بیش از ۲ بار ثبت درخواست انجام دهید، درخواست دوم به بعد شما روز بعد و همچنین با نرخ روز محاسبه و انجام می&zwnj;شود.<br /><br />کارمزد شبکه پرفکت مانی معادل ۰.5 درصدی است که از ارسال کننده کسر می&zwnj;شود. به این دقت توجه داشته باشید که هزینه انتقال به مبلغ نهایی شما اضافه می&zwnj;گردد.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '0', '/upload/images/forms/1657903450bbedcd92-56d3-360e-a0aa-6c6d995c7776.png', '2022-07-15 16:44:10', '2022-07-15 16:44:10', 2, '1'),
(10, 'فروش پرفکت مانی به تهرانیکس', 6, 'group_salePerfectmoney', 'subgroup_salePerfectmoney', 'salePerfectmoney', 'active', 'برای تبدیل موجودی پرفکت مانی می بایست از طریق پنل کاربری خود در سایت تهرانیکس از قسمت پشتیبانی - ارسال تیکت ؛ مقدار مبلغی که قصد نقد کردن آن را دارید را اطلاع دهید', 1, '0', '<div class=\"row w-100 mx-0\" data-v-ea9b42a4=\"\">\r\n<div class=\"mb-2 col-12 col-xl-12 col-lg-12 col-md-12 col-sm-12\" data-v-ea9b42a4=\"\">\r\n<div class=\"form-group\" data-v-ea9b42a4=\"\">\r\n<div class=\"card mb-3\">\r\n<div class=\"card\">\r\n<div id=\"headingOne\" class=\"card-header\"></div>\r\n<div id=\"collapse01\" class=\"collapse show\">\r\n<div class=\"card-body\">\r\n<p>برای تبدیل موجودی پرفکت مانی می بایست از طریق پنل کاربری خود در سایت تهرانیکس از قسمت پشتیبانی - ارسال تیکت ؛ مقدار مبلغی که قصد نقد کردن آن را دارید را اطلاع دهید پس از ثبت، درخواست شما توسط کارشناسان بخش کیف پول الکترونیک بررسی شده ,نرخ و آدرس کیف پول را اعلام می کنند و هنگامی که پول را واریز کردید لازم است رسید ارایه شود. پس از واریز مبلغ ، 1 الی 3 روز کاری با شما تسویه ریالی خواهد شد.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '0', '/upload/images/forms/1657903760bbedcd92-56d3-360e-a0aa-6c6d995c7776.png', '2022-07-15 16:49:20', '2022-07-15 16:49:20', 2, '1'),
(11, 'خرید اسکریل از تهرانیکس', 7, 'group_buySkrill', 'subgroup_buySkrill', 'buySkrill', 'active', 'شارژ یا انتقال وجه به حساب اسکریل تنها در صورتی که حساب مقصد وریفای یا تایید شده باشد، انجام می شود.', 1, '0', '<p><span data-v-56da923f=\"\">شارژ یا انتقال وجه به حساب اسکریل تنها در صورتی که حساب مقصد وریفای یا تایید شده باشد، انجام می شود.<br />در ارسال آدرس حساب مقصد (آدرس ایمیل که همان آدرس حساب اسکریل شخص گیرنده خواهد بود)، دقت نمایید. در صورت ثبت اطلاعات نادرست، مبلغ پرداختی قابل بازگشت نخواهد بود.</span></p>', '0', '/upload/images/forms/1657984741b0102ee9-ca7a-3dd1-9fb8-f327cac23d01.png', '2022-07-16 15:19:01', '2022-07-16 17:14:37', 2, '1'),
(12, 'پرداخت در کلیه سایت های بین المللی', 12, 'group_international-purchase', 'subgroup_international-purchase', 'international-purchase', 'active', 'توجه داشته باشید پرداخت شما در صورت صحیح بودن اطلاعاتی که وارد می کنید بین یک تا پنج ساعت کاری انجام می شود.\r\nکارمزد خرید اینترنتی متغیر است و بستگی به مبلغ دارد .', 1, '0', '<p><span data-v-56da923f=\"\">توجه داشته باشید پرداخت شما در صورت صحیح بودن اطلاعاتی که وارد می کنید بین یک تا پنج ساعت کاری انجام می شود. <br />کارمزد خرید اینترنتی متغیر است و بستگی به مبلغ دارد . <br />اگر اطلاعات ارسالی شما صحیح نباشد تایم انجام درخواست شما از زمانی محاسبه می شود که اطلاعات صحیح را از طریق بخش پشتیبانی پنل ارسال می کنید.<br />توجه داشته باشید برخی سایت ها بر روی برخی ip ها مالیات یا کارمزد بیشتری دارند و ممکن است در هزینه نهایی درخواست شما تاثیر گذار باشد.<br />بدون هماهنگی و اطلاع قبلی به هیچ عنوان پولی به حساب های ایرانیکارت ریفاند (برگشت ) نکنید . ایرانیکارت پیگیری ریفاند را نهایتا تا سه ماه بعد از انجام خرید انجام می دهد و مسئولیتی در مورد ریفاند های بدون هماهنگی ندارد.<br />برخی پرداخت ها بخاطر مبلغ یا نوع پرداخت نیاز به زمان بیشتری برای انجام دارد لطفا به این موضوع دقت کنید.&zwj;<br />درخواست هایی که فقط درگاه پی پل دارند و ادرس ارسالی به ایران دارند قابل انجام نیستند.<br />برگشت وجه با نرخ خرید دلار اسکناس روز برگشت محاسبه می شود و کارمزد ما نیز برای خرید هایی که انجام می شوند و سپس برگشت میشوند سوخت میشود.<br />قبل از ثبت درخواست قوانین و مقررات بخش خرید را کاملا مطالعه کنید.</span></p>', '0', '/upload/images/forms/165851973492232e9e-0961-3793-abef-b5a7ea412d39.png', '2022-07-22 19:55:35', '2022-07-22 19:55:35', 4, '1'),
(13, 'ICF', 12, 'group_icf', 'subgroup_icf', 'ICF', 'active', NULL, 1, '0', '<p><span data-v-56da923f=\"\"><label data-v-68111c57=\"\">ارائه خدمات ICF<br /></label></span></p>', '0', '/upload/images/forms/1658520706adfbbbcd-da04-35a7-aef4-47791ed41c34.png', '2022-07-22 20:11:46', '2022-07-22 20:11:46', 4, '1'),
(14, 'بلیط قطار', 13, 'group_travel', 'subgroup_travel', 'train', 'active', 'رزرو و خرید بلیط قطار', 1, '0', '<p>رزرو و خرید بلیط قطار</p>', '0', '/upload/images/forms/1658521423161ee850-ea5f-3113-9475-5af8a6b7ccd7.png', '2022-07-22 20:23:43', '2022-07-22 20:23:43', 4, '1');

-- --------------------------------------------------------

--
-- Table structure for table `form_categories`
--

CREATE TABLE `form_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `text` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_categories`
--

INSERT INTO `form_categories` (`id`, `name`, `link`, `status`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'گیفت کارتها', 'giftcards', 'active', NULL, NULL, '2022-06-26 16:51:06', '2022-06-26 17:02:06'),
(2, 'محصولات پول الکترونیک', 'Money', 'active', 'محصولات پول الکترونیک', '/upload/images/form_categories/1656859390money.jpg', '2022-07-03 14:43:11', '2022-07-03 14:43:11'),
(3, 'ویزا، مسترکارت', 'VisaMasterCard', 'active', 'VisaMasterCard', '', '2022-07-11 15:34:08', '2022-07-11 15:34:08'),
(4, 'محصولات پرداخت بین المللی', 'Internet_payments', 'active', 'کلیه محصولات پرداخت بین المللی', '/upload/images/form_categories/1658518540internet-payment-gateway-in-pakistan.jpg', '2022-07-22 19:35:41', '2022-07-22 19:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `form_coloumns`
--

CREATE TABLE `form_coloumns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `form_field_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `new_priority` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_coloumns`
--

INSERT INTO `form_coloumns` (`id`, `form_id`, `form_field_id`, `name`, `place`, `priority`, `new_priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'اکانت پی پال مقصد *', NULL, 1, NULL, 'active', '2022-07-07 09:50:15', '2022-07-07 09:50:15'),
(2, 2, 5, 'آیا اکانت پی پال مقصد وریفای شده است:', NULL, 2, NULL, 'active', '2022-07-09 09:15:56', '2022-07-09 09:15:56'),
(3, 2, 6, 'توضیحات', 'توضیحات', 3, NULL, 'active', '2022-07-10 13:15:43', '2022-07-10 13:15:43'),
(4, 3, 5, 'نوع کارت:', NULL, 1, NULL, 'active', '2022-07-11 16:04:18', '2022-07-11 16:04:19'),
(5, 4, 1, 'اکانت پی پال مقصد *', NULL, 1, NULL, 'active', '2022-07-15 15:36:46', '2022-07-15 15:36:47'),
(6, 4, 5, 'آیا اکانت پی پال مقصد وریفای شده است:', NULL, 2, NULL, 'active', '2022-07-15 15:37:11', '2022-07-15 15:37:12'),
(7, 5, 1, 'حساب پی پال', NULL, 1, NULL, 'active', '2022-07-15 15:47:06', '2022-07-15 15:47:06'),
(8, 5, 1, 'منبع پول شما', NULL, 2, NULL, 'active', '2022-07-15 15:47:31', '2022-07-15 15:47:31'),
(9, 5, 5, 'آیا اکانت شما وریفای شده است:', NULL, 3, NULL, 'active', '2022-07-15 15:47:49', '2022-07-15 15:47:49'),
(10, 4, 6, 'توضیحات', NULL, 3, NULL, 'active', '2022-07-15 15:49:34', '2022-07-15 15:49:34'),
(11, 5, 6, 'توضیحات', NULL, 4, NULL, 'active', '2022-07-15 15:49:55', '2022-07-15 15:49:55'),
(12, 6, 1, 'حساب وب مانی *', NULL, 1, NULL, 'active', '2022-07-15 16:00:55', '2022-07-15 16:00:55'),
(13, 6, 5, 'آیا اکانت شما وریفای شده است:', NULL, 2, NULL, 'active', '2022-07-15 16:01:23', '2022-07-15 16:01:23'),
(14, 6, 6, 'توضیحات', NULL, 3, NULL, 'active', '2022-07-15 16:08:12', '2022-07-15 16:08:12'),
(15, 7, 1, 'حساب وب مانی', NULL, 1, NULL, 'active', '2022-07-15 16:08:53', '2022-07-15 16:08:54'),
(16, 7, 1, 'منبع پول شما', NULL, 2, NULL, 'active', '2022-07-15 16:09:17', '2022-07-15 16:09:19'),
(17, 7, 5, 'آیا اکانت شما وریفای شده است:', NULL, 3, NULL, 'active', '2022-07-15 16:09:39', '2022-07-15 16:09:40'),
(18, 7, 6, 'توضیحات', NULL, 4, NULL, 'active', '2022-07-15 16:11:00', '2022-07-15 16:11:00'),
(19, 8, 1, 'حساب پرفکت مانی *', NULL, 1, NULL, 'active', '2022-07-15 16:33:17', '2022-07-15 16:33:17'),
(20, 8, 5, 'آیا اکانت شما وریفای شده است:', NULL, 2, NULL, 'active', '2022-07-15 16:33:56', '2022-07-15 16:33:56'),
(21, 8, 6, 'توضیحات', NULL, 3, NULL, 'active', '2022-07-15 16:37:14', '2022-07-15 16:37:14'),
(22, 9, 6, 'توضیحات', NULL, 1, NULL, 'active', '2022-07-15 16:45:37', '2022-07-15 16:45:37'),
(23, 10, 1, 'حساب پرفکت مانی *', 'u123456', 1, NULL, 'active', '2022-07-15 16:50:06', '2022-07-15 16:50:06'),
(24, 10, 1, 'منبع پول شما', NULL, 2, NULL, 'active', '2022-07-15 16:50:24', '2022-07-15 16:50:24'),
(25, 10, 5, 'آیا اکانت شما وریفای شده است:', NULL, 3, NULL, 'active', '2022-07-15 16:50:43', '2022-07-15 16:50:43'),
(26, 10, 6, 'توضیحات', NULL, 4, NULL, 'active', '2022-07-15 16:51:54', '2022-07-15 16:51:54'),
(27, 11, 1, 'حساب اسکریل *', NULL, 1, NULL, 'active', '2022-07-16 17:12:28', '2022-07-16 17:12:29'),
(28, 11, 5, 'آیا اکانت شما وریفای شده است:', NULL, 2, NULL, 'active', '2022-07-16 17:15:44', '2022-07-16 17:15:44'),
(29, 11, 6, 'توضیحات', NULL, 3, NULL, 'active', '2022-07-16 17:16:22', '2022-07-16 17:16:22'),
(30, 12, 1, 'لینک سایت', 'مثال www.example.com', 1, NULL, 'active', '2022-07-22 20:06:46', '2022-07-22 20:06:47'),
(31, 12, 1, 'نام کاربری شما در سایت مقصد', NULL, 2, NULL, 'active', '2022-07-22 20:07:09', '2022-07-22 20:07:09'),
(32, 12, 3, 'رمز عبور شما در سایت مقصد', NULL, 3, NULL, 'active', '2022-07-22 20:07:36', '2022-07-22 20:07:36'),
(33, 13, 1, 'لینک سایت', NULL, 1, NULL, 'active', '2022-07-22 20:13:06', '2022-07-22 20:13:06'),
(34, 13, 1, 'نام کاربری شما در ICF', NULL, 2, NULL, 'active', '2022-07-22 20:13:30', '2022-07-22 20:13:30'),
(35, 13, 3, 'رمز عبور شما در ICF', NULL, 3, NULL, 'active', '2022-07-22 20:13:57', '2022-07-22 20:13:57'),
(36, 13, 6, 'توضیحات', 'توضیحات بیشتر را در این کادر وارد کنید', 4, NULL, 'active', '2022-07-22 20:15:20', '2022-07-22 20:15:20'),
(37, 14, 1, 'لینک سایت قطار', NULL, 1, NULL, 'active', '2022-07-22 20:25:04', '2022-07-22 20:25:04'),
(38, 14, 1, 'نام کاربری شما در وبسایت مورد نظر', NULL, 2, NULL, 'active', '2022-07-22 20:27:04', '2022-07-22 20:27:05'),
(39, 14, 3, 'رمز عبور شما در وبسایت مورد نظر', NULL, 3, NULL, 'active', '2022-07-22 20:27:38', '2022-07-22 20:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `form_coloumn_mults`
--

CREATE TABLE `form_coloumn_mults` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_coloumn_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_coloumn_mults`
--

INSERT INTO `form_coloumn_mults` (`id`, `form_coloumn_id`, `name`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'بله', 1, 'active', '2022-07-09 09:17:29', '2022-07-09 09:17:29'),
(2, 2, 'خیر', 1, 'active', '2022-07-09 09:17:51', '2022-07-09 09:17:51'),
(3, 2, 'مطمئن نیستم', 1, 'active', '2022-07-09 09:18:11', '2022-07-09 09:18:11'),
(4, 4, 'الکترون', 1, 'active', '2022-07-11 16:04:49', '2022-07-11 16:04:49'),
(5, 6, 'بله', 1, 'active', '2022-07-15 15:37:54', '2022-07-15 15:37:54'),
(6, 6, 'خیر', 1, 'active', '2022-07-15 15:38:24', '2022-07-15 15:38:24'),
(7, 6, 'مطمئن نیستم', 1, 'active', '2022-07-15 15:38:52', '2022-07-15 15:38:52'),
(8, 9, 'بله', 1, 'active', '2022-07-15 15:48:15', '2022-07-15 15:48:15'),
(9, 9, 'خیر', 1, 'active', '2022-07-15 15:48:28', '2022-07-15 15:48:28'),
(10, 9, 'مطمئن نیستم', 1, 'active', '2022-07-15 15:48:47', '2022-07-15 15:48:47'),
(11, 13, 'بله', 1, 'active', '2022-07-15 16:01:54', '2022-07-15 16:01:54'),
(12, 13, 'خیر', 1, 'active', '2022-07-15 16:02:11', '2022-07-15 16:02:11'),
(13, 13, 'مطمئن نیستم', 1, 'active', '2022-07-15 16:02:28', '2022-07-15 16:02:28'),
(14, 17, 'بله', 1, 'active', '2022-07-15 16:09:59', '2022-07-15 16:09:59'),
(15, 17, 'خیر', 1, 'active', '2022-07-15 16:10:12', '2022-07-15 16:10:12'),
(16, 17, 'مطمئن نیستم', 1, 'active', '2022-07-15 16:10:28', '2022-07-15 16:10:28'),
(17, 20, 'بله', 1, 'active', '2022-07-15 16:34:52', '2022-07-15 16:34:52'),
(18, 20, 'خیر', 1, 'active', '2022-07-15 16:35:20', '2022-07-15 16:35:20'),
(19, 20, 'مطمئن نیستم', 1, 'active', '2022-07-15 16:36:29', '2022-07-15 16:36:29'),
(20, 25, 'بله', 1, 'active', '2022-07-15 16:51:02', '2022-07-15 16:51:02'),
(21, 25, 'خیر', 1, 'active', '2022-07-15 16:51:15', '2022-07-15 16:51:15'),
(22, 25, 'مطمئن نیستم', 1, 'active', '2022-07-15 16:51:32', '2022-07-15 16:51:32'),
(23, 28, 'بله', 1, 'active', '2022-07-16 17:16:44', '2022-07-16 17:16:44'),
(24, 28, 'خیر', 1, 'active', '2022-07-16 17:17:02', '2022-07-16 17:17:02'),
(25, 28, 'مطمئن نیستم', 1, 'active', '2022-07-16 17:17:28', '2022-07-16 17:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `form_data`
--

CREATE TABLE `form_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_coloumn_id` bigint(20) UNSIGNED NOT NULL,
  `form_data_list_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_data`
--

INSERT INTO `form_data` (`id`, `form_coloumn_id`, `form_data_list_id`, `created_at`, `updated_at`, `data`) VALUES
(4, 1, 3, '2022-07-14 14:07:06', '2022-07-14 14:07:06', NULL),
(5, 2, 3, '2022-07-14 14:07:07', '2022-07-14 14:07:07', NULL),
(6, 3, 3, '2022-07-14 14:07:07', '2022-07-14 14:07:07', NULL),
(7, 4, 6, '2022-07-15 10:11:40', '2022-07-15 10:11:40', NULL),
(8, 1, 7, '2022-07-15 13:49:48', '2022-07-15 14:30:59', 'cccc'),
(9, 2, 7, '2022-07-15 13:49:49', '2022-07-15 14:30:59', '2'),
(10, 3, 7, '2022-07-15 13:49:49', '2022-07-15 14:31:00', 'fffff'),
(11, 1, 8, '2022-07-15 14:42:07', '2022-07-15 14:42:07', 'bbbbb'),
(12, 2, 8, '2022-07-15 14:42:07', '2022-07-15 14:42:07', '2'),
(13, 3, 8, '2022-07-15 14:42:07', '2022-07-15 14:42:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form_data_lists`
--

CREATE TABLE `form_data_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `price_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_data_lists`
--

INSERT INTO `form_data_lists` (`id`, `user_id`, `status`, `created_at`, `updated_at`, `form_id`, `price_id`) VALUES
(3, 1, 'inactive', '2022-07-14 14:05:21', '2022-07-14 14:05:21', 2, 1),
(5, 1, 'inactive', '2022-07-15 07:23:22', '2022-07-15 07:23:22', 3, 4),
(6, 1, 'inactive', '2022-07-15 10:11:27', '2022-07-15 10:11:27', 3, 5),
(7, 1, 'inactive', '2022-07-15 12:50:11', '2022-07-15 12:50:11', 2, 6),
(8, 1, 'inactive', '2022-07-15 14:42:07', '2022-07-15 14:42:07', 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `form_data_mults`
--

CREATE TABLE `form_data_mults` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_coloumn_mult_id` bigint(20) UNSIGNED NOT NULL,
  `form_coloumn_id` bigint(20) UNSIGNED NOT NULL,
  `form_data_list_id` bigint(20) UNSIGNED NOT NULL,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_data_mults`
--

INSERT INTO `form_data_mults` (`id`, `form_coloumn_mult_id`, `form_coloumn_id`, `form_data_list_id`, `data`, `created_at`, `updated_at`) VALUES
(4, 2, 2, 3, '2', '2022-07-14 14:07:07', '2022-07-15 09:56:02'),
(5, 4, 4, 6, '4', '2022-07-15 10:11:40', '2022-07-15 10:11:40'),
(6, 2, 2, 7, '2', '2022-07-15 13:49:49', '2022-07-15 14:30:59'),
(7, 2, 2, 8, '2', '2022-07-15 14:42:07', '2022-07-15 14:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `multi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_fields`
--

INSERT INTO `form_fields` (`id`, `name`, `multi`, `created_at`, `updated_at`) VALUES
(1, 'input', 0, '2022-06-23 13:26:59', '2022-06-23 13:26:59'),
(2, 'select', 1, '2022-06-23 13:26:59', '2022-06-23 13:26:59'),
(3, 'password', 0, '2022-06-23 13:26:59', '2022-06-23 13:26:59'),
(4, 'checkbox', 1, '2022-06-23 13:26:59', '2022-06-23 13:26:59'),
(5, 'radiobox', 1, '2022-06-23 13:26:59', '2022-06-23 13:26:59'),
(6, 'textaria', 0, '2022-06-23 13:26:59', '2022-06-23 13:26:59'),
(7, 'datepersian', 0, '2022-06-23 13:26:59', '2022-06-23 13:26:59'),
(8, 'dateenglish', 0, '2022-06-23 13:26:59', '2022-06-23 13:26:59'),
(9, 'price_admin', 0, '2022-06-23 13:26:59', '2022-06-23 13:26:59'),
(10, 'price_user', 0, '2022-06-23 13:26:59', '2022-06-23 13:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `form_subcategories`
--

CREATE TABLE `form_subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_category_id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `text` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_subcategories`
--

INSERT INTO `form_subcategories` (`id`, `name`, `form_category_id`, `link`, `status`, `text`, `image`, `created_at`, `updated_at`) VALUES
(2, 'گیفت کارت گوگل', 1, 'giftcard_google', 'active', 'دسترسی به بیش از 1 میلیون اپلیکیشن در فروشگاه گوگل پلی. با گیفت کارت گوگل پلی میتوانید اپلیکیشن بخرید یا از پرداخت های درون برنامه ای استفاده کنید. همچنین با اعتباری که از این کارت بدست می آورید میتوانید از فروشگاه گوگل پلی فیلم یا موزیک بخرید.', '/upload/images/form_subcategories/16565930771603631767google-play.png', '2022-06-26 17:03:02', '2022-06-30 12:56:48'),
(3, 'پی پال', 2, 'paypal', 'active', 'پی پال', '/upload/images/form_subcategories/16579010068acc6e53-8921-3984-a0bf-77f530445c01.png', '2022-07-03 14:57:40', '2022-07-15 16:03:26'),
(4, 'محصولات کارت فیزیکی', 3, 'Physicalcard', 'active', 'محصولات کارت فیزیکی', '', '2022-07-11 15:35:29', '2022-07-11 15:35:29'),
(5, 'وب مانی', 2, 'webmoney', 'active', NULL, '/upload/images/form_subcategories/1657900561ae8aca0b-015c-3c4a-9cbf-7ba64935741d.png', '2022-07-15 15:56:01', '2022-07-15 15:56:01'),
(6, 'پرفکت مانی', 2, 'perfect-money', 'active', NULL, '/upload/images/form_subcategories/1657902426bbedcd92-56d3-360e-a0aa-6c6d995c7776.png', '2022-07-15 16:27:06', '2022-07-15 16:27:06'),
(7, 'اسکریل', 2, 'skrill', 'active', NULL, '/upload/images/form_subcategories/1657984373b0102ee9-ca7a-3dd1-9fb8-f327cac23d01.png', '2022-07-16 15:12:53', '2022-07-16 15:12:53'),
(8, 'پایر', 2, 'payeer', 'active', NULL, '/upload/images/form_subcategories/1657992208c3656ec3-bd7c-39d1-9af6-42c2149320d7.png', '2022-07-16 17:23:28', '2022-07-16 17:23:28'),
(9, 'پایونیر', 2, 'payoneer', 'active', NULL, '/upload/images/form_subcategories/16579924281d0da5a6-53d5-39ea-83ee-f00df6d85c48.png', '2022-07-16 17:27:08', '2022-07-16 17:27:08'),
(10, 'نتلر', 2, 'neteller', 'active', NULL, '/upload/images/form_subcategories/165799249580e6d0ee-11eb-3e1d-b08a-cb644f2155c3.png', '2022-07-16 17:28:15', '2022-07-16 17:28:15'),
(11, 'ادوکش', 2, 'advcash', 'active', NULL, '/upload/images/form_subcategories/165799260707ecc04c-94af-3346-bfd3-0eed64908e2e.png', '2022-07-16 17:30:07', '2022-07-16 17:30:07'),
(12, 'سایتهای بین المللی', 4, 'international-payment', 'active', 'کلیه پرداختهای  سایتهای بین المللی', '/upload/images/form_subcategories/165851881292232e9e-0961-3793-abef-b5a7ea412d39.png', '2022-07-22 19:40:12', '2022-07-22 19:40:12'),
(13, 'خدمات سفر', 4, 'travel', 'active', 'کلیه خدمات سفر', '/upload/images/form_subcategories/165852120809b8e97a-849a-32b8-870a-9440915ad918.png', '2022-07-22 20:20:08', '2022-07-22 20:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `form_templates`
--

CREATE TABLE `form_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_templates`
--

INSERT INTO `form_templates` (`id`, `name`, `link`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'مدال1', 'modal1', 'active', '', '2022-06-26 16:49:52', '2022-06-26 16:49:52'),
(2, 'پول الکترونیک', 'template_money', 'active', '', '2022-07-03 15:03:32', '2022-07-03 15:03:32'),
(3, 'محصولات کارت فیزیکی', 'template_Physicalcard', 'active', '', '2022-07-11 15:39:22', '2022-07-11 15:45:58'),
(4, 'محصولات پرداختهای بین المللی', 'template_InternetPayment', 'active', '', '2022-07-22 19:50:46', '2022-07-22 19:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `getwaypayments`
--

CREATE TABLE `getwaypayments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iconfonts`
--

CREATE TABLE `iconfonts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `font` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laws`
--

CREATE TABLE `laws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loginhistories`
--

CREATE TABLE `loginhistories` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `arou` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_12_20_181221_create_settings_table', 1),
(11, '2021_12_21_131821_create_txtdeses_table', 1),
(12, '2021_12_23_111701_create_mngfinicals_table', 1),
(13, '2021_12_24_125738_create_laws_table', 1),
(14, '2021_12_24_133828_create_getwaypayments_table', 1),
(15, '2021_12_26_064310_create_spotlites_table', 1),
(16, '2021_12_26_091849_create_iconfonts_table', 1),
(17, '2021_12_26_094536_create_comids_table', 1),
(18, '2022_03_02_141454_create_wallets_table', 1),
(19, '2022_03_02_155240_create_tickets_table', 1),
(20, '2022_03_02_181719_create_messages_table', 1),
(21, '2022_05_19_095934_create_admins_table', 1),
(22, '2022_05_19_144811_add_feild_table_users', 1),
(23, '2022_05_19_145600_create_loginhistories_table', 1),
(24, '2022_05_19_162727_create_faqs_table', 1),
(25, '2022_05_19_162933_create_pages_table', 1),
(26, '2022_05_24_212951_add_feild1_table_settings', 1),
(27, '2022_05_29_212803_add_feild1_table_admins', 1),
(28, '2022_05_31_112302_create_form_categories_table', 1),
(29, '2022_05_31_112759_create_form_subcategories_table', 1),
(30, '2022_05_31_115008_create_form_fields_table', 1),
(31, '2022_05_31_115518_create_forms_table', 1),
(32, '2022_05_31_120427_create_form_coloumns_table', 1),
(33, '2022_05_31_122202_create_form_coloumn_mults_table', 1),
(34, '2022_05_31_122816_create_form_data_lists_table', 1),
(35, '2022_05_31_123218_create_form_data_table', 1),
(36, '2022_05_31_124201_create_form_data_mults_table', 1),
(37, '2022_06_17_131724_add_feild_table_formss', 1),
(38, '2022_06_21_194025_add_feild1_table_form_coloumns', 1),
(39, '2022_06_23_232444_add_feild_table_form_data_lists', 1),
(40, '2022_06_25_161605_create_currencies_table', 1),
(41, '2022_06_25_161951_add_treefield_to_forms', 1),
(42, '2022_06_25_162051_add_pricefield_to_form_data_lists', 1),
(43, '2022_06_26_120551_create_form_templates_table', 1),
(44, '2022_06_26_123220_add_fieldtemplate_to_forms', 1),
(45, '2022_06_28_134616_add_fieldtext_to_forms', 2),
(46, '2022_06_30_141914_add_feildformcurrencyid_table_forms', 3),
(47, '2022_06_30_165450_add_feildimage_table_form_categories', 4),
(48, '2022_06_30_165628_add_feildimage_table_form_subcategories', 5),
(49, '2022_06_30_171755_add_feildtext_table_form_subcategories', 6),
(50, '2022_06_30_171854_add_feildtext_table_form_categories', 6),
(51, '2022_07_03_201540_add_feildshort_table_forms', 7),
(52, '2022_07_14_174624_create_prices_table', 8),
(53, '2022_07_14_180642_add_feild_price_id_table_form_data_lists', 9),
(54, '2022_07_15_185535_add_data_form_data_table', 10),
(55, '2022_07_20_091914_add_typeservice_to_forms', 11),
(56, '2022_07_20_153209_create_typeservices_table', 11),
(57, '2022_07_20_161548_create_setting_sms_table', 11),
(58, '2022_07_20_162557_create_notification_services_table', 11),
(59, '2022_07_20_162742_create_notification_types_table', 11),
(60, '2022_07_20_162926_create_notification_lists_table', 11),
(61, '2022_07_20_163801_add_link_to_notification_list', 11),
(62, '2022_07_20_164012_add_link_to_notification_types', 11),
(63, '2022_07_20_164810_create_notification_messages_table', 11),
(64, '2022_07_20_171919_add_setting_id_to_setting_sms', 11),
(65, '2022_07_21_123435_add_text_default_notification_lists_table', 12),
(66, '2022_07_22_130957_create_authentications_table', 13),
(67, '2022_07_22_134919_create_banks_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `mngfinicals`
--

CREATE TABLE `mngfinicals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rateusd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_lists`
--

CREATE TABLE `notification_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `notification_service_id` bigint(20) UNSIGNED NOT NULL,
  `notification_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_default` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_lists`
--

INSERT INTO `notification_lists` (`id`, `name`, `status`, `notification_service_id`, `notification_type_id`, `created_at`, `updated_at`, `link`, `text_default`) VALUES
(1, 'اسمس ثبت نام', 'inactive', 1, 1, NULL, NULL, 'sms_register', 'متن پیش فرض اسمس ثبت نام'),
(2, 'ایمیل ثبت نام', 'inactive', 2, 1, NULL, NULL, 'email_register', 'متن پیش فرض اسمس ثبت نام'),
(3, 'نوتیفیکشن ثبت نام', 'inactive', 3, 1, NULL, NULL, 'notification_sms', 'متن پیش فرض اسمس نوتیفکشن '),
(4, 'اسمس ورود', 'inactive', 1, 2, NULL, NULL, 'sms_login', 'متن پیش فرض اسمس ورود'),
(5, 'ایمیل ورود', 'active', 2, 2, NULL, '2022-07-21 13:11:53', 'email_login', 'متن پیش فرض ایمیل ورود '),
(6, 'نوتیفکشن ورود', 'inactive', 3, 2, NULL, NULL, 'notification_login', 'متن پیش فرض نوتیفکیکشن ورود'),
(7, 'اسمس اعتبارسنجی ورود', 'inactive', 1, 3, NULL, NULL, 'sms_verifylogin', 'متن پیش فرض اسمس اعتبارسنجی ورود'),
(8, 'ایمیل اعتبارسنجی ورود', 'inactive', 2, 3, NULL, NULL, 'email_verifylogin', 'متن پیش فرض ایمیل اعتبارسنجی ورود'),
(9, 'نوتیفیکشن اعتبارسنجی ورود', 'inactive', 3, 3, NULL, NULL, 'notification_verifylogin', 'متن پیش فرض نوتیفکشن اعتبارسنجی ورود'),
(10, 'اسمس ثبت درخواست', 'inactive', 1, 4, NULL, NULL, 'sms_requestform', 'متن پیش فرض اسمس ثبت درخواست'),
(11, 'ایمیل ثبت درخواست', 'inactive', 2, 4, NULL, NULL, 'email_requestform', 'متن پیش فرض ایمیل ثبت درخواست'),
(12, 'نوتیفیکشن ثبت درخواست', 'inactive', 3, 4, NULL, NULL, 'sms_notification', 'متن پیش فرض نوتیفکشن ثبت درخواست');

-- --------------------------------------------------------

--
-- Table structure for table `notification_messages`
--

CREATE TABLE `notification_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notification_list_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_services`
--

CREATE TABLE `notification_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_services`
--

INSERT INTO `notification_services` (`id`, `name`, `link`, `created_at`, `updated_at`) VALUES
(1, 'اسمس', 'sms', NULL, NULL),
(2, 'ایمیل', 'email', NULL, NULL),
(3, 'نوتیفیکشن', 'notification', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE `notification_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_types`
--

INSERT INTO `notification_types` (`id`, `name`, `created_at`, `updated_at`, `link`) VALUES
(1, 'ثبت نام', NULL, NULL, 'register'),
(2, 'ورود', NULL, NULL, 'login'),
(3, 'اعتبارسنجی ورود', NULL, NULL, 'validation_login'),
(4, 'ثبت درخواست', NULL, NULL, 'request_form');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `money` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `money`, `currency`, `created_at`, `updated_at`) VALUES
(1, '10', '1', '2022-07-14 14:05:21', '2022-07-15 09:56:02'),
(2, '0', '1', '2022-07-14 18:43:25', '2022-07-14 18:43:25'),
(3, '0', '1', '2022-07-15 07:02:21', '2022-07-15 07:02:21'),
(4, '195', '1', '2022-07-15 07:23:22', '2022-07-15 07:23:22'),
(5, '195', '1', '2022-07-15 10:11:27', '2022-07-15 10:11:27'),
(6, '7', '2', '2022-07-15 12:50:10', '2022-07-15 14:30:59'),
(7, '4', '2', '2022-07-15 14:42:06', '2022-07-15 14:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `textheader` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcopy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `analatik` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codetiket` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `textheader`, `whatsapp`, `instagram`, `facebook`, `twitter`, `youtube`, `tell`, `email`, `address`, `description`, `keyword`, `fcopy`, `analatik`, `codetiket`, `favicon`, `logo`, `_token`, `template`, `api`, `created_at`, `updated_at`) VALUES
(1, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting_sms`
--

CREATE TABLE `setting_sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `setting_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_sms`
--

INSERT INTO `setting_sms` (`id`, `name`, `api`, `username`, `password`, `token`, `url`, `status`, `created_at`, `updated_at`, `setting_id`) VALUES
(1, 'درگاه پیامک', 'Api', 'UserName', 'Password', 'Token', 'Url', 'active', NULL, '2022-07-21 07:21:53', '1');

-- --------------------------------------------------------

--
-- Table structure for table `spotlites`
--

CREATE TABLE `spotlites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `fromshow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'read' COMMENT 'read , unread ',
  `toshow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread' COMMENT 'read , unread ',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting' COMMENT 'response , waiting , close',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txtdeses`
--

CREATE TABLE `txtdeses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `typeserveices`
--

CREATE TABLE `typeserveices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `typeserveices`
--

INSERT INTO `typeserveices` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'buy', NULL, NULL),
(2, 'sell', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tell` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `referal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `address`, `tell`, `image`, `ip`, `status`, `referal`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mustafa1390', NULL, NULL, NULL, NULL, 'active', NULL, 'مصطفی یوسفی', 'mustafa1390@gmail.com', NULL, '$2y$10$FqFLsBe6yop9XJozryf8a.4TbqIUQumfsuI9XpMKaLVd5ueBNFb0q', NULL, '2022-07-03 15:29:12', '2022-07-03 15:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textadmin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'inc is Increase ,  dec is Decrease',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive' COMMENT 'active , inactive',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `authentications`
--
ALTER TABLE `authentications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authentications_user_id_foreign` (`user_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comids`
--
ALTER TABLE `comids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forms_form_subcategory_id_foreign` (`form_subcategory_id`),
  ADD KEY `forms_form_template_id_foreign` (`form_template_id`);

--
-- Indexes for table `form_categories`
--
ALTER TABLE `form_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_coloumns`
--
ALTER TABLE `form_coloumns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_coloumns_form_id_foreign` (`form_id`),
  ADD KEY `form_coloumns_form_field_id_foreign` (`form_field_id`);

--
-- Indexes for table `form_coloumn_mults`
--
ALTER TABLE `form_coloumn_mults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_coloumn_mults_form_coloumn_id_foreign` (`form_coloumn_id`);

--
-- Indexes for table `form_data`
--
ALTER TABLE `form_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_data_form_coloumn_id_foreign` (`form_coloumn_id`),
  ADD KEY `form_data_form_data_list_id_foreign` (`form_data_list_id`);

--
-- Indexes for table `form_data_lists`
--
ALTER TABLE `form_data_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_data_lists_user_id_foreign` (`user_id`),
  ADD KEY `form_data_lists_form_id_foreign` (`form_id`),
  ADD KEY `form_data_lists_price_id_foreign` (`price_id`);

--
-- Indexes for table `form_data_mults`
--
ALTER TABLE `form_data_mults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_data_mults_form_coloumn_mult_id_foreign` (`form_coloumn_mult_id`),
  ADD KEY `form_data_mults_form_coloumn_id_foreign` (`form_coloumn_id`),
  ADD KEY `form_data_mults_form_data_list_id_foreign` (`form_data_list_id`);

--
-- Indexes for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_subcategories`
--
ALTER TABLE `form_subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_subcategories_form_category_id_foreign` (`form_category_id`);

--
-- Indexes for table `form_templates`
--
ALTER TABLE `form_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `getwaypayments`
--
ALTER TABLE `getwaypayments`
  ADD KEY `getwaypayments_setting_id_index` (`setting_id`);

--
-- Indexes for table `iconfonts`
--
ALTER TABLE `iconfonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laws`
--
ALTER TABLE `laws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laws_setting_id_index` (`setting_id`);

--
-- Indexes for table `loginhistories`
--
ALTER TABLE `loginhistories`
  ADD KEY `loginhistories_user_id_index` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mngfinicals`
--
ALTER TABLE `mngfinicals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mngfinicals_setting_id_index` (`setting_id`);

--
-- Indexes for table `notification_lists`
--
ALTER TABLE `notification_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_lists_notification_service_id_foreign` (`notification_service_id`),
  ADD KEY `notification_lists_notification_type_id_foreign` (`notification_type_id`);

--
-- Indexes for table `notification_messages`
--
ALTER TABLE `notification_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_messages_user_id_foreign` (`user_id`),
  ADD KEY `notification_messages_notification_list_id_foreign` (`notification_list_id`);

--
-- Indexes for table `notification_services`
--
ALTER TABLE `notification_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_sms`
--
ALTER TABLE `setting_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spotlites`
--
ALTER TABLE `spotlites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `txtdeses`
--
ALTER TABLE `txtdeses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typeserveices`
--
ALTER TABLE `typeserveices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authentications`
--
ALTER TABLE `authentications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comids`
--
ALTER TABLE `comids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `form_categories`
--
ALTER TABLE `form_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `form_coloumns`
--
ALTER TABLE `form_coloumns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `form_coloumn_mults`
--
ALTER TABLE `form_coloumn_mults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `form_data`
--
ALTER TABLE `form_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `form_data_lists`
--
ALTER TABLE `form_data_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `form_data_mults`
--
ALTER TABLE `form_data_mults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `form_subcategories`
--
ALTER TABLE `form_subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `form_templates`
--
ALTER TABLE `form_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `iconfonts`
--
ALTER TABLE `iconfonts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laws`
--
ALTER TABLE `laws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `mngfinicals`
--
ALTER TABLE `mngfinicals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_lists`
--
ALTER TABLE `notification_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notification_messages`
--
ALTER TABLE `notification_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_services`
--
ALTER TABLE `notification_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_sms`
--
ALTER TABLE `setting_sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spotlites`
--
ALTER TABLE `spotlites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `txtdeses`
--
ALTER TABLE `txtdeses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typeserveices`
--
ALTER TABLE `typeserveices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authentications`
--
ALTER TABLE `authentications`
  ADD CONSTRAINT `authentications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forms`
--
ALTER TABLE `forms`
  ADD CONSTRAINT `forms_form_subcategory_id_foreign` FOREIGN KEY (`form_subcategory_id`) REFERENCES `form_subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forms_form_template_id_foreign` FOREIGN KEY (`form_template_id`) REFERENCES `form_templates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `form_coloumns`
--
ALTER TABLE `form_coloumns`
  ADD CONSTRAINT `form_coloumns_form_field_id_foreign` FOREIGN KEY (`form_field_id`) REFERENCES `form_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `form_coloumns_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `form_coloumn_mults`
--
ALTER TABLE `form_coloumn_mults`
  ADD CONSTRAINT `form_coloumn_mults_form_coloumn_id_foreign` FOREIGN KEY (`form_coloumn_id`) REFERENCES `form_coloumns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `form_data`
--
ALTER TABLE `form_data`
  ADD CONSTRAINT `form_data_form_coloumn_id_foreign` FOREIGN KEY (`form_coloumn_id`) REFERENCES `form_coloumns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `form_data_form_data_list_id_foreign` FOREIGN KEY (`form_data_list_id`) REFERENCES `form_data_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `form_data_lists`
--
ALTER TABLE `form_data_lists`
  ADD CONSTRAINT `form_data_lists_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `form_data_lists_price_id_foreign` FOREIGN KEY (`price_id`) REFERENCES `prices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `form_data_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `form_data_mults`
--
ALTER TABLE `form_data_mults`
  ADD CONSTRAINT `form_data_mults_form_coloumn_id_foreign` FOREIGN KEY (`form_coloumn_id`) REFERENCES `form_coloumns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `form_data_mults_form_coloumn_mult_id_foreign` FOREIGN KEY (`form_coloumn_mult_id`) REFERENCES `form_coloumn_mults` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `form_data_mults_form_data_list_id_foreign` FOREIGN KEY (`form_data_list_id`) REFERENCES `form_data_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `form_subcategories`
--
ALTER TABLE `form_subcategories`
  ADD CONSTRAINT `form_subcategories_form_category_id_foreign` FOREIGN KEY (`form_category_id`) REFERENCES `form_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `getwaypayments`
--
ALTER TABLE `getwaypayments`
  ADD CONSTRAINT `getwaypayments_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laws`
--
ALTER TABLE `laws`
  ADD CONSTRAINT `laws_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loginhistories`
--
ALTER TABLE `loginhistories`
  ADD CONSTRAINT `loginhistories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mngfinicals`
--
ALTER TABLE `mngfinicals`
  ADD CONSTRAINT `mngfinicals_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification_lists`
--
ALTER TABLE `notification_lists`
  ADD CONSTRAINT `notification_lists_notification_service_id_foreign` FOREIGN KEY (`notification_service_id`) REFERENCES `notification_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_lists_notification_type_id_foreign` FOREIGN KEY (`notification_type_id`) REFERENCES `notification_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification_messages`
--
ALTER TABLE `notification_messages`
  ADD CONSTRAINT `notification_messages_notification_list_id_foreign` FOREIGN KEY (`notification_list_id`) REFERENCES `notification_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
