-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2025 at 07:13 AM
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
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Rana Umar Farooq', 'ranau342@gmail.com', 'MUNEEB');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_subject` varchar(255) NOT NULL,
  `contact_desc` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_subject`, `contact_desc`, `contact_email`) VALUES
(5, 'Affan Ali', ' Online Course Purchase Woes', 'Payment Hurdles: Customers often face frustrating payment gateways, from declined transactions to confusing interfaces, hampering their seamless course acquisition.\r\n\r\nContent Quality Concerns: Unclear course descriptions and lack of previews lead to unce', 'Affan@gmail.com'),
(6, 'Hassan', ' Online Course Purchase Woes', ' Payment Hurdles: Customers often face frustrating payment gateways, from declined transactions to confusing interfaces, hampering their seamless course acquisition.\r\n\r\nContent Quality Concerns: Unclear course descriptions and lack of previews lead to unc', 'hassan@gamil.com'),
(8, 'Owen Calhoun', 'Et reprehenderit qua', 'Nihil excepturi earu', 'zury@mailinator.com');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_desc` text NOT NULL,
  `course_author` varchar(255) NOT NULL,
  `course_img` text NOT NULL,
  `course_duration` text NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(17, 'App Development', 'Discover the realm of app development in our hands-on course. Learn to create mobile applications for both iOS and Android platforms using programming languages like Swift and Kotlin. Explore the entire development lifecycle, from concept and design to coding and deployment.', 'Mr.Allens', 'app-development-courses-1536x768.png', '6 month', 33000, 45000),
(18, 'Python Programming with AI/ML', 'This course summarizes machine learning models from an implementation perspective using python language. The course starts from the basics and advances to the more complex problems; hence anyone with a basic understanding of programming can attend this course.', 'Anas Atta ', 'FREE-Python-Course-For-Beginners.png', '3 months', 30000, 50000),
(19, 'Web Development', 'Explore the world of web development in our comprehensive course. Learn the fundamentals of HTML and CSS to create stunning and responsive web pages.', 'Ali Haider Shah', 'web2.jpg', '3 months', 14000, 23000),
(21, 'Graphic Designing', 'Immerse yourself in the world of graphic design through our engaging course. Explore the principles of visual communication,layout design. Develop proficiency in industry-standard software like Adobe Creative Suite, while unleashing your creativity your design instincts. By course completion, you\'ll be equipped with the skills to craft captivating visuals for a variety of print and digital mediums.After this you are able to making responsive designs and meet client requirements.', 'Usman Butt', 'banner_6274ab14568c9.jpg', '4 months', 15000, 20000),
(22, 'JavaScript Course', 'Unleash the power of JavaScript with our dynamic course. Dive into the fundamentals of programming using this versatile language, and learn to create interactive web experiences. Explore core concepts like variables, functions, and control structures, while also delving into more advanced topics like asynchronous programming and DOM manipulation.After this course you are about to work diiferent technologies with javascript.', 'Asad Ali', 'java.png', '4 month', 14000, 18000),
(23, 'Ecommerce Course', 'Embark on an e-commerce journey with our comprehensive course. Explore the intricacies of online business, from setting up a digital store to optimizing customer experiences. Learn about product management, payment gateways, and effective marketing strategies tailored for e-commerce. Dive into the world of analytics to make data-driven decisions. By the course end, you\'ll have the knowledge and skills to establish a successful online.', 'Sadia Hassan', 'Image_-_E-Commerce_Website_.jpeg.webp', '2 months', 30000, 33000),
(24, 'Networking Course', 'Dive into the realm of networking with our comprehensive course. Learn the fundamentals of designing, implementing, and managing computer networks. Explore concepts like IP addressing, routing, and network security. Gain hands-on experience configuring network devices and troubleshooting common issues. By the course completion, you\'ll have the skills to build and maintain robust networks that power modern communication.', 'Zain ul Abiden', 'ggti_2.jpg', '12 months', 65000, 76000),
(25, 'Amazon Virtual Assistant', 'Explore the world of Amazon virtual assistance through our specialized course. Learn how to effectively support businesses as a virtual assistant in the context of the Amazon marketplace. Master tasks like product research, listing optimization, customer communication, and order management. Gain insights into Amazon\'s policies and best practices.', 'Sana Hussain', 'maxresdefault.jpg', '3 months', 22000, 34000),
(26, 'Supply Chain Management', 'Delve into Supply Chain Management with our comprehensive course. Explore the end-to-end processes of planning, sourcing, producing, and delivering goods and services. Learn about logistics, inventory management, and demand forecasting. Gain insights into optimizing operations for efficiency and sustainability. By the course completion, you\'ll have all the knowledge.', 'Zulqarnain Ijaz', 'supply-chain-management.jpg', '2 months', 38000, 42000),
(27, 'Creative writing', 'Unleash your creativity through our immersive Creative Writing course. Explore various genres and writing styles, from fiction and poetry to non-fiction and screenwriting. Learn to craft compelling narratives, develop unique characters, and master the art of storytelling.Refine your writing skills.', 'Saqib Ali', 'cr.jpg', '1.5 months', 7000, 12000),
(29, 'Freelancing', 'Unlock the potential of freelancing with our in-depth course. Master the art of self-employment as you learn how to identify marketable skills, set competitive prices, and effectively market your services.\r\nBy the course end, you\'ll have the knowledge and tools needed to thrive as a successful freelancer in today\'s dynamic and competitive digital landscape.We also learn fiver,upwork or so on.', 'Tabinda Ahmed', 'image_2022-10-05_145804829.webp', '4 month', 15000, 23000),
(32, 'Rebekah Walter', 'Consectetur ut est ', 'Lysandra Klein', 'IMG_2773.jpg', 'Cum omnis minima dol', 951, 785);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_name` varchar(255) NOT NULL,
  `feedback_email` varchar(255) NOT NULL,
  `feedback_des` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback_name`, `feedback_email`, `feedback_des`) VALUES
(5, 'Ahmed ', 'Ahmed@gmail.com', 'This JavaScript course exceeded my expectations with its well-structured curriculum and clear explanations.\r\nThe hands-on exercises and projects provided valuable practical experience, enhancing my coding skills significantly.\r\n'),
(6, 'Rana umar farooq', 'ranau@gmail.com', 'This JavaScript course exceeded my expectations with its well-structured curriculum and clear explanations.\r\nThe hands-on exercises and projects provided valuable practical experience, enhancing my coding skills significantly.\r\n'),
(7, 'Rana umar farooq', 'DHSFX@GMAIL.COM', 'RDGEYGWSGHJGJSH');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text NOT NULL,
  `lesson_desc` text NOT NULL,
  `lesson_link` text NOT NULL,
  `course_name` text NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_name`, `course_id`) VALUES
(4, 'Introduction to Ethical Hacking', 'This lesson provides an overview of ethical hacking, including its purpose, importance, and legal and ethical considerations. Students learn about the role of ethical hackers in securing systems and networks.', 'lecture.mp4', 'Ethical Hacking', 16),
(5, 'Network Fundamentals', 'Understanding the basics of networks is crucial for ethical hackers. This lesson covers topics such as IP addressing, subnets, protocols, and network topologies. Students gain insights into how data flows through networks.', 'lecture1.mp4', 'Ethical Hacking', 16),
(6, 'Vulnerability Assessment and Penetration Testing (VAPT)', ' This lesson focuses on techniques for identifying and exploiting vulnerabilities. Students learn about various tools and methodologies used in penetration testing, as well as how to conduct thorough security assessments.', 'lecture1.mp4', 'Ethical Hacking', 16),
(7, 'Introduction to App Development', 'This lesson provides an overview of app development, covering various platforms and technologies. Students learn about the different types of apps (native, hybrid, web) and the basics of programming languages like Java, Swift, or Kotlin.', 'lecture.mp4', 'App Development', 17),
(8, 'User Interface (UI) Design and User Experience (UX)', 'This lesson focuses on creating user-friendly and visually appealing interfaces. Students learn about UI/UX design principles, wireframing, prototyping, and how to optimize the user journey.', 'lecture1.mp4', 'App Development', 17),
(9, 'Programming and Development Environment', 'This lesson delves into the specific programming languages, frameworks, and tools used for app development. It may cover topics such as IDE setup, version control systems, and the basics of coding.', 'lecture1.mp4', 'App Development', 17),
(10, 'Database Integration and Data Management', 'Students learn how to integrate databases into their apps for data storage and retrieval. They also explore concepts like database design, data modeling, and techniques for efficient data management.', 'lecture1.mp4', 'App Development', 17),
(11, 'Python Fundamentals', 'This lesson provides a solid foundation in Python programming, covering basic syntax, data types, control structures, functions, and object-oriented programming concepts.', 'lecture.mp4', 'Python Programming with AI/ML', 18),
(12, 'Data Manipulation and Analysis', 'Students learn how to work with data using Python libraries like NumPy, Pandas, and Matplotlib. This includes tasks such as data cleaning, transformation, and visualization.', 'lecture1.mp4', 'Python Programming with AI/ML', 18),
(13, 'Introduction to Machine Learning', 'This lesson introduces the fundamentals of machine learning, including concepts like supervised learning, unsupervised learning, and evaluation metrics. Students get acquainted with scikit-learn, a popular Python library for machine learning.', 'lecture.mp4', 'Python Programming with AI/ML', 18);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_pass` varchar(255) NOT NULL,
  `stu_occ` varchar(255) NOT NULL,
  `stu_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(28, 'ali ', 'hasss@gmail.com', '2345', '', ''),
(29, 'djbdmnm', 'sjnbnkk@gmail.com', '3456', '', ''),
(30, 'admin123', 'DSGSJUDOIH@gmail.com', '3456', 'developer', ''),
(31, 'rana umar', 'gdsuj@gmail.com', '23456', '', ''),
(32, 'rtyhf', 'assan@gmail.com', '5678', 'programmer', ''),
(33, 'ahmed hassan', 'asff@gmail.com', '12345', 'developer', ''),
(34, 'jiasdj', 'ajsmxn@gmail.com', '12345', '', ''),
(36, 'rana umar farooq', 'sijjsjj@gmail.com', '12345', 'shopkeeper', ''),
(37, 'syed ali haider', 'shdhsa@gmail.com', '89076', 'freelancing', ''),
(38, 'ali ahmed', 'ranau786@gmail.com', '45678', '', ''),
(39, 'Anas Atta', 'manaseth666@gmail.com', '12345678', '', ''),
(40, 'ahmed hassan', 'eedksjx@gmail.com', '3456', 'programmer', ''),
(41, 'ali hadiedbn', 'dxxjjnhb@gmail.com', '098765', '', ''),
(42, 'Ahmed Usman', 'sdtyfgf@gmail.com', '89076', '', ''),
(43, 'Usman Ahmed Ali', 'dydgfsfd@gmail.com', '2345', 'developer', ''),
(45, 'Haseeb ', 'haseeb@gmail.com', '12345', '', ''),
(46, 'admon', 'suhuhd@gmail.com', '4321', '', ''),
(47, 'sjdh', 'dhgdh@gmail.com', '3456', '', ''),
(48, 'admin1234', 'sdffffff@gmail.com', '1234512345', '', ''),
(49, 'admin12345', 'dhhj@gmail.com', '5678', '', ''),
(50, 'umar', 'umayt@gmail.com', '12345', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
