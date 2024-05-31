-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2018 at 07:56 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `att`
--

CREATE TABLE `att` (
  `subID` varchar(10) DEFAULT NULL,
  `usn` varchar(20) DEFAULT NULL,
  `CA` int(11) DEFAULT NULL,
  `TC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `att`
--

INSERT INTO `att` (`subID`, `usn`, `CA`, `TC`) VALUES
('15cs51', '15cs007', 20, 25),
('15cs52', '15cs007', 19, 25),
('15cs53', '15cs007', 21, 25),
('15cs54', '15cs007', 22, 26),
('15cs55', '15cs007', 22, 22),
('15cs56', '15cs007', 22, 23),
('15cs56', '15cs022', 20, 23),
('15cs55', '15cs022', 20, 22),
('15cs54', '15cs022', 20, 26),
('15cs53', '15cs022', 20, 25),
('15cs52', '15cs022', 20, 25),
('15cs51', '15cs022', 20, 25),
('15cs71', '15cs055', 20, 24),
('15cs72', '15cs055', 19, 21),
('15cs73', '15cs055', 21, 22),
('15cs74', '15cs055', 21, 25),
('15cs75', '15cs055', 10, 24),
('15cs76', '15cs055', 23, 24),
('15cs76', '15cs058', 19, 24),
('15cs75', '15cs058', 22, 24),
('15cs74', '15cs058', 22, 25),
('15cs73', '15cs058', 22, 22),
('15cs72', '15cs058', 18, 21),
('15cs71', '15cs058', 20, 24),
('15csl77', '15cs055', 5, 7),
('15csl78', '15cs055', 6, 7),
('15csl78', '15cs058', 5, 7),
('15csl77', '15cs058', 7, 7),
('15csl57', '15cs007', 4, 7),
('15csl58', '15cs007', 6, 7),
('15csl58', '15cs022', 5, 7),
('15csl57', '15cs022', 6, 7),
('15cs51', '15cs017', 20, 25),
('15cs51', '15cs029', 24, 25),
('15cs51', '15cs008', 22, 25),
('15cs52', '15cs008', 21, 25),
('15cs52', '15cs017', 21, 25),
('15cs52', '15cs029', 19, 25),
('15cs53', '15cs029', 18, 25),
('15cs53', '15cs008', 20, 25),
('15cs53', '15cs017', 23, 25),
('15cs54', '15cs017', 23, 26),
('15cs54', '15cs008', 23, 26),
('15cs54', '15cs029', 24, 26),
('15cs55', '15cs029', 21, 22),
('15cs55', '15cs017', 17, 22),
('15cs55', '15cs008', 19, 22),
('15cs56', '15cs008', 19, 23),
('15cs56', '15cs017', 20, 23),
('15cs56', '15cs029', 23, 23),
('15csl57', '15cs029', 6, 7),
('15csl57', '15cs017', 5, 7),
('15csl57', '15cs008', 4, 7),
('15csl58', '15cs008', 7, 7),
('15csl58', '15cs017', 6, 7),
('15csl58', '15cs029', 5, 7),
('15cs71', '15cs155', 24, 24),
('15cs71', '15cs144', 22, 24),
('15cs71', '15cs060', 22, 24),
('15cs72', '15cs060', 15, 21),
('15cs72', '15cs144', 17, 21),
('15cs72', '15cs155', 20, 21),
('15cs73', '15cs155', 20, 22),
('15cs73', '15cs144', 21, 22),
('15cs73', '15cs060', 21, 22),
('15cs74', '15cs060', 24, 25),
('15cs74', '15cs144', 23, 25),
('15cs74', '15cs155', 20, 25),
('15cs75', '15cs155', 20, 24),
('15cs75', '15cs144', 23, 24),
('15cs75', '15cs060', 22, 24),
('15cs76', '15cs060', 22, 24),
('15cs76', '15cs144', 22, 24),
('15cs76', '15cs155', 20, 24),
('15csl77', '15cs155', 7, 7),
('15csl77', '15cs144', 3, 7),
('15csl77', '15cs060', 6, 7),
('15csl78', '15cs060', 6, 7),
('15csl78', '15cs155', 5, 7),
('15csl78', '15cs144', 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `classID` int(11) NOT NULL,
  `class_name` varchar(10) DEFAULT NULL,
  `timeTable` varchar(100) DEFAULT NULL,
  `ctID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`classID`, `class_name`, `timeTable`, `ctID`) VALUES
(1, '6A', 'timetable2.jpg', '4'),
(2, '7A', 'timetable1.jpg', '7');

-- --------------------------------------------------------

--
-- Table structure for table `classsub`
--

CREATE TABLE `classsub` (
  `classID` int(11) DEFAULT NULL,
  `teacherID` varchar(20) DEFAULT NULL,
  `subID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classsub`
--

INSERT INTO `classsub` (`classID`, `teacherID`, `subID`) VALUES
(1, '1', '15cs51'),
(1, '5', '15cs52'),
(1, '2', '15cs53'),
(1, '7', '15cs54'),
(1, '8', '15cs55'),
(1, '6', '15cs56'),
(2, '4', '15cs71'),
(2, '1', '15cs72'),
(2, '7', '15cs73'),
(2, '3', '15cs74'),
(2, '2', '15cs75'),
(2, '6', '15cs76'),
(2, '3', '15csl77'),
(2, '2', '15csl78'),
(1, '1', '15csl57'),
(1, '5', '15csl58');

-- --------------------------------------------------------

--
-- Table structure for table `iamarks`
--

CREATE TABLE `iamarks` (
  `subID` varchar(10) DEFAULT NULL,
  `usn` varchar(20) DEFAULT NULL,
  `iat1` int(3) DEFAULT '0',
  `iat2` int(3) DEFAULT '0',
  `iat3` int(3) DEFAULT '0',
  `assigment` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iamarks`
--

INSERT INTO `iamarks` (`subID`, `usn`, `iat1`, `iat2`, `iat3`, `assigment`) VALUES
('15cs71', '15cs055', 32, 17, 0, 4),
('15cs72', '15cs055', 40, 0, 0, 5),
('15cs73', '15cs055', 35, 31, 0, 5),
('15cs74', '15cs055', 25, 12, 0, 4),
('15cs75', '15cs055', 26, 13, 0, 4),
('15cs76', '15cs055', 0, 12, 0, 4),
('15cs76', '15cs058', 50, 0, 0, 4),
('15cs75', '15cs058', 41, 40, 0, 5),
('15cs74', '15cs058', 42, 37, 0, 5),
('15cs73', '15cs058', 32, 35, 0, 4),
('15cs72', '15cs058', 39, 34, 0, 5),
('15cs71', '15cs058', 22, 40, 0, 5),
('15cs51', '15cs007', 20, 17, 0, 3),
('15cs52', '15cs007', 35, 22, 0, 4),
('15cs53', '15cs007', 27, 27, 0, 4),
('15cs54', '15cs007', 31, 35, 0, 5),
('15cs55', '15cs007', 0, 35, 0, 5),
('15cs56', '15cs007', 22, 17, 0, 3),
('15cs56', '15cs022', 30, 17, 0, 4),
('15cs55', '15cs022', 33, 27, 0, 4),
('15cs54', '15cs022', 40, 0, 0, 3),
('15cs53', '15cs022', 32, 27, 0, 5),
('15cs52', '15cs022', 50, 0, 0, 4),
('15cs51', '15cs022', 22, 27, 0, 3),
('15cs71', '15cs144', 27, 42, 0, 4),
('15cs71', '15cs155', 10, 22, 0, 4),
('15cs71', '15cs060', 17, 32, 0, 5),
('15cs72', '15cs060', 22, 33, 0, 5),
('15cs72', '15cs144', 31, 33, 0, 4),
('15cs72', '15cs155', 11, 43, 0, 5),
('15cs73', '15cs155', 40, 29, 0, 3),
('15cs73', '15cs144', 27, 29, 0, 4),
('15cs73', '15cs060', 31, 32, 0, 4),
('15cs74', '15cs060', 42, 47, 0, 4),
('15cs74', '15cs144', 45, 38, 0, 5),
('15cs74', '15cs155', 41, 49, 0, 5),
('15cs75', '15cs155', 26, 21, 0, 5),
('15cs75', '15cs144', 25, 25, 0, 3),
('15cs75', '15cs060', 27, 31, 0, 4),
('15cs76', '15cs060', 27, 31, 0, 5),
('15cs76', '15cs144', 14, 40, 0, 3),
('15cs76', '15cs155', 18, 32, 0, 4),
('15cs56', '15cs008', 18, 32, 0, 4),
('15cs56', '15cs017', 21, 7, 0, 3),
('15cs56', '15cs029', 22, 27, 0, 5),
('15cs55', '15cs008', 22, 27, 0, 5),
('15cs55', '15cs017', 21, 7, 0, 3),
('15cs55', '15cs029', 27, 31, 0, 5),
('15cs54', '15cs008', 14, 40, 0, 3),
('15cs54', '15cs017', 42, 47, 0, 4),
('15cs54', '15cs029', 21, 7, 0, 3),
('15cs53', '15cs008', 22, 33, 0, 5),
('15cs53', '15cs017', 45, 38, 0, 5),
('15cs53', '15cs029', 42, 47, 0, 4),
('15cs52', '15cs008', 27, 29, 0, 4),
('15cs52', '15cs017', 18, 32, 0, 4),
('15cs52', '15cs029', 27, 31, 0, 4),
('15cs51', '15cs008', 10, 22, 0, 4),
('15cs52', '15cs017', 25, 25, 0, 3),
('15cs51', '15cs017', 31, 47, 0, 4),
('15cs51', '15cs029', 17, 32, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `usn` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phno` int(10) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `classID` int(3) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `bloodGroup` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `nation` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`usn`, `name`, `phno`, `pass`, `classID`, `email`, `bloodGroup`, `DOB`, `gender`, `nation`) VALUES
('15cs007', 'Abhishek S', 2147483647, '12345', 1, 'abks15cs@cmrit.ac.in', 'ab -ve', '1997-05-11', 'Male', 'Indian'),
('15cs008', 'Aditi D Bhat', 989764447, '12345', 1, 'adbh15cs@cmrit.ac.in', 'a -ve', '1997-09-12', 'Female', 'Indian'),
('15cs017', 'Akhil A', 989765647, '12345', 1, 'akah15cs@cmrit.ac.in', 'b +ve', '1997-06-30', 'Male', 'Indian'),
('15cs022', 'Anirudh Nair', 2147483647, '12345', 1, 'anna15cs@cmrit.ac.in', 'a +ve', '1997-04-29', 'Male', 'Indian'),
('15cs029', 'Anuram Hari', 989765647, '12345', 1, 'anha15cs@cmrit.ac.in', 'a +ve', '1997-04-03', 'Male', 'Indian'),
('15cs055', 'Dhanush Kumar', 2147483647, '12345', 2, 'dhku15cs@cmrit.ac.in', 'o -ve', '1998-04-19', 'Male', 'Indian'),
('15cs058', 'Divya T', 2147483647, '12345', 2, 'divt15cs@cmrit.ac.in', 'o -ve', '1997-08-29', 'Female', 'Indian'),
('15cs060', 'Rakshith G', 812764447, '12345', 2, 'rakg15cs@cmrit.ac.in', 'o +ve', '1997-09-12', 'Male', 'Indian'),
('15cs144', 'Shreevathsa S', 879764447, '12345', 2, 'shsc15cs@cmrit.ac.in', 'a -ve', '1997-04-21', 'Male', 'Indian'),
('15cs155', 'Shreelakshmi', 779764447, '12345', 2, 'shra15cs@cmrit.ac.in', 'a -ve', '1997-09-21', 'Female', 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subID` varchar(10) NOT NULL,
  `subName` varchar(20) DEFAULT NULL,
  `classID` int(11) DEFAULT NULL,
  `syllabus` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subID`, `subName`, `classID`, `syllabus`) VALUES
('15cs51', 'DBMS', 1, 'Module - 1 Teaching\nHours\nIntroduction to Databases: Introduction, Characteristics of database approach,\nAdvantages of using the DBMS approach, History of database applications.\nOverview of Database Languages and Architectures: Data Models, Schemas,\nand Instances. Three schema architecture and data independence, database\nlanguages, and interfaces, The Database System environment. \nModule - 2\nRelational Model: Relational Model Concepts, Relational Model Constraints\nand relational database schemas, Update operations, transactions, and dealing\nwith constraint violations. Relational Algebra: Unary and Binary relational\noperations, additional relational operations (aggregate, grouping, etc.) Examples\nof Queries in relational algebra. '),
('15cs52', 'CN', 1, 'Module - 1 Teaching\nHours\nApplication Layer: Principles of Network Applications: Network Application\nArchitectures, Processes Communicating, Transport Services Available to\nApplications, Transport Services Provided by the Internet, Application-Layer\nProtocols. The Web and HTTP: Overview of HTTP, Non-persistent and\nPersistent Connections.\nModule - 2\nTransport Layer : Introduction and Transport-Layer Services: Relationship\nBetween Transport and Network Layers, Overview of the Transport Layer in the\nInternet, Multiplexing and Demultiplexing: Connectionless Transport: UDP,UDP\nSegment Structure, UDP Checksum, Principles of Reliable Data Transfer:\nBuilding a Reliable Data Transfer Protocol, Pipelined Reliable Data Transfer\nProtocols, Go-Back-N'),
('15cs53', 'MP', 1, 'Module - 1 Teaching\nHours\nIntroduction - Meaning, nature and characteristics of management, scope and\nFunctional areas of management, goals of management, levels of management,\nbrief overview of evolution of management theories,. Planning- Nature,\nimportance, types of plans, steps in planning, Organizing- nature and purpose,\ntypes of Organization, Staffing- meaning, process of recruitment and selection\n10 Hours\nModule - 2\nDirecting and controlling- meaning and nature of directing, leadership styles,\nmotivation Theories, Communication- Meaning and importance, Coordinationmeaning\nand importance, Controlling- meaning, steps in controlling, methods of\nestablishing control.\n'),
('15cs54', 'JAVA', 1, 'Module - 1 \nEnumerations, Autoboxing and Annotations(metadata): Enumerations,\nEnumeration fundamentals, the values() and valueOf() Methods, java\nenumerations are class types, enumerations Inherits Enum, example, type\nwrappers, Autoboxing, Autoboxing and Methods, Autoboxing/Unboxing occurs\nin Expressions, Autoboxing/Unboxing\nModule - 2\nThe collections and Framework: Collections Overview, Recent Changes to\nCollections, The Collection Interfaces, The Collection Classes, Accessing a\ncollection Via an Iterator, Storing User Defined Classes in Collections, The\nRandom Access Interface, Working With Maps, Comparators, The Collection\nAlgorithms, Why Generic Collections?, The legacy Classes and Interfaces,\nParting Thoughts on Collections.'),
('15cs55', 'DC', 1, 'Module - 1 \nWhy study the Theory of Computation, Languages and Strings: Strings,\nLanguages. A Language Hierarchy, Computation, Finite State Machines\n(FSM): Deterministic FSM, Regular languages, Designing FSM,\nNondeterministic FSMs, From FSMs to Operational Systems, Simulators for\nFSMs, Minimizing FSMs, Canonical form of Regular languages, Finite State\nTransducers, Bidirectional Transducers. \nModule - 2\nRegular Expressions (RE): what is a RE?, Kleene?s theorem, Applications of\nREs, Manipulating and Simplifying REs. Regular Grammars: Definition,\nRegular Grammars and Regular languages. Regular Languages (RL) and Nonregular\nLanguages: How many RLs, To show that a language is regular, Closure\nproperties of RLs, to show some languages are not RLs. '),
('15cs56', 'ROBOTICS', 1, 'Module - 1 Teaching\nHours\nAnalysis Techniques: Growth functions, Recurrences and solution of recurrence\nequations; Amortized analysis: Aggregate, Accounting, and Potential methods,\nString Matching Algorithms: Naive Algorithm; Robin-Karp Algorithm, String\nmatching with Finite Automata, Knuth-Morris-Pratt and Boyer-Moore\nAlgorithms\n8 Hours\nModule - 2\nNumber Theoretic Algorithms: Elementary notions, GCD, Modular arithmetic,\nSolving modular linear equations, The Chinese remainder theorem, Powers of an\nelement RSA Cryptosystem, Primality testing, Integer factorization, - Huffman\nCodes, Polynomials. FFT-Huffman codes: Concepts, construction, Proof\ncorrectness of Huffman\'s algorithm; Representation of polynomials \n'),
('15cs71', 'SAN', 2, 'Module - 1 \nStorage System Introduction to Information Storage: Evolution of Storage\nArchitecture, Data Center Infrastructure, Virtualization and Cloud Computing.\nData Center Environment: Application, Host (Compute), Connectivity, Storage.\nData Protection: RAID: RAID Implementation Methods, RAID Techniques,\nRAID Levels.\nModule - 2\nStorage Networking Technologies Fibre Channel Storage Area Networks:\nComponents of FC SAN, FC connectivity, Fibre Channel Architecture, Zoning,\nFC SAN Topologies, Virtualization in SAN. IP SAN and FCoE: iSCSI, FCIP,\nFCoE. Network Attached Storage.'),
('15cs72', 'CC', 2, 'Module - 1 \nIntroduction ,Cloud Computing at a Glance, The Vision of Cloud Computing,\nDefining a Cloud, A Closer Look, Cloud Computing Reference Model,\nCharacteristics and Benefits, Challenges Ahead, Historical Developments,\nDistributed Systems, Virtualization, Web 2.0, Service-Oriented Computing,\nUtility-Oriented Computing, Building Cloud Computing Environments,\nApplication Development.\nModule - 2\nCloud Computing Architecture, Introduction, Cloud Reference Model,\nArchitecture, Infrastructure / Hardware as a Service, Platform as a Service,\nSoftware as a Service, Types of Clouds, Public Clouds, Private Clouds, Hybrid\nClouds, Community Clouds, Economics of the Cloud, Open Challenges, Cloud\nDefinition.'),
('15cs73', 'SEC', 2, 'Module - 1 \nIntroduction to soft computing: ANN, FS,GA, SI, ES, Comparing among\nintelligent systems\nANN: introduction, biological inspiration, BNN&ANN, classification, first\nGeneration NN, perceptron, illustrative problems \nModule - 2\nAdaline, Medaline, ANN: (2nd generation), introduction, BPN, KNN,HNN,\nBAM, RBF,SVM and illustrative problems'),
('15cs74', 'WEB', 2, 'Module - 1 \nIntroduction to HTML, What is HTML and Where did it come from?, HTML\nSyntax, Semantic Markup, Structure of HTML Documents, Quick Tour of\nHTML Elements, HTML5 Semantic Structure Elements, Introduction to CSS,\nWhat is CSS, CSS Syntax, Location of Styles, Selectors, The Cascade: How\nStyles Interact, The Box Model, CSS Text Styling.\nModule - 2\nHTML Tables and Forms, Introducing Tables, Styling Tables, Introducing\nForms, Form Control Elements, Table and Form Accessibility, Microformats,\nAdvanced CSS: Layout, Normal Flow, Positioning Elements, Floating Elements,\nConstructing Multicolumn Layouts, Approaches to CSS Layout, Responsive\nDesign, CSS Frameworks. '),
('15cs75', 'ML', 2, 'Module - 1 \nIntroduction: Well posed learning problems, Designing a Learning system,\nPerspective and Issues in Machine Learning.\nConcept Learning: Concept learning task, Concept learning as search, Find-S\nalgorithm, Version space, Candidate Elimination algorithm, Inductive Bias. \nIntroduction: Well posed learning problems, Designing a Learning system,\nPerspective and Issues in Machine Learning.\nConcept Learning: Concept learning task, Concept learning as search, Find-S\nalgorithm, Version space, Candidate Elimination algorithm, Inductive Bias. \n'),
('15cs76', 'ACA', 2, 'Module - 1 \nTheory of Parallelism: Parallel Computer Models, The State of Computing,\nMultiprocessors and Multicomputer ,Multivector and SIMD Computers ,PRAM\nand VLSI Models, Program and Network Properties ,Conditions of Parallelism,\nProgram Partitioning and Scheduling, Program Flow Mechanisms, System\nInterconnect Architectures\nModule - 2\nHardware Technologies: Processors and Memory Hierarchy, Advanced Processor\nTechnology, Superscalar and Vector Processors, Memory Hierarchy Technology,\nVirtual Memory Technology.'),
('15csl57', 'DBMS LAB', 1, 'PART-A: SQL Programming (Max. Exam Mks. 50)\n? Design, develop, and implement the specified queries for the following problems\nusing Oracle, MySQL, MS SQL Server, or any other DBMS under\nLINUX/Windows environment.\n? Create Schema and insert at least 5 records for each table. Add appropriate\ndatabase constraints.\nPART-B: Mini Project (Max. Exam Mks. 30)\n? Use Java, C#, PHP, Python, or any other similar front-end tool. All\napplications must be demonstrated on desktop/laptop as a stand-alone or web\nbased application (Mobile apps on Android/IOS are not permitted.)'),
('15csl58', 'CN LAB', 1, 'PART A\n1. Implement three nodes point - to - point network with duplex links between them.\nSet the queue size, vary the bandwidth and find the number of packets dropped.\n2. Implement transmission of ping messages/trace route over a network topology\nconsisting of 6 nodes and find the number of packets dropped due to congestion. PART B\nImplement the following in Java:\n7. Write a program for error detecting code using CRC-CCITT (16- bits).\n8. Write a program to find the shortest path between vertices using bellman-ford\nalgorithm.\n9. Using TCP/IP '),
('15csl77', 'WEB LAB', 2, 'PART A\n1. Write a JavaScript to design a simple calculator to perform the following operations:\nsum, product, difference and quotient.\n2. Write a JavaScript that calculates the squares and cubes of the numbers from 0 to 10\nand outputs HTML text that displays the resulting values in an HTML table format. '),
('15csl78', 'ML LAB', 2, 'Lab Experiments:\n1. Implement and demonstratethe FIND-Salgorithm for finding the most specific\nhypothesis based on a given set of training data samples. Read the training data from a\n.CSV file.\n2. For a given set of training data examples stored in a .CSV file, implement and\ndemonstrate the Candidate-Elimination algorithmto output a description of the set\nof all hypotheses consistent with the training examples.');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacherID` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phno` bigint(20) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacherID`, `name`, `email`, `phno`, `website`, `pass`) VALUES
('1', 'Mr.Kartheek', 'kartheek.gcr@gmail.com', 9964820041, 'https://sites.google.com/cmrit.ac.in/kartheek-gcr', '12345'),
('2', 'DrJhansi Rani', 'Dr.Jhansi@gmail.com', 9787673422, 'https://sites.google.com/a/cmrit.ac.in/dr-jhansi-rani-p/', '12345'),
('3', 'Mrs.Sherly Noel', 'sherly.n@gmail.com', 0, 'https://sites.google.com/a/cmrit.ac.in/sherly-noel/', '12345'),
('4', 'Mrs.Rubini P E', 'rubini.p@gmail.com', 0, 'https://sites.google.com/a/cmrit.ac.in/rubini-p/', '12345'),
('5', 'Mrs.Shanthi M B', 'shanthi.mb@gmail.com', 9741414002, 'https://sites.google.com/a/cmrit.ac.in/shanthi-m-b-7679/', '12345'),
('6', 'Mrs.Jagadeshwari', 'jagadeshwari.v@gmail.com', 9880674679, 'https://sites.google.com/a/cmrit.ac.in/jagadishwari/', '12345'),
('7', 'Mrs.Apurva Kulkarni', 'apurva.k@gmail.com', 9930569877, 'https://sites.google.com/a/cmrit.ac.in/apurva-kulkarni-joshi/', '12345'),
('8', 'Mrs.Sagarike Behera', 'sagarika.b@gmail.com', 0, 'https://sites.google.com/a/cmrit.ac.in/sagarika/', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `att`
--
ALTER TABLE `att`
  ADD KEY `subID` (`subID`),
  ADD KEY `usn` (`usn`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classID`);

--
-- Indexes for table `classsub`
--
ALTER TABLE `classsub`
  ADD KEY `classID` (`classID`),
  ADD KEY `subID` (`subID`);

--
-- Indexes for table `iamarks`
--
ALTER TABLE `iamarks`
  ADD KEY `subID` (`subID`),
  ADD KEY `usn` (`usn`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`usn`),
  ADD KEY `classID` (`classID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subID`),
  ADD KEY `classID` (`classID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `att`
--
ALTER TABLE `att`
  ADD CONSTRAINT `att_ibfk_1` FOREIGN KEY (`subID`) REFERENCES `subjects` (`subID`),
  ADD CONSTRAINT `att_ibfk_2` FOREIGN KEY (`usn`) REFERENCES `students` (`usn`);

--
-- Constraints for table `classsub`
--
ALTER TABLE `classsub`
  ADD CONSTRAINT `classsub_ibfk_1` FOREIGN KEY (`classID`) REFERENCES `class` (`classID`),
  ADD CONSTRAINT `classsub_ibfk_2` FOREIGN KEY (`subID`) REFERENCES `subjects` (`subID`);

--
-- Constraints for table `iamarks`
--
ALTER TABLE `iamarks`
  ADD CONSTRAINT `iamarks_ibfk_1` FOREIGN KEY (`subID`) REFERENCES `subjects` (`subID`),
  ADD CONSTRAINT `iamarks_ibfk_2` FOREIGN KEY (`usn`) REFERENCES `students` (`usn`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`classID`) REFERENCES `class` (`classID`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`classID`) REFERENCES `class` (`classID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
