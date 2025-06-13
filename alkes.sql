-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2024 at 08:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `message`, `date`) VALUES
(7, 'volem', 'volemalvaroazira2@gmail.com', 'terima kasih', '2024-10-11 06:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` text NOT NULL,
  `description` text NOT NULL,
  `price` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `description`, `price`, `image`, `created_at`) VALUES
(1, 'Stroberi', 'Fruits', 'Stroberi adalah buah beri yang manis dan sedikit asam dengan warna merah cerah dan bintik-bintik biji di permukaannya. Buah ini memiliki aroma khas yang segar dan sering kali dikonsumsi langsung atau dijadikan bahan dalam berbagai hidangan, seperti smoothie, kue, dan salad buah. Stroberi kaya akan vitamin C, serat, dan antioksidan yang baik untuk menjaga kesehatan tubuh.', '5000', '../uploads/images.jpg', '2024-10-03 13:15:10'),
(6, 'Sawi', 'Vegetables', 'Sayuran hijau berdaun yang populer dalam masakan Asia. Sawi memiliki rasa sedikit pahit dan tekstur renyah, terutama pada batangnya. Sayuran ini kaya akan vitamin K, vitamin A, dan serat, yang berfungsi untuk meningkatkan sistem kekebalan tubuh dan menjaga kesehatan pencernaan. Sawi sering digunakan dalam tumisan, sup, atau dimakan mentah sebagai lalapan.', '2000', '../uploads/images (1).jpg', '2024-10-05 11:47:03'),
(7, 'Melon', 'Fruits', 'Buah dengan daging yang lembut, manis, dan penuh air, sehingga sangat cocok dikonsumsi saat cuaca panas. Tersedia dalam berbagai varietas, seperti melon oranye (cantaloupe) dan melon hijau (honeydew), buah ini mengandung banyak vitamin A dan C serta elektrolit yang membantu menjaga hidrasi tubuh. Melon sering dikonsumsi langsung, dibuat jus, atau menjadi pelengkap salad buah.', '12000', '../uploads/Mengenal-Manfaat-Buah-Melon.jpg', '2024-10-08 08:55:59'),
(8, 'Kembang Kol', 'Vegetables', 'Sayuran dari keluarga brassica yang memiliki kepala bunga berwarna putih atau krem yang diselimuti daun hijau. Sayuran ini memiliki tekstur renyah dan rasa yang lembut serta sedikit manis, membuatnya cocok untuk berbagai hidangan, seperti tumisan, sup, atau dipanggang sebagai alternatif nasi dan kentang. Kembang kol kaya akan serat, vitamin C, dan antioksidan yang baik untuk meningkatkan kesehatan pencernaan dan sistem kekebalan tubuh.', '6000', '../uploads/65260631dffba.jpg', '2024-10-08 08:59:49'),
(9, 'Pisang', 'Fruits', 'Buah tropis yang mudah ditemukan dengan kulit berwarna kuning dan daging lembut serta manis. Buah ini kaya akan kalium, vitamin B6, dan serat, yang baik untuk menjaga kesehatan jantung dan pencernaan. Pisang sering dikonsumsi sebagai camilan sehat, tambahan dalam smoothie, atau bahan dalam berbagai resep kue dan roti.', '8000', '../uploads/sehat-tiap-hari-berkat-manfaat-pisang.jpg', '2024-10-08 09:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `total` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `name`, `email`, `total`, `date`) VALUES
(4, 'volem', 'volemalvaroazira2@gmail.com', '33000', '2024-10-11 06:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `paypal_id` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `dob`, `gender`, `address`, `city`, `contact_no`, `paypal_id`, `created_at`) VALUES
(2, 'admin', '$2y$10$aYgF1y33MJ7oJH07jS9KeuPSfYZpSf3jZ2zW5I5gIQiOmol6QrneS', 'admin@gmail.com', '2024-10-03', 'Male', 'Jl. Kebon', 'Jakarta', '09818238', '12313', '2024-10-03 13:13:54'),
(5, 'volem', '$2y$10$MNj98IEnlDQQLTloBw.0xuiFwmuha2FZYwfUlBTq76FqoY4JiHJRm', 'volemalvaroazira2@gmail.com', '2003-06-14', 'Male', 'Jl. Kebon bawang 1 no 13', 'Jakarta', '085156727386', '13452628642', '2024-10-11 06:22:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
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
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
