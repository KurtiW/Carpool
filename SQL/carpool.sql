-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 21. Aug 2019 um 21:26
-- Server-Version: 10.3.16-MariaDB-1:10.3.16+maria~stretch
-- PHP-Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `carpool`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CHAT`
--

CREATE TABLE `CHAT` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CHAT_USER`
--

CREATE TABLE `CHAT_USER` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CHAT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `MESSAGES`
--

CREATE TABLE `MESSAGES` (
  `ID` int(11) NOT NULL,
  `MESSAGE` text COLLATE utf8_bin DEFAULT NULL,
  `CHAT_ID` int(11) NOT NULL,
  `SENDER` int(11) NOT NULL,
  `CREATEDAT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PLACES`
--

CREATE TABLE `PLACES` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `RIDES_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `RECENSION`
--

CREATE TABLE `RECENSION` (
  `ID` int(11) NOT NULL,
  `TEXT` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL,
  `AUTHOR` int(11) NOT NULL,
  `RECIEVER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `RIDES`
--

CREATE TABLE `RIDES` (
  `ID` int(11) NOT NULL,
  `COUNT` int(11) DEFAULT NULL,
  `OWNER` int(11) NOT NULL,
  `START` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `END` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `DEPARTURE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `USER`
--

CREATE TABLE `USER` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `CREATEDAT` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `CHAT`
--
ALTER TABLE `CHAT`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `CHAT_USER`
--
ALTER TABLE `CHAT_USER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_CHAT_USER_USER1_idx` (`USER_ID`),
  ADD KEY `fk_CHAT_USER_CHAT1_idx` (`CHAT_ID`);

--
-- Indizes für die Tabelle `MESSAGES`
--
ALTER TABLE `MESSAGES`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_MESSAGES_CHAT1_idx` (`CHAT_ID`),
  ADD KEY `fk_MESSAGES_USER1_idx` (`SENDER`);

--
-- Indizes für die Tabelle `PLACES`
--
ALTER TABLE `PLACES`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_PLACES_USER1_idx` (`USER_ID`),
  ADD KEY `fk_PLACES_RIDES1_idx` (`RIDES_ID`);

--
-- Indizes für die Tabelle `RECENSION`
--
ALTER TABLE `RECENSION`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_RECENSION_USER1_idx` (`AUTHOR`),
  ADD KEY `fk_RECENSION_USER2_idx` (`RECIEVER`);

--
-- Indizes für die Tabelle `RIDES`
--
ALTER TABLE `RIDES`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_PLACES_USER_idx` (`OWNER`);

--
-- Indizes für die Tabelle `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `CHAT`
--
ALTER TABLE `CHAT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT für Tabelle `CHAT_USER`
--
ALTER TABLE `CHAT_USER`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `MESSAGES`
--
ALTER TABLE `MESSAGES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `PLACES`
--
ALTER TABLE `PLACES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `RECENSION`
--
ALTER TABLE `RECENSION`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `RIDES`
--
ALTER TABLE `RIDES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `USER`
--
ALTER TABLE `USER`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `CHAT_USER`
--
ALTER TABLE `CHAT_USER`
  ADD CONSTRAINT `fk_CHAT_USER_CHAT1` FOREIGN KEY (`CHAT_ID`) REFERENCES `CHAT` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CHAT_USER_USER1` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `MESSAGES`
--
ALTER TABLE `MESSAGES`
  ADD CONSTRAINT `fk_MESSAGES_CHAT1` FOREIGN KEY (`CHAT_ID`) REFERENCES `CHAT` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_MESSAGES_USER1` FOREIGN KEY (`SENDER`) REFERENCES `USER` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `PLACES`
--
ALTER TABLE `PLACES`
  ADD CONSTRAINT `fk_PLACES_RIDES1` FOREIGN KEY (`RIDES_ID`) REFERENCES `RIDES` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PLACES_USER1` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `RECENSION`
--
ALTER TABLE `RECENSION`
  ADD CONSTRAINT `fk_RECENSION_USER1` FOREIGN KEY (`AUTHOR`) REFERENCES `USER` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_RECENSION_USER2` FOREIGN KEY (`RECIEVER`) REFERENCES `USER` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `RIDES`
--
ALTER TABLE `RIDES`
  ADD CONSTRAINT `fk_PLACES_USER` FOREIGN KEY (`OWNER`) REFERENCES `USER` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
