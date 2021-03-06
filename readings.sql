-- SQL script to set up database for Daily Bible Readings
-- Maintained by ATS Webbing - Last modified 3 Dec 2011
-- http://www.allthingssound.co.uk
--
-- Database: `readings`
-- This script should only be run once!

CREATE DATABASE `readings` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER `reader`@`localhost` IDENTIFIED BY 'eccles1212';
USE `readings`;
GRANT ALL ON readings.* TO `reader`@`localhost`;

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` tinyint(2) NOT NULL,
  `fullname` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Data for table `books`
--

INSERT INTO `books` (`id`, `fullname`, `abbreviation`) VALUES
(1, 'Genesis', 'gen'),
(2, 'Exodus', 'exod'),
(3, 'Leviticus', 'lev'),
(4, 'Numbers', 'num'),
(5, 'Deuteronomy', 'deut'),
(6, 'Joshua', 'josh'),
(7, 'Judges', 'judg'),
(8, 'Ruth', 'ruth'),
(9, 'I Samuel', '1sam'),
(10, 'II Samuel', '2sam'),
(11, 'I Kings', '1kgs'),
(12, 'II Kings', '2kgs'),
(13, 'I Chronicles', '1chr'),
(14, 'II Chronicles', '2chr'),
(15, 'Ezra', 'ezra'),
(16, 'Nehemiah', 'neh'),
(17, 'Esther', 'esth'),
(18, 'Job', 'job'),
(19, 'Psalm', 'ps'),
(20, 'Proverbs', 'prov'),
(21, 'Ecclesiastes', 'eccl'),
(22, 'Song of Solomon', 'song'),
(23, 'Isaiah', 'isa'),
(24, 'Jeremiah', 'jer'),
(25, 'Lamentations', 'lam'),
(26, 'Ezekiel', 'ezek'),
(27, 'Daniel', 'dan'),
(28, 'Hosea', 'hos'),
(29, 'Joel', 'joel'),
(30, 'Amos', 'amos'),
(31, 'Obadiah', 'obad'),
(32, 'Jonah', 'jonah'),
(33, 'Micah', 'mic'),
(34, 'Nahum', 'nah'),
(35, 'Habakkuk', 'hab'),
(36, 'Zephaniah', 'zeph'),
(37, 'Haggai', 'hag'),
(38, 'Zechariah', 'zech'),
(39, 'Malachi', 'mal'),
(40, 'Matthew', 'matt'),
(41, 'Mark', 'mark'),
(42, 'Luke', 'luke'),
(43, 'John', 'john'),
(44, 'Acts', 'acts'),
(45, 'Romans', 'rom'),
(46, 'I Corinthians', '1cor'),
(47, 'II Corinthians', '2cor'),
(48, 'Galatians', 'gal'),
(49, 'Ephesians', 'eph'),
(50, 'Philippians', 'phil'),
(51, 'Colossians', 'col'),
(52, 'I Thessalonians', '1thess'),
(53, 'II Thessalonians', '2thess'),
(54, 'I Timothy', '1tim'),
(55, 'II Timothy', '2tim'),
(56, 'Titus', 'titus'),
(57, 'Philemon', 'phlm'),
(58, 'Hebrews', 'heb'),
(59, 'James', 'jas'),
(60, 'I Peter', '1pet'),
(61, 'II Peter', '2pet'),
(62, 'I John', '1john'),
(63, 'II John', '2john'),
(64, 'III John', '3john'),
(65, 'Jude', 'jude'),
(66, 'Revelation', 'rev');

--
-- Table structure for table `months`
--

CREATE TABLE IF NOT EXISTS `months` (
  `id` tinyint(4) NOT NULL,
  `month` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data for table `months`
--

INSERT INTO `months` (`id`, `month`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `readings`
--

CREATE TABLE IF NOT EXISTS `readings` (
  `id` smallint(3) NOT NULL,
  `month` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `day` tinyint(2) NOT NULL,
  `otreading1` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `otreading2` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ntreading` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bible Readings';

--
-- Data for table `readings`
--

INSERT INTO `readings` (`id`, `month`, `day`, `otreading1`, `otreading2`, `ntreading`) VALUES
(1, 'January', 1, 'Genesis 1', 'Job 1,2', 'Matthew 1,2'),
(2, 'January', 2, 'Genesis 2', 'Job 3', 'Matthew 3,4'),
(3, 'January', 3, 'Genesis 3', 'Job 4,5', 'Matthew 5'),
(4, 'January', 4, 'Genesis 4', 'Job 6,7', 'Matthew 6'),
(5, 'January', 5, 'Genesis 5', 'Job 8', 'Matthew 7,8'),
(6, 'January', 6, 'Genesis 6', 'Job 9,10', 'Matthew 9'),
(7, 'January', 7, 'Genesis 7,8', 'Job 11', 'Matthew 10'),
(8, 'January', 8, 'Genesis 9,10', 'Job 12', 'Matthew 11'),
(9, 'January', 9, 'Genesis 11', 'Job 13', 'Matthew 12'),
(10, 'January', 10, 'Genesis 12', 'Job 14', 'Matthew 13'),
(11, 'January', 11, 'Genesis 13,14', 'Job 15', 'Matthew 14'),
(12, 'January', 12, 'Genesis 15', 'Job 16,17', 'Matthew 15'),
(13, 'January', 13, 'Genesis 16', 'Job 18', 'Matthew 16,17'),
(14, 'January', 14, 'Genesis 17', 'Job 19', 'Matthew 18'),
(15, 'January', 15, 'Genesis 18', 'Job 20', 'Matthew 19'),
(16, 'January', 16, 'Genesis 19', 'Job 21', 'Matthew 20'),
(17, 'January', 17, 'Genesis 20', 'Job 22', 'Matthew 21'),
(18, 'January', 18, 'Genesis 21', 'Job 23,24', 'Matthew 22'),
(19, 'January', 19, 'Genesis 22', 'Job 25,26', 'Matthew 23'),
(20, 'January', 20, 'Genesis 23', 'Job 27', 'Matthew 24'),
(21, 'January', 21, 'Genesis 24', 'Job 28', 'Matthew 25'),
(22, 'January', 22, 'Genesis 25', 'Job 29', 'Matthew 26'),
(23, 'January', 23, 'Genesis 26', 'Job 30', 'Matthew 27'),
(24, 'January', 24, 'Genesis 27,28', 'Job 31', 'Matthew 28'),
(25, 'January', 25, 'Genesis 29', 'Job 32', 'Hebrews 1'),
(26, 'January', 26, ' Genesis 30', ' Job 33', 'Hebrews 2'),
(27, 'January', 27, 'Genesis 31', 'Job 34', 'Hebrews 3,4'),
(28, 'January', 28, 'Genesis 32', 'Job 35', 'Hebrews 5'),
(29, 'January', 29, 'Genesis 33', 'Job 36', 'Hebrews 6,7'),
(30, 'January', 30, 'Genesis 34', 'Job 37', 'Hebrews 8'),
(31, 'January', 31, 'Genesis 35', 'Job 38', 'Hebrews 9'),
(32, 'February', 1, 'Genesis 36', 'Job 39', 'Hebrews 10'),
(33, 'February', 2, 'Genesis 37', 'Job 40', 'Hebrews 11'),
(34, 'February', 3, 'Genesis 38', 'Job 41', 'Hebrews 12,13'),
(35, 'February', 4, 'Genesis 39', 'Job 42', 'James 1,2'),
(36, 'February', 5, 'Genesis 40', 'Psalms 1,2', 'James 3-5'),
(37, 'February', 6, 'Genesis 41', 'Psalms 3,4', 'I Peter 1'),
(38, 'February', 7, 'Genesis 42', 'Psalms 5,6', 'I Peter 2,3'),
(39, 'February', 8, 'Genesis 43', 'Psalms 7,8', 'I Peter 4,5'),
(40, 'February', 9, 'Genesis 44', 'Psalm 9', 'II Peter 1-3'),
(41, 'February', 10, 'Genesis 45,46', 'Psalm 10', 'I John 1,2'),
(42, 'February', 11, 'Genesis 47,48', 'Psalms 11,12', 'I John 3'),
(43, 'February', 12, 'Genesis 49,50', 'Psalm 13', 'I John 4,5'),
(44, 'February', 13, 'Exodus 1,2', 'Psalms 14,15', 'II and III John'),
(45, 'February', 14, 'Exodus 3,4', 'Psalms 16,17', 'Jude'),
(46, 'February', 15, 'Exodus 5', 'Psalm 18', 'Mark 1'),
(47, 'February', 16, 'Exodus 6,7', 'Psalm 19', 'Mark 2,3'),
(48, 'February', 17, 'Exodus 8', 'Psalms 20,21', 'Mark 4'),
(49, 'February', 18, 'Exodus 9', 'Psalm 22', 'Mark 5'),
(50, 'February', 19, 'Exodus 10,11', 'Psalms 23,24', 'Mark 6'),
(51, 'February', 20, 'Exodus 12', 'Psalm 25', 'Mark 7'),
(52, 'February', 21, 'Exodus 13,14', 'Psalm 26', 'Mark 8'),
(53, 'February', 22, 'Exodus 15', 'Psalms 27,28', 'Mark 9'),
(54, 'February', 23, 'Exodus 16,17', 'Psalm 29', 'Mark 10'),
(55, 'February', 24, 'Exodus 18,19', 'Psalm 30', 'Mark 11'),
(56, 'February', 25, 'Exodus 20', 'Psalms 31,32', 'Mark 12'),
(57, 'February', 26, 'Exodus 21', 'Psalm 33', 'Mark 13'),
(58, 'February', 27, 'Exodus 22', 'Psalm 34', 'Mark 14'),
(59, 'February', 28, 'Exodus 23', 'Psalms 35,36', 'Mark 15,16'),
(60, 'February', 29, 'Exodus 24,25', 'Psalms 37,38', 'Romans 1,2'),
(61, 'March', 1, 'Exodus 26,27', 'Psalm 39', 'Romans 3,4'),
(62, 'March', 2, 'Exodus 28,29', 'Psalm 40', 'Romans 5,6'),
(63, 'March', 3, 'Exodus 30', 'Psalm 41', 'Romans 7,8'),
(64, 'March', 4, 'Exodus 31,32', 'Psalms 42,43', 'Romans 9,10'),
(65, 'March', 5, 'Exodus 33,34', 'Psalm 44', 'Romans 11,12'),
(66, 'March', 6, 'Exodus 35', 'Psalm 45', 'Romans 13,14'),
(67, 'March', 7, 'Exodus 36,36', 'Psalm 46', 'Romans 15,16'),
(68, 'March', 8, 'Exodus 38', 'Psalms 47,48', 'I Corinthians 1,2'),
(69, 'March', 9, 'Exodus 39', 'Psalm 49', 'I Corinthians 3,4'),
(70, 'March', 10, 'Exodus 40', 'Psalm 50', 'I Corinthians 5,6'),
(71, 'March', 11, 'Leviticus 1,2', 'Psalms 51,52', 'I Corinthians 7'),
(72, 'March', 12, 'Leviticus 3,4', 'Psalms 53,54', 'I Corinthians 8,9'),
(73, 'March', 13, 'Leviticus 5', 'Psalm 55', 'I Corinthians 10,11'),
(74, 'March', 14, 'Leviticus 6', 'Psalm 56', 'I Corinthians 12-14'),
(75, 'March', 15, 'Leviticus 7', 'Psalm 57', 'I Corinthians 15'),
(76, 'March', 16, 'Leviticus 8,9', 'Psalm 58', 'I Corinthians 16'),
(77, 'March', 17, 'Leviticus 10', 'Psalms 59,60', 'II Corinthians 1,2'),
(78, 'March', 18, 'Leviticus 11,12', 'Psalms 61,62', 'II Corinthians 3'),
(79, 'March', 19, 'Leviticus 13', 'Psalm 63', 'II Corinthians 4,5'),
(80, 'March', 20, 'Leviticus 14', 'Psalm 64', 'II Corinthians 6,7'),
(81, 'March', 21, 'Leviticus 15', 'Psalms 65,66', 'II Corinthians 8,9'),
(82, 'March', 22, 'Leviticus 16', 'Psalms 67,68', 'II Corinthians 10'),
(83, 'March', 23, 'Leviticus 17', 'Psalm 69', 'II Corinthians 11,12'),
(84, 'March', 24, 'Leviticus 18,19', 'Psalms 70,71', 'II Corinthians 13'),
(85, 'March', 25, 'Leviticus 20', 'Psalm 72', 'Galatians 1,2'),
(86, 'March', 26, 'Leviticus 21', 'Psalm 73', 'Galatians 3,4'),
(87, 'March', 27, 'Leviticus 22', 'Psalm 74', 'Galatians 5,6'),
(88, 'March', 28, 'Leviticus 23', 'Psalms 75,76', 'Ephesians 1,2'),
(89, 'March', 29, 'Leviticus 24', 'Psalm 77', 'Ephesians 3'),
(90, 'March', 30, 'Leviticus 25', 'Psalm 78', 'Ephesians 4'),
(91, 'March', 31, 'Leviticus 26', 'Psalm 79', 'Ephesians 5'),
(92, 'April', 1, 'Leviticus 27', 'Psalm 80', 'Ephesians 6'),
(93, 'April', 2, 'Numbers 1', 'Psalm 81', 'Philippians 1,2'),
(94, 'April', 3, 'Numbers 2', 'Psalm 82', 'Philippians 3,4'),
(95, 'April', 4, 'Numbers 3', 'Psalm 83', 'Colossians 1,2'),
(96, 'April', 5, 'Numbers 4', 'Psalm 84', 'Colossians 3,4'),
(97, 'April', 6, 'Numbers 5', 'Psalm 85', 'I Thessalonians 1,2'),
(98, 'April', 7, 'Numbers 6', 'Psalm 86', 'I Thessalonians 3,4'),
(99, 'April', 8, 'Numbers 7', 'Psalm 87', 'I Thessalonians 5'),
(100, 'April', 9, 'Numbers 8,9', 'Psalm 88', 'II Thessalonians 1-3'),
(101, 'April', 10, 'Numbers 10', 'Psalm 89', 'I Timothy 1,2'),
(102, 'April', 11, 'Numbers 11,12', 'Psalm 90', 'I Timothy 3,4'),
(103, 'April', 12, 'Numbers 13', 'Psalms 91,92', 'I Timothy 5,6'),
(104, 'April', 13, 'Numbers 14', 'Psalm 93', 'II Timothy 1,2'),
(105, 'April', 14, 'Numbers 15', 'Psalm 94', 'II Timothy 3,4'),
(106, 'April', 15, 'Numbers 16', 'Psalm 95', 'Titus 1-3'),
(107, 'April', 16, 'Numbers 17,18', 'Psalm 96,97', 'Philemon'),
(108, 'April', 17, 'Numbers 19', 'Psalm 98', 'Luke 1'),
(109, 'April', 18, 'Numbers 20', 'Psalms 99,100', 'Luke 2'),
(110, 'April', 19, 'Numbers 21', 'Psalms 101,102', 'Luke 3'),
(111, 'April', 20, 'Numbers 22', 'Psalm 103', 'Luke 4'),
(112, 'April', 21, 'Numbers 23', 'Psalm 104', 'Luke 5'),
(113, 'April', 22, 'Numbers 24', 'Psalm 105', 'Luke 6'),
(114, 'April', 23, 'Numbers 25', 'Psalm 106', 'Luke 7'),
(115, 'April', 24, 'Numbers 26', 'Psalm 107', 'Luke 8'),
(116, 'April', 25, 'Numbers 27', 'Psalm 108', 'Luke 9'),
(117, 'April', 26, 'Numbers 28', 'Psalm 109', 'Luke 10'),
(118, 'April', 27, 'Numbers 29,30', 'Psalm 110', 'Luke 11'),
(119, 'April', 28, 'Numbers 31', 'Psalm 111', 'Luke 12'),
(120, 'April', 29, 'Numbers 32', 'Psalms 112,113', 'Luke 13,14'),
(121, 'April', 30, 'Numbers 33,34', 'Psalms 114,115', 'Luke 15,16'),
(122, 'May', 1, 'Numbers 35,36', 'Psalm 116', 'Luke 17'),
(123, 'May', 2, 'Deuteronomy 1', 'Psalms 117,118', 'Luke 18'),
(124, 'May', 3, 'Deuteronomy 2', 'Psalm 119:1-24', 'Luke 19'),
(125, 'May', 4, 'Deuteronomy 3', 'Psalm 119: 25-40', 'Luke 20'),
(126, 'May', 5, 'Deuteronomy 4', 'Psalm 119: 41-64', 'Luke 21'),
(127, 'May', 6, 'Deuteronomy 5', 'Psalm 119: 65-80', 'Luke 22'),
(128, 'May', 7, 'Deuteronomy 6', 'Psalm 119: 81-104', 'Luke 23'),
(129, 'May', 8, 'Deuteronomy 7,8', 'Psalm 119: 105-120', 'Luke 24'),
(130, 'May', 9, 'Deuteronomy 9', 'Psalm 119: 121-136', 'Acts 1,2'),
(131, 'May', 10, 'Deuteronomy 10', 'Psalm 119: 137-160', 'Acts 3,4'),
(132, 'May', 11, 'Deuteronomy 11', 'Psalm 119: 161-176', 'Acts 5'),
(133, 'May', 12, 'Deuteronomy 12', 'Psalm 120', 'Acts 6,7'),
(134, 'May', 13, 'Deuteronomy 13,14', 'Psalms 121,122', 'Acts 8'),
(135, 'May', 14, 'Deuteronomy 15,16', 'Psalms 123,124', 'Acts 9'),
(136, 'May', 15, 'Deuteronomy 17,18', 'Psalms 125,126', 'Acts 10'),
(137, 'May', 16, 'Deuteronomy 19,20', 'Psalms 127,128', 'Acts 11,12'),
(138, 'May', 17, 'Deuteronomy 21', 'Psalm 129', 'Acts 13'),
(139, 'May', 18, 'Deuteronomy 22', 'Psalm 130', 'Acts 14,15'),
(140, 'May', 19, 'Deuteronomy 23,24', 'Psalm 131', 'Acts 16'),
(141, 'May', 20, 'Deuteronomy 25', 'Psalm 132', 'Acts 17,18'),
(142, 'May', 21, 'Deuteronomy 26,27', 'Psalm 133', 'Acts 19'),
(143, 'May', 22, 'Deuteronomy 28', 'Psalm 134', 'Acts 20'),
(144, 'May', 23, 'Deuteronomy 29', 'Psalm 135', 'Acts 21,22'),
(145, 'May', 24, 'Deuteronomy 30', 'Psalm 136', 'Acts 23,24'),
(146, 'May', 25, 'Deuteronomy 31', 'Psalm 137', 'Acts 25,26'),
(147, 'May', 26, 'Deuteronomy 32', 'Psalm 138', 'Acts 27'),
(148, 'May', 27, 'Deuteronomy 33,34', 'Psalm 139', 'Acts 28'),
(149, 'May', 28, 'Joshua 1', 'Psalms 140,141', 'John 1'),
(150, 'May', 29, 'Joshua 2', 'Psalms 142,143', 'John 2,3'),
(151, 'May', 30, 'Joshua 3,4', 'Psalm 144', 'John 4'),
(152, 'May', 31, 'Joshua 5', 'Psalms 145,146', 'John 5'),
(153, 'June', 1, 'Joshua 6', 'Psalm 147', 'John 6'),
(154, 'June', 2, 'Joshua 7,8', 'Psalm 148', 'John 7'),
(155, 'June', 3, 'Joshua 9', 'Psalms 149,150', 'John 8'),
(156, 'June', 4, 'Joshua 10', 'Proverbs 1', 'John 9'),
(157, 'June', 5, 'Joshua 11,12', 'Proverbs 2', 'John 10'),
(158, 'June', 6, 'Joshua 13', 'Proverbs 3', 'John 11'),
(159, 'June', 7, 'Joshua 14', 'Proverbs 4', 'John 12'),
(160, 'June', 8, 'Joshua 15', 'Proverbs 5', 'John 13'),
(161, 'June', 9, 'Joshua 16,17', 'Proverbs 6', 'John 14'),
(162, 'June', 10, 'Joshua 18', 'Proverbs 7', 'John 15,16'),
(163, 'June', 11, 'Joshua 19', 'Proverbs 8', 'John 17'),
(164, 'June', 12, 'Joshua 20,21', 'Proverbs 9', 'John 18'),
(165, 'June', 13, 'Joshua 22', 'Proverbs 10', 'John 19'),
(166, 'June', 14, 'Joshua 23', 'Proverbs 11', 'John 20,21'),
(167, 'June', 15, 'Joshua 24', 'Proverbs 12', 'Revelation 1,2'),
(168, 'June', 16, 'Judges 1,2', 'Proverbs 13', 'Revelation 3'),
(169, 'June', 17, 'Judges 3', 'Proverbs 14', 'Revelation 4,5'),
(170, 'June', 18, 'Judges 4,5', 'Proverbs 15', 'Revelation 6'),
(171, 'June', 19, 'Judges 6', 'Proverbs 16', 'Revelation 7,8'),
(172, 'June', 20, 'Judges 7', 'Proverbs 17', 'Revelation 9,10'),
(173, 'June', 21, 'Judges 8', 'Proverbs 18', 'Revelation 11,12'),
(174, 'June', 22, 'Judges 9', 'Proverbs 19', 'Revelation 13'),
(175, 'June', 23, 'Judges 10', 'Proverbs 20', 'Revelation 14,15'),
(176, 'June', 24, 'Judges 11,12', 'Proverbs 21', 'Revelation 16'),
(177, 'June', 25, 'Judges 13,14', 'Proverbs 22', 'Revelation 17'),
(178, 'June', 26, 'Judges 15', 'Proverbs 23', 'Revelation 18'),
(179, 'June', 27, 'Judges 16', 'Proverbs 24', 'Revelation 19'),
(180, 'June', 28, 'Judges 17', 'Proverbs 25', 'Revelation 20'),
(181, 'June', 29, 'Judges 18', 'Proverbs 26', 'Revelation 21'),
(182, 'June', 30, 'Judges 19', 'Proverbs 27', 'Revelation 22'),
(183, 'July', 1, 'Judges 20', 'Proverbs 28', 'Matthew 1,2'),
(184, 'July', 2, 'Judges 21', 'Proverbs 29', 'Matthew 3,4'),
(185, 'July', 3, 'Ruth 1', 'Proverbs 30', 'Matthew 5'),
(186, 'July', 4, 'Ruth 2,3', 'Proverbs 31', 'Matthew 6'),
(187, 'July', 5, 'Ruth 4', 'Ecclesiastes 1,2', 'Matthew 7'),
(188, 'July', 6, 'I Samuel 1', 'Ecclesiastes 3,4', 'Matthew 8'),
(189, 'July', 7, 'I Samuel 2', 'Ecclesiastes 5,6', 'Matthew 9'),
(190, 'July', 8, 'I Samuel 3', 'Ecclesiastes 7', 'Matthew 10'),
(191, 'July', 9, 'I Samuel 4,5', 'Ecclesiastes 8,9', 'Matthew 11'),
(192, 'July', 10, 'I Samuel 6,7', 'Ecclesiastes 10', 'Matthew 12'),
(193, 'July', 11, 'I Samuel 8', 'Ecclesiastes 11,12', 'Matthew 13'),
(194, 'July', 12, 'I Samuel 9', 'Song of Songs 1,2', 'Matthew 14'),
(195, 'July', 13, 'I Samuel 10', 'Song of Songs 3,4', 'Matthew 15'),
(196, 'July', 14, 'I Samuel 11,12', 'Song of Songs 5', 'Matthew 16,17'),
(197, 'July', 15, 'I Samuel 13', 'Song of Songs 6,7', 'Matthew 18,19'),
(198, 'July', 16, 'I Samuel 14', 'Song of Songs 8', 'Matthew 20'),
(199, 'July', 17, 'I Samuel 15', 'Isaiah 1', 'Matthew 21'),
(200, 'July', 18, 'I Samuel 16', 'Isaiah 2,3', 'Matthew 22'),
(201, 'July', 19, 'I Samuel 17', 'Isaiah 4', 'Matthew 23'),
(202, 'July', 20, 'I Samuel 18', 'Isaiah 5', 'Matthew 24'),
(203, 'July', 21, 'I Samuel 19,20', 'Isaiah 6', 'Matthew 25'),
(204, 'July', 22, 'I Samuel 21', 'Isaiah 7', 'Matthew 26'),
(205, 'July', 23, 'I Samuel 22', 'Isaiah 8', 'Matthew 27'),
(206, 'July', 24, 'I Samuel 23', 'Isaiah 9,10', 'Matthew 28'),
(207, 'July', 25, 'I Samuel 24,25', 'Isaiah 11,12', 'Hebrews 1,2'),
(208, 'July', 26, 'I Samuel 26,27', 'Isaiah 13', 'Hebrews 3,4'),
(209, 'July', 27, 'I Samuel 28,29', 'Isaiah 14', 'Hebrews 5,6'),
(210, 'July', 28, 'I Samuel 30,31', 'Isaiah 15,16', 'Hebrews 7'),
(211, 'July', 29, 'II Samuel 1,2', 'Isaiah 17,18', 'Hebrews 8,9'),
(212, 'July', 30, 'II Samuel 3,4', 'Isaiah 19,20', 'Hebrews 10'),
(213, 'July', 31, 'II Samuel 5', 'Isaiah 21,22', 'Hebrews 11'),
(214, 'August', 1, 'II Samuel 6', 'Isaiah 23,24', 'Hebrews 12,13'),
(215, 'August', 2, 'II Samuel 7', 'Isaiah 25,26', 'James 1,2'),
(216, 'August', 3, 'II Samuel 8,9', 'Isaiah 27', 'James 3-5'),
(217, 'August', 4, 'II Samuel 10', 'Isaiah 28', 'I Peter 1,2'),
(218, 'August', 5, 'II Samuel 11,12', 'Isaiah 29', 'I Peter 3'),
(219, 'August', 6, 'II Samuel 13', 'Isaiah 30,31', 'I Peter 4,5'),
(220, 'August', 7, 'II Samuel 14', 'Isaiah 32', 'II Peter 1-3'),
(221, 'August', 8, 'II Samuel 15', 'Isaiah 33', 'I John 1,2'),
(222, 'August', 9, 'II Samuel 16', 'Isaiah 34,35', 'I John 3,4'),
(223, 'August', 10, 'II Samuel 17', 'Isaiah 36,37', 'I John 5'),
(224, 'August', 11, 'II Samuel 18', 'Isaiah 38,39', 'II and III John'),
(225, 'August', 12, 'II Samuel 19', 'Isaiah 40', 'Jude'),
(226, 'August', 13, 'II Samuel 20', 'Isaiah 41', 'Mark 1'),
(227, 'August', 14, 'II Samuel 21', 'Isaiah 42', 'Mark 2,3'),
(228, 'August', 15, 'II Samuel 22', 'Isaiah 43', 'Mark 4'),
(229, 'August', 16, 'II Samuel 23', 'Isaiah 44', 'Mark 5'),
(230, 'August', 17, 'II Samuel 24', 'Isaiah 45', 'Mark 6'),
(231, 'August', 18, 'I Kings 1', 'Isaiah 46,47', 'Mark 7'),
(232, 'August', 19, 'I Kings 2', 'Isaiah 48', 'Mark 8'),
(233, 'August', 20, 'I Kings 3', 'Isaiah 49', 'Mark 9'),
(234, 'August', 21, 'I Kings 4', 'Isaiah 50,51', 'Mark 10'),
(235, 'August', 22, 'I Kings 5', 'Isaiah 52,53', 'Mark 11'),
(236, 'August', 23, 'I Kings 6', 'Isaiah 54', 'Mark 12'),
(237, 'August', 24, 'I Kings 7', 'Isaiah 55', 'Mark 13'),
(238, 'August', 25, 'I Kings 8', 'Isaiah 56', 'Mark 14'),
(239, 'August', 26, 'I Kings 9', 'Isaiah 57', 'Mark 15,16'),
(240, 'August', 27, 'I Kings 10', 'Isaiah 58,59', 'Romans 1'),
(241, 'August', 28, 'I Kings 11', 'Isaiah 60,61', 'Romans 2'),
(242, 'August', 29, 'I Kings 12', 'Isaiah 62', 'Romans 3,4'),
(243, 'August', 30, 'I Kings 13', 'Isaiah 63', 'Romans 5'),
(244, 'August', 31, 'I Kings 14', 'Isaiah 64', 'Romans 6'),
(245, 'September', 1, 'I Kings 15', 'Isaiah 65', 'Romans 7,8'),
(246, 'September', 2, 'I Kings 16', 'Isaiah 66', 'Romans 9,10'),
(247, 'September', 3, 'I Kings 17', 'Jeremiah 1,2', 'Romans 11'),
(248, 'September', 4, 'I Kings 18', 'Jeremiah 3', 'Romans 12,13'),
(249, 'September', 5, 'I Kings 19', 'Jeremiah 4', 'Romans 14,15'),
(250, 'September', 6, 'I Kings 20', 'Jeremiah 5', 'Romans 16'),
(251, 'September', 7, 'I Kings 21', 'Jeremiah 6', 'I Corinthians 1,2'),
(252, 'September', 8, 'I Kings 22', 'Jeremiah 7', 'I Corinthians 3'),
(253, 'September', 9, 'II Kings 1,2', 'Jeremiah 8,9', 'I Corinthians 4'),
(254, 'September', 10, 'II Kings 3', 'Jeremiah 10', 'I Corinthians 5,6'),
(255, 'September', 11, 'II Kings 4', 'Jeremiah 11', 'I Corinthians 7'),
(256, 'September', 12, 'II Kings 5', 'Jeremiah 12,13', 'I Corinthians 8,9'),
(257, 'September', 13, 'II Kings 6', 'Jeremiah 14', 'I Corinthians 10,11'),
(258, 'September', 14, 'II Kings 7', 'Jeremiah 15', 'I Corinthians 12-14'),
(259, 'September', 15, 'II Kings 8', 'Jeremiah 16', 'I Corinthians 15'),
(260, 'September', 16, 'II Kings 9', 'Jeremiah 17', 'I Corinthians 16'),
(261, 'September', 17, 'II Kings 10', 'Jeremiah 18,19', 'II Corinthians 1,2'),
(262, 'September', 18, 'II Kings 11,12', 'Jeremiah 20,21', 'II Corinthians 3'),
(263, 'September', 19, 'II Kings 13', 'Jeremiah 22', 'II Corinthians 4,5'),
(264, 'September', 20, 'II Kings 14', 'Jeremiah 23', 'II Corinthians 6,7'),
(265, 'September', 21, 'II Kings 15', 'Jeremiah 24', 'II Corinthians 8-10'),
(266, 'September', 22, 'II Kings 16', 'Jeremiah 25', 'II Corinthians 11,12'),
(267, 'September', 23, 'II Kings 17', 'Jeremiah 26,27', 'II Corinthians 13'),
(268, 'September', 24, 'II Kings 18,19', 'Jeremiah 28', 'Galatians 1'),
(269, 'September', 25, 'II Kings 20', 'Jeremiah 29,30', 'Galatians 2'),
(270, 'September', 26, 'II Kings 21', 'Jeremiah 31', 'Galatians 3,4'),
(271, 'September', 27, 'II Kings 22', 'Jeremiah 32', 'Galatians 5,6'),
(272, 'September', 28, 'II Kings 23', 'Jeremiah 33', 'Ephesians 1,2'),
(273, 'September', 29, 'II Kings 24,25', 'Jeremiah 34', 'Ephesians 3'),
(274, 'September', 30, 'I Chronicles 1,2', 'Jeremiah 35,36', 'Ephesians 4,5'),
(275, 'October', 1, 'I Chronicles 3', 'Jeremiah 37,38', 'Ephesians 6'),
(276, 'October', 2, 'I Chronicles 4', 'Jeremiah 39', 'Philippians 1,2'),
(277, 'October', 3, 'I Chronicles 5', 'Jeremiah 40,41', 'Philippians 3,4'),
(278, 'October', 4, 'I Chronicles 6', 'Jeremiah 42,43', 'Colossians 1'),
(279, 'October', 5, 'I Chronicles 7', 'Jeremiah 44', 'Colossians 2'),
(280, 'October', 6, 'I Chronicles 8', 'Jeremiah 45,46', 'Colossians 3,4'),
(281, 'October', 7, 'I Chronicles 9', 'Jeremiah 47', 'I Thessalonians 1-3'),
(282, 'October', 8, 'I Chronicles 10', 'Jeremiah 48', 'I Thessalonians 4,5'),
(283, 'October', 9, 'I Chronicles 11', 'Jeremiah 49', 'II Thessalonians 1'),
(284, 'October', 10, 'I Chronicles 12', 'Jeremiah 50', 'II Thessalonians 2,3'),
(285, 'October', 11, 'I Chronicles 13', 'Jeremiah 51', 'I Timothy 1,2'),
(286, 'October', 12, 'I Chronicles 14', 'Jeremiah 52', 'I Timothy 3,4'),
(287, 'October', 13, 'I Chronicles 15', 'Lamentations 1', 'I Timothy 5,6'),
(288, 'October', 14, 'I Chronicles 16', 'Lamentations 2', 'II Timothy 1,2'),
(289, 'October', 15, 'I Chronicles 17', 'Lamentations 3', 'II Timothy 3,4'),
(290, 'October', 16, 'I Chronicles 18', 'Lamentations 4', 'Titus 1-3'),
(291, 'October', 17, 'I Chronicles 19', 'Lamentations 5', 'Philemon'),
(292, 'October', 18, 'I Chronicles 20', 'Ezekiel 1', 'Luke 1'),
(293, 'October', 19, 'I Chronicles 21', 'Ezekiel 2', 'Luke 2'),
(294, 'October', 20, 'I Chronicles 22', 'Ezekiel 3', 'Luke 3'),
(295, 'October', 21, 'I Chronicles 23', 'Ezekiel 4,5', 'Luke 4'),
(296, 'October', 22, 'I Chronicles 24', 'Ezekiel 6,7', 'Luke 5'),
(297, 'October', 23, 'I Chronicles 25', 'Ezekiel 8', 'Luke 6'),
(298, 'October', 24, 'I Chronicles 26', 'Ezekiel 9', 'Luke 7'),
(299, 'October', 25, 'I Chronicles 27', 'Ezekiel 10', 'Luke 8'),
(300, 'October', 26, 'I Chronicles 28', 'Ezekiel 11', 'Luke 9'),
(301, 'October', 27, 'I Chronicles 29', 'Ezekiel 12', 'Luke 10'),
(302, 'October', 28, 'II Chronicles 1', 'Ezekiel 13', 'Luke 11'),
(303, 'October', 29, 'II Chronicles 2', 'Ezekiel 14', 'Luke 12'),
(304, 'October', 30, 'II Chronicles 3', 'Ezekiel 15', 'Luke 13'),
(305, 'October', 31, 'II Chronicles 4', 'Ezekiel 16', 'Luke 14'),
(306, 'November', 1, 'II Chronicles 5', 'Ezekiel 17', 'Luke 15'),
(307, 'November', 2, 'II Chronicles 6', 'Ezekiel 18', 'Luke 16'),
(308, 'November', 3, 'II Chronicles 7', 'Ezekiel 19', 'Luke 17'),
(309, 'November', 4, 'II Chronicles 8', 'Ezekiel 20', 'Luke 18'),
(310, 'November', 5, 'II Chronicles 9', 'Ezekiel 21,22', 'Luke 19'),
(311, 'November', 6, 'II Chronicles 10', 'Ezekiel 23', 'Luke 20'),
(312, 'November', 7, 'II Chronicles 11', 'Ezekiel 24,25', 'Luke 21'),
(313, 'November', 8, 'II Chronicles 12', 'Ezekiel 26', 'Luke 22'),
(314, 'November', 9, 'II Chronicles 13', 'Ezekiel 27', 'Luke 23'),
(315, 'November', 10, 'II Chronicles 14', 'Ezekiel 28,29', 'Luke 24'),
(316, 'November', 11, 'II Chronicles 15', 'Ezekiel 30,31', 'Acts 1,2'),
(317, 'November', 12, 'II Chronicles 16', 'Ezekiel 32', 'Acts 3,4'),
(318, 'November', 13, 'II Chronicles 17', 'Ezekiel 33,34', 'Acts 5'),
(319, 'November', 14, 'II Chronicles 18', 'Ezekiel 35', 'Acts 6,7'),
(320, 'November', 15, 'II Chronicles 19', 'Ezekiel 36', 'Acts 8'),
(321, 'November', 16, 'II Chronicles 20', 'Ezekiel 37,38', 'Acts 9'),
(322, 'November', 17, 'II Chronicles 21', 'Ezekiel 39', 'Acts 10'),
(323, 'November', 18, 'II Chronicles 22', 'Ezekiel 40', 'Acts 11,12'),
(324, 'November', 19, 'II Chronicles 23', 'Ezekiel 41,42', 'Acts 13'),
(325, 'November', 20, 'II Chronicles 24', 'Ezekiel 43', 'Acts 14,15'),
(326, 'November', 21, 'II Chronicles 25', 'Ezekiel 44,45', 'Acts 16'),
(327, 'November', 22, 'II Chronicles 26', 'Ezekiel 46', 'Acts 17,18'),
(328, 'November', 23, 'II Chronicles 27', 'Ezekiel 47,48', 'Acts 19'),
(329, 'November', 24, 'II Chronicles 28', 'Daniel 1,2', 'Acts 20'),
(330, 'November', 25, 'II Chronicles 29', 'Daniel 3,4', 'Acts 21,22'),
(331, 'November', 26, 'II Chronicles 30', 'Daniel 5,6', 'Acts 23,24'),
(332, 'November', 27, 'II Chronicles 31', 'Daniel 7,8', 'Acts 25'),
(333, 'November', 28, 'II Chronicles 32', 'Daniel 9,10', 'Acts 26'),
(334, 'November', 29, 'II Chronicles 33', 'Daniel 11,12', 'Acts 27'),
(335, 'November', 30, 'II Chronicles 34', 'Hosea 1,2', 'Acts 28'),
(336, 'December', 1, 'II Chronicles 35', 'Hosea 3-5', 'John 1'),
(337, 'December', 2, 'II Chronicles 36', 'Hosea 6-8', 'John 2'),
(338, 'December', 3, 'Ezra 1', 'Hosea 9,10', 'John 3'),
(339, 'December', 4, 'Ezra 2', 'Hosea 11', 'John 4'),
(340, 'December', 5, 'Ezra 3', 'Hosea 12-14', 'John 5'),
(341, 'December', 6, 'Ezra 4', 'Joel 1,2', 'John 6'),
(342, 'December', 7, 'Ezra 5', 'Joel 3', 'John 7'),
(343, 'December', 8, 'Ezra 6', 'Amos 1-3', 'John 8'),
(344, 'December', 9, 'Ezra 7', 'Amos 4,5', 'John 9'),
(345, 'December', 10, 'Ezra 8', 'Amos 6,7', 'John 10'),
(346, 'December', 11, 'Ezra 9', 'Amos 8,9', 'John 11'),
(347, 'December', 12, 'Ezra 10', 'Obadiah', 'John 12'),
(348, 'December', 13, 'Nehemiah 1', 'Jonah 1,2', 'John 13'),
(349, 'December', 14, 'Nehemiah 2', 'Jonah 3,4', 'John 14,15'),
(350, 'December', 15, 'Nehemiah 3', 'Micah 1,2', 'John 16'),
(351, 'December', 16, 'Nehemiah 4', 'Micah 3,4', 'John 17'),
(352, 'December', 17, 'Nehemiah 5', 'Micah 5-7', 'John 18'),
(353, 'December', 18, 'Nehemiah 6', 'Nahum 1-3', 'John 19'),
(354, 'December', 19, 'Nehemiah 7', 'Habakkuk 1-3', 'John 20'),
(355, 'December', 20, 'Nehemiah 8', 'Zephaniah 1-3', 'John 21'),
(356, 'December', 21, 'Nehemiah 9', 'Haggai 1,2', 'Revelation 1,2'),
(357, 'December', 22, 'Nehemiah 10', 'Zechariah 1', 'Revelation 3,4'),
(358, 'December', 23, 'Nehemiah 11', 'Zechariah 2,3', 'Revelation 5,6'),
(359, 'December', 24, 'Nehemiah 12', 'Zechariah 4,5', 'Revelation 7,8'),
(360, 'December', 25, 'Nehemiah 13', 'Zechariah 6,7', 'Revelation 9,10'),
(361, 'December', 26, 'Esther 1', 'Zechariah 8', 'Revelation 11,12'),
(362, 'December', 27, 'Esther 2', 'Zechariah 9-11', 'Revelation 13,14'),
(363, 'December', 28, 'Esther 3,4', 'Zechariah 12,13', 'Revelation 15,16'),
(364, 'December', 29, 'Esther 5,6', ' Zechariah 14', 'Revelation 17,18'),
(365, 'December', 30, 'Esther 7,8', 'Malachi 1,2', 'Revelation 19,20'),
(366, 'December', 31, 'Esther 9,10', 'Malachi 3,4', 'Revelation 21,22');
