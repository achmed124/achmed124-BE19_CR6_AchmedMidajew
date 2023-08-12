-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 12. Aug 2023 um 17:58
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be19_cr6_bigeventsachmedmidajew`
--
CREATE DATABASE IF NOT EXISTS `be19_cr6_bigeventsachmedmidajew` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be19_cr6_bigeventsachmedmidajew`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230812113535', '2023-08-12 13:36:46', 24);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_start` datetime NOT NULL,
  `description` longtext NOT NULL,
  `image` longtext NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `url` longtext NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `name`, `date_start`, `description`, `image`, `capacity`, `email`, `phone`, `address`, `url`, `type`) VALUES
(1, 'Music Fest Extravaganza', '2023-08-15 12:00:00', 'Join us for a day of musical celebration featuring top artists from around the world. Get ready to dance and sing along!', 'https://marbella-dream-homes.com/wp-content/uploads/2023/06/starlite-01-1-1025x720.jpeg', 5000, 'info@musicfest.com', 1234567890, '123 Melody Lane, Cityville, 12345', 'http://musicfest.com', 'music'),
(2, 'Culinary Adventure', '2023-08-20 18:00:00', 'Experience a culinary competition like never before! Renowned chefs battle for supremacy in a thrilling cooking challenge.', 'https://metro.co.uk/wp-content/uploads/2017/08/13934336-low_res-the-big-family-cooking-showdown.jpg?quality=90&strip=all', 200, 'tickets@culinaryshowdown.com', 2147483647, '456 Taste Avenue, Flavortown, 67890', 'http://culinaryshowdown.com', 'food'),
(3, 'Sci-Fi Universe Convention', '2023-08-25 10:00:00', 'Immerse yourself in the wonders of science fiction! Meet authors, attend panels, and explore a galaxy of collectibles.', 'https://speyer.technik-museum.de/assets/uploads/images/678/0546.jpg', 800, 'info@scificon.com', 2147483647, '789 Galaxy Street, Cosmocity, 45678', 'http://scificon.com', 'science fiction'),
(4, 'Street Art Festival', '2023-09-01 14:00:00', 'Witness the streets transform into an open-air gallery as street artists from across the globe showcase their creativity.', 'https://urban-nation.com/wp-content/uploads/2022/06/NK-UNartig-220618-0004-copy-1-960x640.jpg', 300, 'contact@streetartfest.com', 1111111111, '101 Graffiti Alley, Urbanville, 23456', 'http://streetartfest.com', 'art'),
(5, 'Fitness Fusion Marathon', '2023-09-10 06:30:00', 'Challenge your limits in this one-of-a-kind fitness event. A fusion of different workouts to keep you moving and motivated!', 'https://bloximages.chicago2.vip.townnews.com/newarkpostonline.com/content/tncms/assets/v3/editorial/a/23/a23165fb-cc65-5d07-acac-22fe53b4239a/57942094ddbb0.image.jpg?crop=1715%2C900%2C0%2C153&resize=1200%2C630&order=crop%2Cresize', 1000, 'info@fitnessfusion.com', 2147483647, '202 Endurance Road, Fitville, 78901', 'http://fitnessfusion.com', 'fitness'),
(6, 'Nature Photography', '2023-09-15 08:00:00', 'Capture the beauty of nature through your lens! Join us for a photography adventure in scenic locations with expert guidance.', 'https://b3119691.smushcdn.com/3119691/wp-content/uploads/Photographers-sillhuuette-1078x719.jpg?lossy=1&strip=1&webp=1', 50, 'info@naturephotoexpedition.com', 2147483647, '303 Serenity Trail, Wilderness, 12345', 'http://naturephotoexpedition.com', 'photography'),
(7, 'Fashion Glam Gala', '2023-09-20 19:30:00', 'Step into a world of elegance and style. A night of high fashion, runway shows, and avant-garde designs.', 'https://media.architecturaldigest.com/photos/62715f3f2994032fb39d9f52/16:9/w_1280,c_limit/GettyImages-1395030039.jpg', 300, 'tickets@fashiongala.com', 2147483647, '505 Chic Boulevard, Trendytown, 23456', 'http://fashiongala.com', 'fashion'),
(8, 'Tech Innovators Summit', '2023-09-25 09:00:00', 'Explore the latest technological advancements and visionary ideas that are shaping our future.', 'https://cryptoevents.global/wp-content/uploads/Global-Tech-Innovation-Summit-2022.jpg', 500, 'info@techsummit.com', 2147483647, '606 Innovation Drive, Techtopia, 34567', 'http://techsummit.com', 'technology'),
(9, 'Mindfulness Retreat Oasis', '2023-10-05 16:00:00', 'Embark on a journey of self-discovery and relaxation. Unplug from the world and find your center amidst tranquil surroundings.', 'https://oasis-retreats.com/wp-content/uploads/2016/04/LayeredEPS.png', 150, 'info@mindfulnessretreat.com', 2147483647, '707 Serenity Haven, Blissville, 45678', 'http://mindfulnessretreat.com', 'wellness'),
(10, 'Comedy Carnival Spectacle', '2023-10-15 20:00:00', 'Laugh your heart out at the biggest comedy extravaganza in town! A lineup of hilarious comedians will keep you in stitches.', 'https://d32dbz94xv1iru.cloudfront.net/images/events/by_uuid/6a/6ab81b07-d579-44b2-80cb-e2737054a019-1500x901.webp', 400, 'tickets@comedycarnival.com', 2147483647, '808 Humor Street, Jesterville, 56789', 'http://comedycarnival.com', 'comedy');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
