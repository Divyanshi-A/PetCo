-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 02:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoptioncenters`
--

CREATE TABLE `adoptioncenters` (
  `center_id` int(11) NOT NULL,
  `center_name` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoptioncenters`
--

INSERT INTO `adoptioncenters` (`center_id`, `center_name`, `location`, `contact_number`, `email`) VALUES
(1, 'PetCare Central', 'New York City, NY', '+1 (555) 123-4567', 'info@petcarecentral.com'),
(2, 'PetCare Downtown', 'Los Angeles, CA', '+1 (555) 987-6543', 'info@downtownpetcare.com');

-- --------------------------------------------------------

--
-- Table structure for table `adoptions`
--

CREATE TABLE `adoptions` (
  `adoption_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pet_id` int(11) DEFAULT NULL,
  `adoption_date` date DEFAULT NULL,
  `center_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoptions`
--

INSERT INTO `adoptions` (`adoption_id`, `user_id`, `pet_id`, `adoption_date`, `center_id`) VALUES
(1, 3, 1, '2024-05-01', 1),
(2, 7, 4, '2024-05-01', 1),
(3, 1, 16, '2024-05-01', 2),
(4, 3, 5, '2024-05-01', 1),
(5, 8, 9, '2024-05-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `pet_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `species` varchar(50) NOT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('Male','Female','Unknown') NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `center_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`pet_id`, `name`, `species`, `breed`, `age`, `gender`, `color`, `available`, `description`, `image_url`, `center_id`) VALUES
(1, 'Charlie', 'Dog', 'Golden Retriever', 4, 'Male', 'Golden', b'0', 'Charlie is a gentle and affectionate dog who enjoys spending time with his family and playing fetch.', 'https://example.com/charlie.jpg', 1),
(2, 'Luna', 'Cat', 'Siamese', 2, 'Female', 'Cream and Brown', b'1', 'Luna is a curious and playful cat who loves exploring her surroundings and cuddling up on laps.', 'https://example.com/luna.jpg', 1),
(3, 'Cooper', 'Dog', 'Poodle', 4, 'Male', 'White', b'1', 'Cooper is an intelligent and obedient dog who thrives on mental stimulation and learning new tricks.', 'https://example.com/cooper.jpg', 1),
(4, 'Smokey', 'Cat', 'British Shorthair', 1, 'Male', 'Gray', b'0', 'Smokey is a laid-back and independent cat who enjoys lounging around the house and observing the world from a cozy spot.', 'https://example.com/smokey.jpg', 1),
(5, 'Buddy', 'Dog', 'Beagle', 5, 'Male', 'Tri-color', b'0', 'Buddy is a friendly and loyal dog who gets along well with other pets and loves going on adventures with his family.', 'https://example.com/buddy.jpg', 1),
(6, 'Mittens', 'Cat', 'Ragdoll', 3, 'Female', 'White and Gray', b'1', 'Mittens is a gentle and sweet-natured cat who enjoys being pampered and receiving lots of attention from her human companions.', 'https://example.com/mittens.jpg', 1),
(7, 'Rocky', 'Dog', 'Boxer', 6, 'Male', 'Fawn', b'1', 'Rocky is a playful and energetic dog who loves going for runs and spending time outdoors exploring nature.', 'https://example.com/rocky.jpg', 1),
(8, 'Sassy', 'Cat', 'Persian', 2, 'Female', 'White', b'1', 'Sassy is a sassy and independent cat who enjoys lounging in sunny spots and watching birds from the window.', 'https://example.com/sassy.jpg', 1),
(9, 'Bailey', 'Dog', 'Border Collie', 4, 'Female', 'Black and White', b'0', 'Bailey is a highly intelligent and active dog who excels in agility training and loves having a job to do.', 'https://example.com/bailey.jpg', 1),
(10, 'Whiskers', 'Cat', 'Scottish Fold', 3, 'Male', 'Tabby', b'1', 'Whiskers is a curious and playful cat who enjoys exploring new environments and chasing after toys.', 'https://example.com/whiskers.jpg', 1),
(11, 'Max', 'Dog', 'Labrador Retriever', 3, 'Male', 'Black', b'1', 'Max is a friendly and playful dog who loves going for long walks and playing fetch in the park.', 'https://example.com/max.jpg', 2),
(12, 'Princess', 'Cat', 'Maine Coon', 4, 'Female', 'Brown Tabby', b'1', 'Princess is a majestic and independent cat who enjoys lounging on high perches and surveying her kingdom.', 'https://example.com/princess.jpg', 2),
(13, 'Ollie', 'Dog', 'Cocker Spaniel', 2, 'Male', 'Buff', b'1', 'Ollie is an affectionate and loyal dog who enjoys cuddling up with his family and going for car rides.', 'https://example.com/ollie.jpg', 2),
(14, 'Lucky', 'Cat', 'Tabby', 3, 'Male', 'Orange', b'1', 'Lucky is a playful and mischievous cat who enjoys chasing after toys and exploring every nook and cranny of his home.', 'https://example.com/lucky.jpg', 2),
(15, 'Daisy', 'Dog', 'Dachshund', 1, 'Female', 'Red', b'1', 'Daisy is a spunky and fearless dog who may be small in size but has a big personality.', 'https://example.com/daisy.jpg', 2),
(16, 'Simba', 'Cat', 'Bengal', 2, 'Male', 'Spotted', b'0', 'Simba is a curious and adventurous cat who loves climbing trees and stalking imaginary prey.', 'https://example.com/simba.jpg', 2),
(17, 'Rex', 'Dog', 'German Shepherd', 4, 'Male', 'Sable', b'1', 'Rex is a loyal and protective dog who is always alert and ready to defend his family.', 'https://example.com/rex.jpg', 2),
(18, 'Cleo', 'Cat', 'Sphynx', 5, 'Female', 'Pink', b'1', 'Cleo is a unique and affectionate cat who enjoys snuggling under blankets and keeping warm.', 'https://example.com/cleo.jpg', 2),
(19, 'Teddy', 'Dog', 'Shih Tzu', 2, 'Male', 'White and Brown', b'1', 'Teddy is a charming and playful dog who loves meeting new people and making friends wherever he goes.', 'https://example.com/teddy.jpg', 2),
(20, 'Misty', 'Cat', 'Persian', 3, 'Female', 'Gray', b'1', 'Misty is a graceful and elegant cat who enjoys being groomed and pampered like royalty.', 'https://example.com/misty.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `full_name`, `phone_number`, `address`) VALUES
(1, 'john_doe', 'password123', 'john.doe@example.com', 'John Doe', '+1234567890', '123 Main Street'),
(2, 'jane_smith', 'securepass', 'jane.smith@example.com', 'Jane Smith', '+1987654321', '456 Elm Avenue'),
(3, 'mike_jones', 'mikespass', 'mike.jones@example.com', 'Mike Jones', '+1122334455', '789 Oak Lane'),
(4, 'sarah_smith', 'password321', 'sarah.smith@example.com', 'Sarah Smith', '+1555666777', '321 Maple Street'),
(5, 'adam_wilson', 'ilovecats', 'adam.wilson@example.com', 'Adam Wilson', '+1444333222', '555 Pine Avenue'),
(6, 'emily_brown', 'password456', 'emily.brown@example.com', 'Emily Brown', '+1777888999', '987 Cedar Road'),
(7, 'chris_evans', 'captainamerica', 'chris.evans@example.com', 'Chris Evans', '+1666777888', '246 Birch Street'),
(8, 'lisa_jackson', 'lisa123', 'lisa.jackson@example.com', 'Lisa Jackson', '+1888999000', '369 Walnut Boulevard'),
(9, 'kevin_adams', 'hello123', 'kevin.adams@example.com', 'Kevin Adams', '+1999888777', '777 Spruce Avenue'),
(10, 'natalie_white', 'password789', 'natalie.white@example.com', 'Natalie White', '+1777555444', '888 Willow Lane'),
(11, 'alex_miller', 'securepassword', 'alex.miller@example.com', 'Alex Miller', '+1222333444', '222 Elm Street'),
(12, 'olivia_taylor', 'passwordabc', 'olivia.taylor@example.com', 'Olivia Taylor', '+1333444555', '444 Oak Avenue');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoptioncenters`
--
ALTER TABLE `adoptioncenters`
  ADD PRIMARY KEY (`center_id`);

--
-- Indexes for table `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`adoption_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pet_id` (`pet_id`),
  ADD KEY `fk_center_id` (`center_id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`pet_id`),
  ADD KEY `center_id` (`center_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoptioncenters`
--
ALTER TABLE `adoptioncenters`
  MODIFY `center_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `adoption_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `pet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adoptions`
--
ALTER TABLE `adoptions`
  ADD CONSTRAINT `adoptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `adoptions_ibfk_2` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`pet_id`),
  ADD CONSTRAINT `fk_center_id` FOREIGN KEY (`center_id`) REFERENCES `adoptioncenters` (`center_id`);

--
-- Constraints for table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`center_id`) REFERENCES `adoptioncenters` (`center_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
