-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 05:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id_announcement` int(11) NOT NULL,
  `announcement_title` varchar(255) NOT NULL,
  `announcement_text` text NOT NULL,
  `announcement_college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id_announcement`, `announcement_title`, `announcement_text`, `announcement_college_id`) VALUES
(1, 'nasi', '<p>nasi goreng 12 k</p>', 1),
(2, 'bakwan', '<p>bakwan 10k</p>', 1),
(3, 'Announcement 1', '<h4>Hi there are announcement 1</h4><p>Welcome to Oxford university</p>', 5),
(4, 'COVID 19 UPDATE', '<p>Hi from inti Penang, I would like to urge every to stay home and attend online classes! Stay safe!</p>', 5),
(5, '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `college_units`
--

CREATE TABLE `college_units` (
  `id_college` int(11) NOT NULL,
  `college_name` varchar(100) NOT NULL,
  `college_year` varchar(100) NOT NULL,
  `college_subject` text NOT NULL,
  `college_about` text NOT NULL,
  `college_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college_units`
--

INSERT INTO `college_units` (`id_college`, `college_name`, `college_year`, `college_subject`, `college_about`, `college_image`) VALUES
(3, 'Sentral College Penang ', '2002', '<ul><li>BSc (Hons) Accounting &amp; Finance</li><li>Diploma in Accounting</li><li>ACCA Qualification</li><li>Certified Accounting Technician (CAT)</li><li>Diploma in Business Studies</li><li>Diploma in Computer Systems Technology</li><li>Certificate in Business Information Technology</li><li>Cyber Security Specialist</li><li>Certified Security Aware User (CSAU)</li><li>Certified Marketing Analyst</li><li>Business Analysis for Project Managers</li><li>Application Developer (Programming)</li><li>Application Developer (Front End)</li><li>Diploma in Early Childhood Education</li><li>Diploma in Tourism Management</li><li>Tourist Guides Programme (SKM 3)<br><br><br><br><br>&nbsp;</li></ul>', '<h2>WELCOME TO <strong>SENTRAL COLLEGE PENANG</strong></h2><p>Located at the fringe of the heritage enclave SENTRAL College Penang serves to provide an excellent and honest tertiary education platform to students in the Northern Region of Malaysia. The campus is housed in a gleaming 14-storey building, equipped with cutting-edge facilities and all amenities are within easy reach.</p><p>The programmes offered are approved by the Ministry of Education (MOE) and accredited by Malaysian Qualification Agency (MQA). The fields of studies are Business &amp; Management, Accounting &amp; Finance, Computing &amp; IT, Tourism &amp; Hospitality and Early Childhood Education. The College works in partnership with University of Salford, Manchester, U.K. to provide affordable world-class U.K. degrees.</p><p>The team at SENTRAL College Penang upholds its founding goal to develop students into wholesome capable individuals who will support their family, serve the community and strive for the country.</p>', '20201149113322sentral-college.jpg'),
(4, 'Segi College ', '1999', '<ul><li>BSc in Psychology (4+0) (MQA/FA6533)</li><li>BSc in Business Administration (Global Business) (4+0) (MQA/PA6962)</li><li>Diploma in Information Technology (MQA: A9340)</li><li>Diploma in Culinary Arts (MQA: A10877)</li><li>Diploma in Hotel Management (MQA: A1839)</li><li>Diploma in Tourism Management (MQA: A7405)</li><li>Diploma in Early Childhood Education (MQA: A7403)</li><li>BA(Hons) in Early Years Education 3+0 (MQA/PA9143)</li><li>Diploma in Electronic and Electrical Engineering (MQA: MQA/FA2301)</li><li>BEng(Hons) Electronic and Electrical Engineering(3+0) (MQA: MQA/FA2482)</li><li>BEng(Hons) Mechanical Engineering(3+0) (MQA: MQA/FA2642)</li><li>Diploma in Accounting (MQA: A8627)</li><li>Diploma in Business Administration (MQA: A8629)</li><li>Executive Diploma in Business Administration (MQA: MQA/FA0344)</li><li>Diploma in Medical Laboratory (MQA: MQA/FA0275)</li></ul>', '<p>The air of preservation and vintage of Penang has been the veneer to SEGi College Penang for two decades. Serving as SEGi’s education hub to students in the Northern Region of Malaysia, the campus located in Green Hall, which comprises modern facilities and a conducive study environment, providing existing and future students with a more complete learning experience.</p><p>The unique coastal location of the campus provides you with an ideal learning lifestyle with a breezy atmosphere, fresh air, and affordable living costs. Amenities are convenient and readily available with eateries, banks, shopping malls, and public transport located nearby to SEGi College Penang.</p><p>SEGi College Penang offers a wide range of diploma, degree, postgraduate and professional courses in the fields of business, accounting, marketing, human resource, early childhood education, mass communication, information technology, computing, hotel management, and tourism.</p><p>SEGi College Penang provides a unique learning experience to its students with its signature dedication from academicians and management staff, which is characteristic of Penang hospitality. Care is taken to ensure that you are given personal attention, in-depth coverage of the syllabus, and a hands-on approach to learning.</p>', '20201100112722unnamed.jpg'),
(5, 'inti College University ', '1986', '<ul><li><a href=\"https://newinti.edu.my/academic-programmes/biotechnology-life-sciences/\">Biotechnology &amp; Life Sciences</a></li><li><a href=\"https://newinti.edu.my/academic-programmes/business/\">Business</a></li><li><a href=\"https://newinti.edu.my/academic-programmes/computing-it/\">Computing &amp; IT</a></li><li><a href=\"https://newinti.edu.my/academic-programmes/engineering/\">Engineering</a></li><li><a href=\"https://newinti.edu.my/academic-programmes/fashion-design/\">Fashion Design</a></li><li><a href=\"https://newinti.edu.my/academic-programmes/graphic-design/\">Graphic Design</a></li><li><a href=\"https://newinti.edu.my/academic-programmes/health-sciences/\">Health Sciences</a></li><li><a href=\"https://newinti.edu.my/academic-programmes/interior-design/\">Interior Design</a></li><li><a href=\"https://newinti.edu.my/academic-programmes/hospitality/\">Hospitality &amp; Culinary Arts</a></li><li>Programs<a href=\"https://newinti.edu.my/academic-programmes/inti-programmes-for-working-professionals/\"> for Working Professionals</a></li><li><a href=\"https://newinti.edu.my/academic-programmes/intensive-english-programmes/\">Intensive English Programme (IEP)</a></li><li><a href=\"https://newinti.edu.my/academic-programmes/law/\">Law</a></li><li><a href=\"https://newinti.edu.my/academic-programmes/mass-communication/\">Mass Communication</a></li><li>American Degree Transfer Programme</li></ul>', '<p>The college was opened in 1986 in Bangunan Sim Lim, Brickfields, <a href=\"https://en.wikipedia.org/wiki/Kuala_Lumpur\">Kuala Lumpur</a>. The college only enrolled 37 students at its inception, but the student population increased to 400 within 18 months. Enrolment continues to increase, leading the college to be re-located to Jalan Sungai Besi, Kuala Lumpur in 1989.</p><p>Two years later, with more than 900 full-time students, the college established a permanent campus: INTI College <a href=\"https://en.wikipedia.org/wiki/Subang_Jaya\">Subang Jaya</a> (ICSJ). It also opened branch campuses in Kuching, Sarawak in 1991; and Kota Kinabalu, Sabah branch in 1996.</p><p>INTI College Malaysia\'s (ICM) main campus was established on 82 acres (330,000&nbsp;m2) of land in Putra Nilai in 1998. In March 2000, INTI acquired International College Penang which is located in the Bukit Jambul education township. In 2004, INTI continued to expand with three new associate campuses: Genting INTI International College, Metropolitan College and PJ College of Art &amp; Design. To date, INTI has six associate campuses in Malaysia.</p><p>On 4 September 2006, ICM received the Ministry of Higher Education approval for upgrade to university college status. ICM became INTI University College (INTI UC).</p><p>In 2008, INTI merged with Laureate International Universities to be a Laureate International Education Group member.</p><p>In 31 May 2010, the Ministry of Higher Education upgraded INTI University College to the status of a University able to confer its own degrees - INTI International University.</p><p>On 1 June 2010, INTI UC received its upgrades to a full university from Higher Education Minister Datuk Seri Mohamed Khaled Nordin. Its student population was 300 at this time.</p>', '20200918114122IU_campus_small.jpg'),
(6, 'Wawasan Open University', '2006', '<p>&nbsp;</p><ul><li><a href=\"http://www.wou.edu.my/school-of-business-administration\"><strong>SCHOOL OF BUSINESS &amp; ADMINISTRATION</strong></a></li><li><a href=\"http://www.wou.edu.my/school-of-science-and-technology\"><strong>SCHOOL OF SCIENCE &amp; TECHNOLOGY</strong></a></li><li><a href=\"http://www.wou.edu.my/school-of-education-humanities-social-sciences\"><strong>SCHOOL OF EDUCATION, HUMANITIES &amp; SOCIAL SCIENCES</strong></a></li><li><a href=\"http://www.wou.edu.my/centre-for-foundation-studies\"><strong>CENTRE FOR FOUNDATION STUDIES</strong></a></li><li><a href=\"http://www.wou.edu.my/centre-for-graduate-studies\"><strong>CENTRE FOR GRADUATE STUDIES</strong></a></li><li><a href=\"http://www.wou.edu.my/centre-for-research-and-innovation\"><strong>CENTRE FOR RESEARCH AND INNOVATION</strong></a></li><li><a href=\"http://www.wou.edu.my/pace-1\"><strong>CENTRE FOR PROFESSIONAL DEVELOPMENT &amp; CONTINUING EDUCATION</strong></a></li></ul>', '<h2>The People\'s University</h2><p>Wawasan Open University (WOU) was established in 2006 with a unique and socially responsible objective – to provide working Malaysians access to quality higher education via open distance learning (ODL) regardless of their educational, ethnic or socio-economic background.&nbsp; The University has spread its wings in September 2013 to offer full-time degree programmes for STPM school leavers and diploma holders at its Main Campus in Penang.&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</p><p>As the people’s university, WOU believes in providing education and lifelong learning opportunities to all people for self-enrichment and professional advancement.&nbsp; By opening the door to tertiary education, WOU ensures that more Malaysians are now able to pursue an affordable degree.</p>', '20200236112122Wawasan_open_university.jpg'),
(7, 'Disted College ', '1987', '<figure class=\"image\"><img src=\"https://www.disted.edu.my/wp-content/uploads/2020/02/Pre-U.png\" alt=\"Pre-U\"></figure><p><a href=\"https://www.disted.edu.my/programme-category/pre-university/\"><strong>PRE-UNIVERSITY</strong></a></p><figure class=\"image\"><img src=\"https://www.disted.edu.my/wp-content/uploads/2020/05/Business-Hospitality.png\" alt=\"Business-Hospitality\"></figure><p><a href=\"https://www.disted.edu.my/programme-category/business/\"><strong>BUSINESS</strong></a></p><figure class=\"image\"><img src=\"https://www.disted.edu.my/wp-content/uploads/2020/02/computing-and-engineering-1.png\" alt=\"computing-and-engineering-1\"></figure><p><a href=\"https://www.disted.edu.my/programme-category/computer-science-engineering/\"><strong>COMPUTER SCIENCE &amp; ENGINEERING</strong></a></p><figure class=\"image\"><img src=\"https://www.disted.edu.my/wp-content/uploads/2020/02/psychology-category.png\" alt=\"psychology-category\"></figure><p><a href=\"https://www.disted.edu.my/programme-category/psychology/\"><strong>PSYCHOLOGY</strong></a></p><figure class=\"image\"><img src=\"https://www.disted.edu.my/wp-content/uploads/2020/07/Icons-01.png\" alt=\"Icons-01\"></figure><p><a href=\"https://www.disted.edu.my/programme-category/life-academy/\"><strong>LIFE ACADEMY</strong></a></p><figure class=\"image\"><img src=\"https://www.disted.edu.my/wp-content/uploads/2020/05/Business-Hospitality.png\" alt=\"Business-Hospitality\"></figure>', '<p><strong>DISTED, Penang’s first private Not-For-Profit institution of higher learning</strong> owned by the Wawasan Education Foundation, is committed to providing education and training to young students to serve the needs of industry and community. It thrives on the confidence of the community and the strengths of its programmes, staff and student care.The college currently operates from two exquisite heritage properties – the YCE Heritage Campus that sits elegantly amongst the tree-lined Macalister Road.</p><p>DISTED believes in the capability and commitment of Malaysians to provide a brand of education that is excellent, relevant and complete for all in the country. It offers a wide range of high-quality courses from certificate to bachelor degree level in pre-university studies, business, psychology, IT and engineering.</p><p>The college offers an environment that gives young school leavers safe and great opportunities to live and learn a life of adventure, creativity, independence, and leadership as well as to thrive and achieve significance in knowledge for the service of mankind. Students are able to enjoy a wide variety of social, cultural, entertainment and sporting activities that will contribute to a great on-campus and well-rounded learning experience.</p><p>DISTED takes pride in its financial award and bursary schemes, which are partly supported by the Wawasan Education Foundation and Yeap Chor Ee Charitable Trust, and the success of the schemes in recognizing and rewarding not only academically talented students but also deserving students who are in financial need.</p><figure class=\"image\"><img src=\"https://www.disted.edu.my/wp-content/uploads/2018/09/ISO9001-2015-UKAS.png\" alt=\"ISO9001-2015-UKAS - DISTED College in Penang\"></figure><figure class=\"image\"><img src=\"https://www.disted.edu.my/wp-content/uploads/2018/09/My-Quest-2016-2017.png\" alt=\"My Quest 2016-2017 - DISTED College in Penang\"></figure><figure class=\"image\"><img src=\"https://www.disted.edu.my/wp-content/uploads/2018/09/A-portrait-of-an-Asian-college-student-studying-in-the-library-2.jpg\" alt=\"Asian College Student at Private College in Penang Malaysia\"></figure><p><strong>DISTED</strong> empowers students for a holistic and meaningful education experience and a better start towards the career of their choice through the following collaborative enriching initiatives:</p><ul><li>Industry Advisory Panels for the college to keep closer touch with industry players so as to make its programmes industry-relevant and high-quality students to be more job-ready.</li><li>INSPiRE Programme to maximize first-person exposure of students to industry and business leaders who share with them the personal and professional experience of industrial landscapes.</li><li>CONNECT Programme to promote a caring community culture and sensitize students to issues affecting society and engage the community on issues faced by young people.</li><li>Let’s Go Green Campaign to mould environmentally friendly and responsible citizens and develop leadership in environmental conservation leading to sustainable lifestyles.</li><li>eLearn is the college’s e-learning thrust that promotes complementary online delivery of lessons and sharing of experiences based on technology-enabled, student-centred and lecturer-facilitated learning. It utilizes Moodle as its e-learning platform.</li></ul>', '20200228112622hall.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `comment_text` varchar(255) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `comment_college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id_comment`, `comment_text`, `comment_user_id`, `comment_college_id`) VALUES
(1, 'love this collage', 2, 5),
(2, 'INTI TEACHERS ARE THE BEST!!!!!!', 3, 5),
(3, 'THis college is good but... i still love into better', 4, 7),
(4, 'I feel as if all the other colleges are bad, I only love INTI \r\n\r\nINTI THE BEST!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 4, 5),
(5, 'I remember i sent my son came to this college, and he told me he love the teachers', 5, 5),
(6, 'This college is so old, but i think they have experience in teaching\r\n', 5, 7),
(7, 'this college is soso ', 5, 3),
(8, 'The buildings are very tall as i studied here last year', 6, 4),
(9, 'Looks like whitehouse, i will study here if i finish working ', 6, 6),
(10, 'When i finish my diploma in segi, i transfer my univseristy to here and love it!', 6, 5),
(11, 'teacher can teach \r\n', 7, 5),
(12, 'I have taken IT in Diploma Subject and overall I love the subject and love how the eew rwer werwerwerewrewrwerweewrwej j jj j j j j j j jj j j j j j j j j j jj j j j jjj jj j j j j j j jj  jj j j j j efwjnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnwwwwwwwlllll', 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(222) NOT NULL,
  `user_phone` varchar(100) DEFAULT NULL,
  `user_sex` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_sex`) VALUES
(1, 'adit', 'adit@mail.com', 'adit', NULL, NULL),
(2, 'Aditya Rizki Pratama', 'arizki717@gmail.com', '486b6c6b267bc61677367eb6b6458764', '089517542356', 'Male'),
(3, 'Muhammed Lim', 'ml@gmail.com', '4297f44b13955235245b2497399d7a93', '123123', 'Male'),
(4, 'Ong Pi Pi ', 'opp@gmail.com', '4297f44b13955235245b2497399d7a93', '123', 'Male'),
(5, 'Anwar Razak Bin Guan Eng', 'waa@gmail.com', '4297f44b13955235245b2497399d7a93', '123', 'Male'),
(6, 'Donald Muhyiddin Nazri Bin Najib Kit Siang ', 'dmz@gmail.com', '4297f44b13955235245b2497399d7a93', '1222222222222', 'Female'),
(7, 'Ali Biden XiJinPing', 'angphengfei@hotmail.com', '4297f44b13955235245b2497399d7a93', '123123', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id_announcement`);

--
-- Indexes for table `college_units`
--
ALTER TABLE `college_units`
  ADD PRIMARY KEY (`id_college`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id_announcement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `college_units`
--
ALTER TABLE `college_units`
  MODIFY `id_college` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
