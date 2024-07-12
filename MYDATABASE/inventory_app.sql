-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2024 at 08:43 AM
-- Server version: 10.6.8-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Discovering the iPhone 15 Pro: A Leap into the Future of Smartphone Technology', '<p>In the ever-evolving landscape of smartphones, Apple continues to set benchmarks with each new release, and the iPhone 15 Pro is no exception. Boasting an exquisite blend of cutting-edge design and formidable performance, the iPhone 15 Pro stands as a testament to Apple\'s relentless pursuit of innovation. Encased in a sleek stainless steel frame and featuring a dazzling Super Retina XDR display, this flagship device exudes premium craftsmanship from every angle. Whether it\'s the seamless integration of glass and metal or the precision-engineered ceramic shield front, every detail of the iPhone 15 Pro is meticulously crafted to offer both durability and aesthetic appeal.</p>\r\n<p>Underpinning the iPhone 15 Pro\'s stellar exterior is the formidable A17 Bionic chip, a powerhouse of computational prowess that ensures blazing-fast performance and efficiency. Coupled with iOS 18, Apple\'s latest operating system, users can expect a smooth and intuitive experience that redefines what\'s possible on a smartphone. From gaming to productivity tasks, the iPhone 15 Pro effortlessly handles it all with grace and speed.</p>\r\n<p>Photography enthusiasts will find themselves enamored with the iPhone 15 Pro\'s sophisticated camera system. Equipped with a triple 12MP camera array that includes ultra-wide, wide, and telephoto lenses, this device delivers unparalleled versatility and clarity in every shot. Whether capturing sweeping landscapes or intimate portraits, the iPhone 15 Pro excels with features like Night mode, Deep Fusion, and the ability to shoot in ProRAW format, empowering users to unleash their creativity without compromise.</p>\r\n<p>Security remains a paramount concern, and the iPhone 15 Pro addresses it with Face ID, Apple\'s facial recognition technology that offers robust protection against unauthorized access. Furthermore, the integration of 5G connectivity ensures users can enjoy blazing-fast speeds for streaming, downloading, and browsing, elevating the mobile experience to new heights. With storage options ranging to meet diverse needs, the iPhone 15 Pro is not just a smartphone but a comprehensive tool for modern living, combining style, functionality, and innovation seamlessly.</p>\r\n<p>In conclusion, the iPhone 15 Pro stands at the pinnacle of Apple\'s technological prowess, embodying years of refinement and innovation. Whether you\'re drawn to its stunning design, powerful performance, or advanced camera capabilities, this flagship device represents a leap forward in what a smartphone can achieve. For those seeking the ultimate in both form and function, the iPhone 15 Pro sets a new standard that promises to inspire and delight users around the globe.</p>', 'images/sN6rOOZDnhy1GNeTSEdfrkOTmTl8OQNhkBhhJpLU.jpg', '2024-07-10 01:22:24', '2024-07-10 07:21:48'),
(2, 'Samsung\'s Latest AI Innovations: Revolutionizing Technology with Galaxy S24 Ultra and Galaxy Fit3', '<p>Samsung continues to revolutionize the tech industry with its latest AI innovations, showcased in the Galaxy S24 Ultra and the Galaxy Fit3. These devices are equipped with cutting-edge AI technologies that enhance user experience, productivity, and wellness. As Samsung pushes the boundaries of what artificial intelligence can achieve, the Galaxy S24 Ultra and Galaxy Fit3 stand out as prime examples of this groundbreaking progress.</p>\r\n<h4>Intelligent Performance: Samsung Galaxy S24 Ultra</h4>\r\n<p>The Samsung Galaxy S24 Ultra is a testament to the power of AI in modern smartphones. Powered by the latest Exynos 2400 or Snapdragon 8 Gen 3 processor with integrated AI capabilities, the S24 Ultra delivers unparalleled performance and efficiency. The AI-driven system optimizes battery usage, manages resources effectively, and provides intelligent suggestions to enhance user experience. The stunning 6.9-inch Dynamic AMOLED 2X display, combined with AI-powered image processing, ensures vibrant visuals and smooth interactions.</p>\r\n<p>One of the most remarkable features of the Galaxy S24 Ultra is its advanced AI camera system. The quad-camera setup, featuring a 200MP main sensor, leverages AI to automatically adjust settings, recognize scenes, and enhance image quality. Whether capturing breathtaking landscapes or detailed portraits, the AI algorithms ensure optimal results in any lighting condition. Additionally, the S24 Ultra&rsquo;s AI-driven productivity tools, such as smart scheduling and personalized recommendations, make it a powerful companion for both work and play.</p>\r\n<h4>Smarter Health: Galaxy Fit3</h4>\r\n<p>Complementing the Galaxy S24 Ultra is the Galaxy Fit3, Samsung&rsquo;s latest fitness tracker that incorporates AI to elevate your health and fitness journey. The Galaxy Fit3 features a bright AMOLED display and a lightweight, comfortable band, making it suitable for all-day wear. Its AI-driven health tracking capabilities provide comprehensive insights into your well-being, including heart rate monitoring, sleep analysis, and personalized workout recommendations. The AI algorithms analyze your activity patterns and offer tailored suggestions to help you achieve your fitness goals.</p>\r\n<p>The Galaxy Fit3&rsquo;s water resistance up to 50 meters and long-lasting battery make it ideal for various activities, from swimming to hiking. With smart notifications for calls, messages, and apps, the Fit3 ensures you stay connected without missing a beat. The seamless integration with Samsung Health, powered by AI, allows for effortless tracking and analysis of your health data. By offering personalized health insights and smart recommendations, the Galaxy Fit3 empowers you to make informed decisions about your wellness.</p>\r\n<h4>Seamless AI Integration for an Enhanced Lifestyle</h4>\r\n<p>Together, the Samsung Galaxy S24 Ultra and Galaxy Fit3 create a cohesive ecosystem that leverages AI to enhance every aspect of your life. The seamless integration between the two devices ensures synchronized data and notifications, providing a unified and intuitive user experience. Whether managing your schedule on the S24 Ultra or tracking your fitness progress with the Fit3, Samsung&rsquo;s AI ecosystem delivers personalized and intelligent solutions that adapt to your needs.</p>\r\n<p>In conclusion, Samsung&rsquo;s latest AI innovations in the Galaxy S24 Ultra and Galaxy Fit3 represent a significant leap forward in technology. The Galaxy S24 Ultra redefines smartphone performance, camera capabilities, and productivity with its AI-driven features, while the Galaxy Fit3 offers comprehensive health tracking and personalized wellness insights. Together, these devices showcase the potential of AI to transform the way we live, work, and stay healthy, providing a glimpse into the future of intelligent technology.</p>', 'images/b9IlCh0660TXglhUTbFR96Bd8MUpE6e9Dqv8yXeR.png', '2024-07-10 01:40:04', '2024-07-10 01:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `article_product`
--

CREATE TABLE `article_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_product`
--

INSERT INTO `article_product` (`id`, `article_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 4, '2024-07-10 01:42:51', '2024-07-10 01:43:41'),
(2, 2, 2, 2, '2024-07-10 07:30:10', '2024-07-10 07:30:10'),
(3, 3, 3, 3, '2024-07-11 23:31:29', '2024-07-11 23:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Smartphones', 'Smartphones are handheld devices that combine mobile phone capabilities with advanced computing features. They typically have a touchscreen interface, internet access, and the ability to run various apps for communication, entertainment, productivity, and more.', '2024-07-10 01:08:19', '2024-07-10 01:08:19'),
(2, 'Laptops', 'Laptops are portable personal computers with an integrated screen and keyboard. They are designed for mobile use and can perform a wide range of tasks, from basic computing and internet browsing to more demanding applications like gaming and video editing.', '2024-07-10 01:08:44', '2024-07-10 01:08:44'),
(3, 'Smartwatches', 'Smartwatches are wearable devices that combine the functionality of a watch with smart features such as fitness tracking, notifications, and app integration. They can connect to smartphones to display messages, calls, and other information.', '2024-07-10 01:09:16', '2024-07-10 01:09:16'),
(4, 'Televisions', 'Televisions are electronic devices used for viewing video content. Modern TVs often feature high-definition displays, smart capabilities with internet access, and various streaming services. They come in various sizes and technologies, such as LED, OLED, and QLED.', '2024-07-10 01:09:35', '2024-07-10 01:09:35'),
(5, 'Cameras', 'Cameras are devices used to capture photographs and videos. They range from compact point-and-shoot models to advanced digital single-lens reflex (DSLR) and mirrorless cameras. Modern cameras often feature high-resolution sensors, various shooting modes, and connectivity options.', '2024-07-10 01:10:05', '2024-07-10 01:10:05');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_05_131905_create_categories_table', 1),
(5, '2024_07_05_131933_create_products_table', 1),
(6, '2024_07_06_054540_add_image_to_products_table', 1),
(7, '2024_07_08_091634_create_carts_table', 1),
(8, '2024_07_09_073838_create_articles_table', 1),
(9, '2024_07_09_073953_create_article_product_table', 1),
(10, '2024_07_09_080953_add_image_to_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created_at`, `updated_at`, `image`) VALUES
(1, 'iPhone 15 Pro', 'The iPhone 15 Pro is Apple\'s flagship smartphone, featuring a sleek stainless steel design and a stunning Super Retina XDR display. Powered by the A17 Bionic chip and iOS 18, it offers smooth performance and advanced camera capabilities with a triple 12MP camera system. It includes Face ID for security, supports 5G connectivity, and comes in various storage options, making it ideal for users seeking top-notch technology and innovation.', 999.00, 1, '2024-07-10 01:18:48', '2024-07-10 01:19:16', 'products/0BcjBvRg6UqDjP98dZlXq6vEsEaTrEEqPo0KTALj.jpg'),
(2, 'Samsung Galaxy S24 Ultra', 'The Samsung Galaxy S24 Ultra is a powerhouse of innovation and design, featuring a sleek and durable glass and metal body. It boasts a stunning 6.9-inch Dynamic AMOLED 2X display with a 120Hz refresh rate for incredibly smooth visuals. Powered by the latest Exynos 2400 or Snapdragon 8 Gen 3 processor, it ensures top-tier performance and efficiency. The quad-camera setup, including a 200MP main sensor, delivers exceptional photo and video quality in any lighting condition. With features like S Pen support, 5G connectivity, and a large 5000mAh battery, the Galaxy S24 Ultra is designed to meet the needs of the most demanding users, offering unparalleled productivity and entertainment.', 1354.00, 1, '2024-07-10 01:26:55', '2024-07-11 23:06:14', 'products/gopTwyJ6pnLgKtduehKPg8vhSxsCbS7iV1vh7nQT.jpg'),
(3, 'Galaxy Fit3', 'The Galaxy Fit3 is Samsung\'s latest fitness tracker, combining sleek design with robust functionality. It features a bright, easy-to-read AMOLED display and a lightweight, comfortable band suitable for all-day wear. The Fit3 offers comprehensive health and fitness tracking, including heart rate monitoring, sleep analysis, and a variety of workout modes. With water resistance up to 50 meters, it’s perfect for swimmers and outdoor enthusiasts. The long-lasting battery ensures you stay connected and informed throughout the day, with smart notifications for calls, messages, and apps. The Galaxy Fit3 is designed to seamlessly integrate into your active lifestyle, providing essential health insights and convenience.', 55.33, 3, '2024-07-10 01:33:06', '2024-07-10 01:33:33', 'products/hUk3UtBAL2R0HDTQ0VUOkmrnZcNbxRWnvQvlgXek.jpg'),
(4, 'LG OLED evo C3 4K', 'The LG OLED evo C3 4K Smart TV offers an unparalleled viewing experience with its exceptional picture quality. Powered by OLED evo technology, this TV delivers more vibrant colors and sharper contrast, providing stunning detail in every scene. With 4K resolution, every image appears incredibly realistic and crystal clear. Equipped with AI Picture Pro and AI Sound Pro, this TV automatically optimizes picture and sound for the perfect viewing experience. The Smart TV features an intuitive webOS platform, allowing easy access to a variety of streaming apps and smart features. Its sleek and elegant design adds a modern touch to your space, making it not just an entertainment device but also a stylish decorative element.', 945.00, 4, '2024-07-11 06:26:21', '2024-07-11 23:07:09', 'products/DTIe8mzfvU9sEnPDDoHJYeE7Quu4TkQtiwqyapQT.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KFWnCelzMkdeD8gCKPIp6Q8UeVNPyymG1j83NWmS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzB0NVVxclJOZlJMRmVyYWdkRDBwRUlxck03R1E1UVFvYWc3RkVibyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1720766054);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$12$9hEfYgteTvfd/Hh0KQkO9.8kmKdCRfGwyBuKgO8gXPgGCTgR3/lT.', 'admin', '2024-07-10 01:06:31', '2024-07-10 01:06:31'),
(2, 'John Doe', 'johndoe@mail.com', '$2y$12$aJeaNU5HY.S1gdjGexMkse3tQi5ti8Uf.tguaD4oAJRujmln2Fw7W', 'user', '2024-07-10 01:41:38', '2024-07-10 07:56:15'),
(3, 'Budi Setiawan', 'budi@mail.com', '$2y$12$OuptdBA44FZcvzy9na2QO.Ho6lWvHg/qT1cn.sxRl9KaZznZGbuj.', 'user', '2024-07-11 22:44:05', '2024-07-11 22:44:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_product`
--
ALTER TABLE `article_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_product_article_id_foreign` (`article_id`),
  ADD KEY `article_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `article_product`
--
ALTER TABLE `article_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_product`
--
ALTER TABLE `article_product`
  ADD CONSTRAINT `article_product_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
