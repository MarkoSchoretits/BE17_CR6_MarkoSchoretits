-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 03. Dez 2022 um 00:13
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be17_cr6_bigeventsmarkoschoretits`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221202094014', '2022-12-02 10:40:36', 318);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `description`, `picture`, `capacity`, `email`, `phone`, `location`, `street`, `number`, `zip`, `city`, `url`, `type`) VALUES
(1, 'Adventfeier', '2022-12-01 17:00:00', 'KiGa', 'https://images.pexels.com/photos/278508/pexels-photo-278508.jpeg?auto=compress&cs=tinysrgb&w=640&h=427&dpr=1', 25, 'kigr@kiga.com', '+123', 'KiGaGalv', 'Galv', '17', '12345', 'Florida', 'advent.event.com', 'art'),
(2, 'CaveClimbing', '2023-05-06 06:15:00', 'Eisriesen', 'https://images.pexels.com/photos/1659437/pexels-photo-1659437.jpeg?auto=compress&cs=tinysrgb&w=600', 20, 'cave@event.com', '+137048', 'Eisriesenwelt', 'Höhenstraße', 'o/n', '3456', 'Wagrein', 'cave.event.com', 'adventure'),
(3, 'STARgazing', '2023-01-04 18:30:00', 'Historische Kuffner Sternwarte der Stadt Wien', 'https://images.pexels.com/photos/1567069/pexels-photo-1567069.jpeg?auto=compress&cs=tinysrgb&w=600', 13, 'ksw@event.com', '+8903189', 'Kuffner Sternwarte', 'J-S Straße', '10', '1160', 'Wien', 'ksw.event.com', 'adventure'),
(4, 'DummyEVENT', '2017-01-01 00:00:00', 'bla', 'https://images.pexels.com/photos/8261824/pexels-photo-8261824.jpeg?auto=compress&cs=tinysrgb&w=600', 17, 'a@b.com', '+000', 'Dort', 'Platz', '1', '1', 'Stadt', 'a.b.com', 'other'),
(5, 'UkesROCK', '2024-01-01 10:00:00', 'Rock Koncert on Ukulele', 'https://images.pexels.com/photos/258283/pexels-photo-258283.jpeg?auto=compress&cs=tinysrgb&w=600', 350, 'uke@event.com', '+7678', 'Musikverein', 'Bösendorfer Str', '20', '1010', 'Wien', 'uke.event.com', 'music'),
(8, 'Another Dummy', '2025-05-01 07:14:00', 'Be a Crash Test Dummy in a frontal crash', 'https://images.pexels.com/photos/163016/crash-test-collision-60-km-h-distraction-163016.jpeg?auto=compress&cs=tinysrgb&w=600', 1, 'dummy@dummy.cr', '+888', 'Front Seat', 'Road to Hell', '666', '666', 'Purgatory', 'dummy.cr', 'other'),
(9, 'Mariachi Singing', '2023-05-05 04:12:00', 'AYyayaaaay caaantaa una Raaancheera con nosotros!', 'https://images.pexels.com/photos/8158282/pexels-photo-8158282.jpeg?auto=compress&cs=tinysrgb&w=600', 7, 'canta@mar.com', '+852', 'Finca Garcia', 'Dios Rey', '3', '73876', 'Villarriba', 'mar.com', 'music'),
(10, 'Bodypainting', '2017-01-01 00:00:00', 'Advanced Training with Fingerpaint', 'https://images.pexels.com/photos/5677362/pexels-photo-5677362.jpeg?auto=compress&cs=tinysrgb&w=600', 5, 'rtw', '+9284', 'Studio', 'Newton', '6', '1234', 'Sin City', 'ewlajhfb', 'art'),
(11, 'St Andrews Ceilidh', '2025-01-18 00:00:00', 'Traditional Scottish Dances', 'https://images.pexels.com/photos/12449389/pexels-photo-12449389.jpeg?auto=compress&cs=tinysrgb&w=600', 85, 'da@jhm.com', '865', 'kgfck', 'kjhg', '856', '7433758', 'kzfgh', 'kzf.fkz.eu', 'music'),
(12, 'Science Fair', '2017-01-01 00:00:00', 'Experiments, Experiments, and more Experiments', 'https://images.pexels.com/photos/256302/pexels-photo-256302.jpeg?auto=compress&cs=tinysrgb&w=600', 1200, 'sci.com', '+314-1592', 'Fair Ground', 'PanoramaStr', '1', '1222', 'Wien', 'lefg.it', 'other'),
(13, 'Bog je dao', '2017-01-01 00:00:00', 'Ana Schoretits liest aus ihrem neuesten Buch', 'https://www.hkd.at/images/mgthumbnails/300x225-images-visti-2017-citanje_Schoretits_Borta.jpg', 50, 'anafgf.con', 'i56', 'Va skadnju', 'jgfh', '865', '7011', 'Zagersdorf', 'kzfg.zg', 'art');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
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
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
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
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
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
