-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2021 lúc 02:46 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `car_rental`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `car`
--

CREATE TABLE `car` (
  `vehicle_id,` int(11) NOT NULL,
  `license_no` varchar(30) NOT NULL,
  `model` varchar(10) NOT NULL,
  `year` date NOT NULL,
  `ctype` varchar(15) NOT NULL,
  `drate` int(10) NOT NULL,
  `wrate` int(10) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `car`
--

INSERT INTO `car` (`vehicle_id,`, `license_no`, `model`, `year`, `ctype`, `drate`, `wrate`, `status`) VALUES
(1951060345, '30F29635', 'C200', '2019-05-03', '5 slots', 1000000, 6500000, 'Còn'),
(1951061078, '30H07894', 'i10', '2020-12-10', '4 slos', 300000, 2000000, 'Còn\r\n          '),
(1951061234, '30E12345', 'Vios', '2019-03-08', '5 slots', 500000, 3000000, 'Còn'),
(1951062222, '30F66666', 'A6', '2019-10-10', '5 slots', 1500000, 10000000, 'Còn\r\n          '),
(1951063333, '30G88888', 'Santafe', '2020-06-08', '7 slots', 1000000, 6500000, 'Còn');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`vehicle_id,`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
