-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2022 at 06:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlclassroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` varchar(35) NOT NULL,
  `Apass` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `Apass`) VALUES
('admin', 'admin'),
('williams', 'williams');

-- --------------------------------------------------------

--
-- Table structure for table `examans`
--

CREATE TABLE `examans` (
  `EAnsID` int(50) NOT NULL,
  `ExamID` int(10) NOT NULL,
  `Senrl` varchar(50) NOT NULL,
  `Sname` varchar(50) NOT NULL,
  `Ans1` mediumtext NOT NULL,
  `Ans2` mediumtext NOT NULL,
  `Ans3` mediumtext NOT NULL,
  `Ans4` mediumtext NOT NULL,
  `Ans5` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examans`
--

INSERT INTO `examans` (`EAnsID`, `ExamID`, `Senrl`, `Sname`, `Ans1`, `Ans2`, `Ans3`, `Ans4`, `Ans5`) VALUES
(6, 12, '146891650', 'Robert Huffman', 'php script.php', 'Using special tags <?= and ?>', 'PHP 5 presents many additional OOP features', 'Final class means that this class cannot be extended and a final method cannot be overridden.', 'GD library'),
(7, 13, '146891654', 'John Greenwood', 'using &copy; or &#169;', 'No, we can use hyperlinks on text and images both.', 'A style sheet is used to build a consistent, transportable, and well-designed style template. It describes the look and formatting of a document written in markup language.', 'Yes, by using <font color =\"color\"> </font> for the specific texts.', 'HTML elements with no content are called empty elements.'),
(8, 14, '146891658', 'Francisca Ashley', 'Demo Answer 1', 'Demo Answer 2', 'Demo Answer 3', 'Demo Answer 4', 'Demo Answer 5'),
(9, 12, '146891650', 'Robert Huffman', 'php script.php', 'using a special tag <?= and ?>', 'ver5 has many additional OOP features', 'meaning class cannot be extended and a final method cannot be overridden', 'GD library');

-- --------------------------------------------------------

--
-- Table structure for table `examdetails`
--

CREATE TABLE `examdetails` (
  `ExamID` int(50) NOT NULL,
  `ExamName` varchar(50) NOT NULL,
  `Q1` varchar(10000) NOT NULL,
  `Q2` varchar(10000) NOT NULL,
  `Q3` varchar(10000) NOT NULL,
  `Q4` varchar(10000) NOT NULL,
  `Q5` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examdetails`
--

INSERT INTO `examdetails` (`ExamID`, `ExamName`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`) VALUES
(12, 'PHP', 'How do you execute a PHP script from the command line?', 'How can we display the output directly to the browser?', 'What is the main difference between PHP 4 and PHP 5?', 'What is the meaning of a final class and a final method?', 'What is needed to be able to use image function?'),
(13, 'HTML', 'How to insert a copyright symbol on a browser page?', 'Does a hyperlink only apply to text?', 'What is a style sheet?', 'Can you create a multi-colored text on a web page?', 'What are empty elements?'),
(14, 'jQuery', 'Which built-in method returns the length of the string?', 'Which jQuery selector selects element with the given element id some-id?', 'Which jQuery method remove all or the specified class(es) from the set of matched elements?', 'Which jQuery method removes elements matching the specified selector from the set of matched elements?', 'Which jQuery method gets a set of elements containing all of the unique immediate children of each of the matched set of elements?'),
(15, 'Demo Assessment', 'Q1 Demo', 'Q2 Demo', 'Q3 Demo', 'Q4 Demo', 'Q5 Demo');

-- --------------------------------------------------------

--
-- Table structure for table `facutlytable`
--

CREATE TABLE `facutlytable` (
  `FID` int(10) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `JDate` date NOT NULL,
  `City` varchar(10) NOT NULL,
  `Pass` varchar(10) NOT NULL,
  `PhNo` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facutlytable`
--

INSERT INTO `facutlytable` (`FID`, `FName`, `FaName`, `Addrs`, `Gender`, `JDate`, `City`, `Pass`, `PhNo`) VALUES
(101, 'Robert Meadows', 'Stephen M Grower', '4021  Bell Street', 'Male', '2010-09-23', 'New York', '101010', 7454545850),
(102, 'Floyd Foster', 'James R Foster', '4839  Broad Street', 'Male', '2010-08-11', 'Birmingham', '101010', 7014569696),
(103, 'Heather Truong', 'Robert Truong', '1508  Davis Street', 'Female', '2015-12-03', 'Augusta', '101010', 7354541000),
(104, 'Leona Bledsoe', 'Mackie Bledsoe', '45  Carolyns Circle', 'Female', '2017-07-19', 'Pixley', '101010', 7025554700),
(106, 'Rebecca Burkett', 'Spader Burket', '1109  Clifford Street', 'Female', '2019-01-23', 'Oakland', '101010', 7014786969),
(107, 'Nicholas Kiley', 'Dwayne Kiley', '4276 McDowell Street', 'Male', '2020-12-02', 'Nashville', '101010', 7023698503),
(108, 'William G Nicolas', 'Johnny G Nicolas', '3875 Timbercrest Road', 'Male', '2021-05-11', 'Juneau', '101010', 7413693330);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GuEid` varchar(35) NOT NULL,
  `Gname` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`GuEid`, `Gname`) VALUES
('guestd@gmail.com', 'Demo Name Guest'),
('avilakr@gmail.com', 'Karla Avila'),
('patrickla@gmail.com', 'Patrick M Larios\n'),
('shannonrgmu@gmail.com', 'Shannon R Hang\n');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `Query` text NOT NULL,
  `Ans` text NOT NULL,
  `Eid` varchar(35) NOT NULL,
  `Qid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`Query`, `Ans`, `Eid`, `Qid`) VALUES
('							Which built-in method returns the characters in a string beginning at the specified location? ', '													substr()', 'robert@gmail.com', 15),
('							How can we automatically escape incoming data? ', '												We have to enable the Magic quotes entry in the configuration file of PHP.	', 'greenwood@gmail.com', 16),
('							What does the function get_magic_quotes_gpc() means? ', '												The function get_magic_quotes_gpc() tells us whether the magic quotes is switched on or no.	', 'greenwood@gmail.com', 17),
('							What does accessing a class via :: means? ', '									:: is used to access static methods that do not require object initialization.				', 'kathy@gmail.com', 18),
('							What is jQuery UI? ', '									A set of user interface interactions, effects, widgets, and themes built on top of the jQuery JavaScript Library.				', 'robert@gmail.com', 20),
('demo test for guest query', '', 'guestd@gmail.com', 21);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `RsID` bigint(20) NOT NULL,
  `Eno` varchar(20) NOT NULL,
  `Ex_ID` int(10) NOT NULL,
  `Marks` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`RsID`, `Eno`, `Ex_ID`, `Marks`) VALUES
(2384, '146891650', 12, 'Pass'),
(2385, '146891654', 13, 'Pass'),
(2386, '146891650', 12, 'Pass'),
(2387, '146891658', 14, 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `studenttable`
--

CREATE TABLE `studenttable` (
  `Eno` bigint(20) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `PhNo` bigint(10) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Eid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttable`
--

INSERT INTO `studenttable` (`Eno`, `FName`, `LName`, `FaName`, `Addrs`, `Gender`, `Course`, `DOB`, `PhNo`, `Pass`, `Eid`) VALUES
(146891650, 'Robert', 'Huffman', 'Jason Huffman', '220  Cardinal Lane', 'Male', 'BIT', '1996-07-16', 7010101250, 'password', 'robert@gmail.com'),
(146891651, 'Martin', 'Huynh', 'Anthony Huynh', '3936  Brighton Circle Road', 'Male', 'MIT', '1996-08-05', 7023658960, 'password', 'martin@gmail.com'),
(146891652, 'June', 'Barker', 'Peter Barker', '4871  Romano Street', 'Female', 'BIT', '1996-02-10', 7410000010, 'password', 'barker@gmail.com'),
(146891654, 'John', 'Greenwood', 'Thomas M Greenwood', '1495  Wilmar Farm Road', 'Male', 'BIT', '1996-07-12', 7013696365, 'password', 'greenwood@gmail.com'),
(146891655, 'Kathy', 'Dales', 'Stewart Dales', '1318  Hilltop Street', 'Female', 'MIT', '1993-11-03', 7014563320, 'password', 'kathy@gmail.com'),
(146891656, 'Robb', 'Caldwell', 'James Caldwell', '3590  White River Way', 'Male', 'BIT', '1997-04-01', 7036580002, 'password', 'robb@gmail.com'),
(146891657, 'Christine', 'Meadow', 'Johnny M Meadow', '662  Frederick Street', 'Female', 'BIT', '1995-08-25', 70258666660, 'password', 'christine@gmail.com'),
(146891658, 'Francisca', 'Ashley', 'George Ashley', '3828  Pine Garden Lane', 'Female', 'BIT', '1994-11-03', 7014524580, 'password', 'ashley@gmail.com'),
(146891659, 'Jason', 'Robinson', 'Mark L Robinson', '4916  Melm Street', 'Male', 'BIT', '1997-11-13', 7023699630, 'password', 'json@gmail.com'),
(146891662, 'Liam', 'Moore', 'Stephen Moore', '2587 Ralph Street', 'Male', 'BIT', '1996-02-12', 7410002587, 'password', 'liamoore@gmail.com'),
(146891663, 'Rachel', 'Rufus', 'Jordan Rufus', '3898 Mulberry Lane', 'Female', 'BIT', '1998-11-01', 7014445836, 'password', 'rachel@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `V_id` int(10) NOT NULL,
  `V_Title` varchar(255) NOT NULL,
  `V_Url` longtext NOT NULL,
  `V_Remarks` longtext NOT NULL,
  `Course Difficulty` varchar(100) NOT NULL,
  `Prerequisites` varchar(255) NOT NULL,
  `php` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table is used to store videos info.';

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`V_id`, `V_Title`, `V_Url`, `V_Remarks`, `Course Difficulty`, `Prerequisites`, `php`) VALUES
(1, 'PHP Sessions', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3CS-eQdcMLU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to Start a Session in PHP | PHP Tutorial | Learn PHP Programming | PHP for Beginners. Today we will learn about sessions in debt so we know how to create and destroy these sessions.', 'hard', 'html,css,soodi', 'php.php'),
(3, 'Multi User Role Based Login PHP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-8q3GLkr9Ts\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'This is a complete video demonstrating multi user role based login form using Bootstrap 5, PHP, MySQL', 'hard', 'nomore sooodi', ''),
(4, 'CSS Grid ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HgwCeNVPlo0?rel=0&amp;showinfo=0\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'How to create website layouts using CSS grid', 'easy', 'jai raju sir', ''),
(5, 'JQuery', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BWXggB-T1jQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'JQuery Tutorial:\r\nQuery is a cross-platform JavaScript library designed to simplify the client-side scripting of HTML. It is free, open-source software using the permissive MIT License.', 'medium', 'jai ari sir', ''),
(6, 'JSON - Full Crash Course', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GpOO5iKzOmY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'You will learn:- what JSON is, why JSON is important, what JSON is used for, the syntax of JSON, and see multiple examples of JSON. ', 'hard', 'jai akhila mam', ''),
(8, 'MongoDB Crash Course', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-56x56UppqQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'This video will go over MongoDB, which is a popular NoSQL database.', 'hard', 'jai crcs dpt', ''),
(34, '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `examans`
--
ALTER TABLE `examans`
  ADD PRIMARY KEY (`EAnsID`);

--
-- Indexes for table `examdetails`
--
ALTER TABLE `examdetails`
  ADD PRIMARY KEY (`ExamID`),
  ADD UNIQUE KEY `ExamName` (`ExamName`);

--
-- Indexes for table `facutlytable`
--
ALTER TABLE `facutlytable`
  ADD PRIMARY KEY (`FID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`Gname`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`RsID`);

--
-- Indexes for table `studenttable`
--
ALTER TABLE `studenttable`
  ADD PRIMARY KEY (`Eno`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`V_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examans`
--
ALTER TABLE `examans`
  MODIFY `EAnsID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `examdetails`
--
ALTER TABLE `examdetails`
  MODIFY `ExamID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `facutlytable`
--
ALTER TABLE `facutlytable`
  MODIFY `FID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `RsID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2388;

--
-- AUTO_INCREMENT for table `studenttable`
--
ALTER TABLE `studenttable`
  MODIFY `Eno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146891664;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `V_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
