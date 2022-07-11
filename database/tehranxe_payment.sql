-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2022 at 06:30 PM
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
  `form_template_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `form_subcategory_id`, `group`, `subgroup`, `link`, `status`, `short`, `form_currency_id`, `price`, `text`, `money`, `image`, `created_at`, `updated_at`, `form_template_id`) VALUES
(1, '10 دلاری گوگل پلی', 2, 'group_giftcard_google', 'subgroup_giftcard_google', 'giftcard_google_10', 'active', NULL, 1, '49000', 'دسترسی به بیش از 1 میلیون اپلیکیشن در فروشگاه گوگل پلی. با گیفت کارت گوگل پلی میتوانید اپلیکیشن بخرید یا از پرداخت های درون برنامه ای استفاده کنید. همچنین با اعتباری که از این کارت بدست می آورید میتوانید از فروشگاه گوگل پلی فیلم یا موزیک بخرید.', '22', '/upload/images/forms/16562631881603684464google-play.png', '2022-06-26 17:06:28', '2022-07-01 13:06:26', 1),
(2, 'خرید(شارژ) پی پال', 3, 'group_paypal', 'subgroup_paypal', 'buy_charge_paypal', 'active', 'شارژ یا انتقال وجه به حساب پی پال تنها در صورتی که حساب مقصد وریفای یا تایید شده باشد، امکان پذیر است.', 1, '0', '<p>شارژ یا انتقال وجه به حساب پی پال تنها در صورتی که حساب مقصد وریفای یا تایید شده باشد، امکان پذیر است. کارمزد انتقال پی پال ۳ الی ۷ درصد است که از حساب دریافت کننده کسر میشد، این مبلغ با توجه به کشور اکانت پی پال متفاوت است. درصورتی که قصد دارید مبلغ دقیقی به حساب پی پال مقصد واریز شود، هزینه کارمزد انتقال را در مبلغ نهایی محاسبه نمایید. در صورتی که قصد ریفاند کردن مبلغ را دارید، حتما با هماهنگی قبلی ایرانیکارت باشد و به هیج عنوان مبلغ ارزی را بدون هماهنگی به حساب های ما برگشت نزنید. دقت نمایید در صورت ریفاند کردن تراکنش بدون هماهنگی، ایرانیکارت مسئولیت آن را نخواهد پذیرفت. توجه داشتید باشید ممکن است برخی تراکنش ها با توجه به سیاست های شبکه پی پال از یک روز تا ۲۱ روز در اکانت گیرنده بصورت on hold نمایش داده شود و بعد از زمانی که توسط پی پال مشخص می شود قابل دسترس و استفاده است. انتقال وجه بصورت دلار و یورو انجام می شود و جهت انتقال وجه به ارز های دیگر (پوند، دلار کانادا، دلار استرالیا، &hellip;) می بایست از طریق پنل کاربری خود در سایت ایرانیکات از قسمت پشتیبانی - ارسال تیکت؛ مقدار مبلغی که قصد واریز کردن آن را دارید را اطلاع دهید پس از ثبت، درخواست شما توسط کارشناسان بخش کیف پول الکترونیک بررسی شده و معادل دلار آن به را شما اعلام می کنند. و سپس می توانید درخواست خود را ثبت نمایید درصورتی که قصد انتقال وجه به حساب پی پال از طریق لینک پی پال (PayPal.me/example) را داشته باشید می بایست در قسمت توضیحات لینک پی پالی که قصد ارسال به آن را دارید را وارد نمایید و همچنین در قسمت حساب پی پال آدرس ایمیل example@email.com را وارد نمایید کلیه درخواست های شارژ(خرید) پی پال از ایرانیکارت به صورت services item(goods and services) انجام میشود که در این روش کارمزد شبکه پی پال از گیرنده کسر خواهد شد و در صورتی که کاربری قصد انتقال مبلغ به صورت friend and family را دارد قبل از ثبت درخواست حتما از طریق تیکت از کارشناسان بخش کیف پول الکترونیک استعلام گرفته و در صورت تایید درخواست خود را ثبت بفرمایید. توجه داشته باشید که برای درخواست&zwnj;های فرند و فمیلی ۵ دلار هزینه انتقال به صورت فرند و فمیلی را به مبلغ نهایی خود اضافه کرده و حتما در قسمت توضیحات ذکر شود که به صورت فرند و فمیلی انتقال داده شود.</p>', '0', '/upload/images/forms/1656860788paypal-logo.png', '2022-07-03 15:06:28', '2022-07-03 16:07:38', 2),
(3, 'دبیت کارت', 4, 'group_debit-card', 'subgroup_debit-card', 'debit-card', 'active', 'حساب بانکی شما همراه با یک دبیت کارت از شبکه ویزا از زراعت بانک کشور ترکیه افتتاح می شود.\r\nسطح کارت الکترون میباشد.\r\nنام شما روی کارت ثبت نمیشود.', 1, '65520000', '<p><span data-v-56da923f=\"\">حساب بانکی شما همراه با یک دبیت کارت از شبکه ویزا از زراعت بانک کشور ترکیه افتتاح می شود.<br />سطح کارت الکترون میباشد.<br />نام شما روی کارت ثبت نمیشود.<br />ارز پایه کارت لیر است.<br />حساب مادام العمر است و کارت بانکی نیز تاریخ انقضای ۸ ساله دارد.<br />افتتاح حساب بانکی بر پایه یورو، پوند، فرانک سوییس و لیر است که برای هر نوع حساب شماره IBAN و کد سوئیفت جداگانه ایجاد می شود.<br />حساب ها دارای اینترنت بانک و موبایل بانک و اس ام اس بانک هستند .<br />برای افتتاح حساب نیاز به بلوکه کردن مبلغی نمیباشد.<br />جهت افتتاح حساب بانکی در ترکیه حضور شخص حقیقی (با همراه داشتن پاسپورت با اعتبار حداقل ۶ ماه) در استانبول به مدت ۳ روز الزامی می باشد.</span></p>', '195', '', '2022-07-11 15:44:03', '2022-07-11 15:44:03', 3);

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
(3, 'ویزا، مسترکارت', 'VisaMasterCard', 'active', 'VisaMasterCard', '', '2022-07-11 15:34:08', '2022-07-11 15:34:08');

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
(4, 3, 5, 'نوع کارت:', NULL, 1, NULL, 'active', '2022-07-11 16:04:18', '2022-07-11 16:04:19');

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
(4, 4, 'الکترون', 1, 'active', '2022-07-11 16:04:49', '2022-07-11 16:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `form_data`
--

CREATE TABLE `form_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_coloumn_id` bigint(20) UNSIGNED NOT NULL,
  `form_data_list_id` bigint(20) UNSIGNED NOT NULL,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_data`
--

INSERT INTO `form_data` (`id`, `form_coloumn_id`, `form_data_list_id`, `data`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'jjkkkhhhh', '2022-07-07 10:05:16', '2022-07-09 11:13:32'),
(2, 2, 1, '1', '2022-07-09 09:29:37', '2022-07-09 11:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `form_data_lists`
--

CREATE TABLE `form_data_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_data_lists`
--

INSERT INTO `form_data_lists` (`id`, `user_id`, `status`, `price`, `created_at`, `updated_at`, `form_id`) VALUES
(1, 1, 'inactive', '0', '2022-07-07 09:40:40', '2022-07-07 09:40:40', 2),
(2, 1, 'inactive', '0', '2022-07-11 15:59:00', '2022-07-11 15:59:00', 3);

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
(3, 1, 2, 1, '1', '2022-07-09 11:10:11', '2022-07-09 11:29:09');

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
(3, 'پی پال', 2, 'paypal', 'active', 'پی پال', '/upload/images/form_subcategories/1656860260paypal-logo.png', '2022-07-03 14:57:40', '2022-07-03 14:57:40'),
(4, 'محصولات کارت فیزیکی', 3, 'Physicalcard', 'active', 'محصولات کارت فیزیکی', '', '2022-07-11 15:35:29', '2022-07-11 15:35:29');

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
(3, 'محصولات کارت فیزیکی', 'template_Physicalcard', 'active', '', '2022-07-11 15:39:22', '2022-07-11 15:45:58');

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
(51, '2022_07_03_201540_add_feildshort_table_forms', 7);

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
  ADD KEY `form_data_lists_form_id_foreign` (`form_id`);

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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `form_categories`
--
ALTER TABLE `form_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `form_coloumns`
--
ALTER TABLE `form_coloumns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `form_coloumn_mults`
--
ALTER TABLE `form_coloumn_mults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `form_data`
--
ALTER TABLE `form_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `form_data_lists`
--
ALTER TABLE `form_data_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `form_data_mults`
--
ALTER TABLE `form_data_mults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `form_subcategories`
--
ALTER TABLE `form_subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `form_templates`
--
ALTER TABLE `form_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `mngfinicals`
--
ALTER TABLE `mngfinicals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
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
