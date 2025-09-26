-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2025 at 05:59 AM
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
-- Database: `temple_visit`
--

-- --------------------------------------------------------

--
-- Table structure for table `itineraries`
--

CREATE TABLE `itineraries` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('Upcoming','Planning','Draft','Completed') DEFAULT 'Planning',
  `temples` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itineraries`
--

INSERT INTO `itineraries` (`id`, `user_id`, `title`, `start_date`, `end_date`, `status`, `temples`, `created_at`) VALUES
(1, 14, 'ndhs', '2025-07-31', '2025-08-01', 'Upcoming', '[\"shsbsjs\"]', '2025-07-30 16:53:22'),
(2, 14, 'want to go to temple', '2025-07-31', '2025-08-01', 'Completed', '[\"jxjdj\"]', '2025-07-30 16:55:51'),
(3, 15, 'Darshan', '0000-00-00', '0000-00-00', 'Planning', '[\"Sai Baba temple\"]', '2025-07-30 17:37:04'),
(4, 15, 'yuy', '0000-00-00', '0000-00-00', 'Planning', '[\"ggh\"]', '2025-09-13 07:00:58'),
(5, 15, 'yuy', '0000-00-00', '0000-00-00', 'Planning', '[\"ggh\"]', '2025-09-13 07:00:59'),
(6, 15, 'yuy', '0000-00-00', '0000-00-00', 'Planning', '[\"ggh\"]', '2025-09-13 07:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `temples`
--

CREATE TABLE `temples` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `timings` varchar(255) DEFAULT NULL,
  `how_to_reach` longtext DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT 0.0,
  `reviews_count` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temples`
--

INSERT INTO `temples` (`id`, `name`, `location`, `city`, `state`, `distance`, `main_image`, `overview`, `timings`, `how_to_reach`, `rating`, `reviews_count`, `created_at`, `category_id`) VALUES
(1, 'Kapaleeshwarar Temple', 'Mylapore', 'Chennai', 'Tamil Nadu', 3.2, 'https://hindupad.com/wp-content/uploads/Mylapore-Kapaleeswarar-Temple.jpg', '→ Kapaleeshwarar Temple is a famous and ancient Hindu temple located in Mylapore, Chennai, Tamil Nadu.\n\n→ It is dedicated to Lord Shiva, who is worshipped here as Kapaleeshwarar, and Goddess Parvati as Karpagambal.\n\n→ The temple is believed to have been built in the 7th century CE by the Pallava kings and later rebuilt by the Vijayanagara rulers.\n\n→ It showcases classic Dravidian architecture with a majestic 120-foot gopuram, intricately carved pillars, and vibrant sculptures.\n\n→ The temple is surrounded by bustling streets and traditional shops, making it a cultural hub of Mylapore.\n\n→ Devotees visit the temple for blessings related to health, wealth, and harmony, especially on Mondays and festival days.\n\n→ Major festivals celebrated include Panguni Peruvizha, Arubathimoovar festival, and Mahashivaratri, attracting thousands of devotees.\n\n→ The temple also features a sacred tank (theppakulam), used during float festivals and religious ceremonies.\n\n→ Kapaleeshwarar Temple is not only a spiritual landmark but also a symbol of Chennai’s cultural and historical legacy.', '🕉️ *Kapaleeshwarar Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 05:00 AM to 12:00 PM\n\n   🌅 Ideal time for peaceful darshan and morning rituals\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:00 PM to 09:00 PM\n\n   🌇 Visit during sunset for beautiful lighting and ', '📍 *How to Reach Kapaleeshwarar Temple* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 Regular MTC buses are available from various parts of Chennai.\n\n   📌 Nearest bus stop: Luz Corner or Mylapore Tank\n\n\n🚆 *By Train:*\n\n   🚉 Closest suburban railway station: Thirumayilai (Mylapore)\n\n   🛤️ Connected via MRTS from Chennai Beach, Fort, and Velachery\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Easily reachable via auto rickshaw or cab from any point in Chennai\n\n   🧭 Use Google Maps for accurate navigation to \"Kapaleeshwarar Temple, Mylapore\"\n\n\n✈️ *By Air:*\n\n   🛫 Nearest airport: Chennai International Airport (around 17 km)\n\n   🚕 Prepaid taxis and app-based cabs are available from the airport\n\n\n🚶 *On Foot:*\n\n   🏃 If you are in or around Mylapore, the temple is within walking distance from many local attractions like the Mylapore tank, Luz Church Road, and San Thome', 4.5, 8, '2025-07-24 16:06:04', 1),
(2, 'Parthasarathy Temple', 'Triplicane', 'Chennai', 'Tamil Nadu', 4.5, 'https://hindupost.in/wp-content/uploads/2021/06/parthasarathy-temple.png', '→ Parthasarathy Temple is a historic and highly revered Hindu temple dedicated to Lord Krishna, located in Triplicane, Chennai, Tamil Nadu.\n\n→ The temple is one of the oldest in the city, believed to have been originally built in the 8th century by the Pallavas and later renovated by the Cholas and Vijayanagara kings.\n\n→ Lord Krishna is worshipped here in the form of Parthasarathy, meaning the charioteer of Arjuna, symbolizing his role in the Mahabharata.\n\n→ The temple is unique as it also houses different forms of Lord Vishnu, including Rama, Narasimha, and Varaha, making it a significant Vaishnavite site.\n\n→ The architecture reflects classic Dravidian style, with intricately carved gopurams, mandapams, and detailed sculptures.\n\n→ The temple tank, called Kairavini Pushkarini, adds to the spiritual charm and is an important feature during festivals.\n\n→ Major festivals celebrated here include Vaikunta Ekadasi, Brahmotsavam, and Sri Krishna Janmashtami, drawing thousands of devotees.\n\n→ The temple follows the Vaikhanasa Agama and is associated with the Tenkalai sect of Sri Vaishnavism.\n\n→ Parthasarathy Temple is not only a spiritual center but also a symbol of Chennai’s cultural, historical, and devotional legacy.', '🕉️ *Parthasarathy Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 05:30 AM to 12:00 PM\n\n   📿 Peaceful hours for early darshan and sacred rituals\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:00 PM to 09:00 PM\n\n   🌆 Enjoy serene atmosphere with evening prayers and', '📍 *How to Reach Parthasarathy Temple* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 MTC buses frequently operate to Triplicane from various parts of Chennai.\n\n   📌 Nearest bus stops: Triplicane Big Street, Ice House\n\n\n🚆 *By Train:*\n\n   🚉 Closest suburban station: Light House (MRTS)\n\n   🛤️ Walkable from the station (approx. 10 minutes)\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Auto rickshaws and app-based taxis (Ola/Uber) are widely available\n\n   🧭 Set destination to \"Parthasarathy Temple, Triplicane\"\n\n\n✈️ *By Air:*\n\n   🛫 Chennai International Airport (around 20 km away)\n\n   🚕 Taxis and ride-share apps offer direct airport connectivity\n\n\n🚶 *On Foot:*\n\n   🏃 The temple is located in a narrow but vibrant lane, easily walkable from Marina Beach or Triplicane High Road', 4.7, 2100, '2025-07-24 16:06:04', 3),
(3, 'Marundeeswarar Temple', 'Thiruvanmiyur', 'Chennai', 'Tamil Nadu', 8.1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Marundeeswarar7.jpg/640px-Marundeeswarar7.jpg', '→ Marundeeswarar Temple is a prominent Hindu temple dedicated to Lord Shiva, located in Thiruvanmiyur, Chennai, Tamil Nadu.\n\n→ The temple is known for its association with healing and medicine, where Lord Shiva is worshipped as Marundeeswarar, the \"God of Medicines.\"\n\n→ It has ancient roots dating back to the Chola period and is mentioned in the hymns of Tamil Saivite saints like Appar and Sambandar.\n\n→ The temple architecture reflects classic Dravidian style, featuring a towering Rajagopuram, wide courtyards, and intricately carved pillars.\n\n→ A unique feature is the presence of inscriptions and ancient sculptures that describe medicinal herbs and healing practices.\n\n→ The temple is visited by devotees seeking relief from health issues and ailments through prayer and faith.\n\n→ It hosts grand celebrations during festivals like Shivaratri, Pradosham, and Panguni Brahmotsavam, which attract thousands of pilgrims.\n\n→ Rituals and daily poojas follow Saivite traditions, and offerings are made specifically for health and well-being.\n\n→ Marundeeswarar Temple serves not only as a sacred shrine but also as a center of spiritual healing and historical significance.', '🕉️ *Marundeeswarar Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 05:30 AM to 12:00 PM\n\n   🌄 Ideal time for peaceful visit and healing prayers to Lord Shiva\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:00 PM to 08:30 PM\n\n   🌆 Evening rituals with soothing chant', '📍 *How to Reach Marundeeswarar Temple* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 Regular MTC buses ply to Thiruvanmiyur from major parts of Chennai.\n\n   📌 Nearest bus stops: Thiruvanmiyur Market or RTO Office\n\n\n🚆 *By Train:*\n\n   🚉 Thiruvanmiyur MRTS Station is the nearest railway stop\n\n   🛤️ Connected by MRTS from Chennai Beach, Fort, and Velachery\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Easily accessible by auto rickshaws and cabs from anywhere in the city\n\n   🧭 Use navigation apps to reach \"Marundeeswarar Temple, Thiruvanmiyur\"\n\n\n✈️ *By Air:*\n\n   🛫 Chennai International Airport is about 13 km away\n\n   🚕 You can take a cab or app-based taxi for direct access\n\n\n🚶 *On Foot:*\n\n   🏃 Located near the Thiruvanmiyur beach stretch; easily reachable by walk if nearby', 4.6, 1750, '2025-07-24 16:06:04', 1),
(4, 'Vadapalani Murugan Temple', 'Vadapalani', 'Chennai', 'Tamil Nadu', 6.7, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/f6/6a/b2/aerial-view.jpg?w=900&h=-1&s=1', '→ Vadapalani Murugan Temple is a renowned Hindu temple dedicated to Lord Murugan, located in Vadapalani, Chennai, Tamil Nadu.\n\n→ It is one of the most popular temples in Chennai and attracts devotees from across the state and beyond.\n\n→ The temple was originally built in the late 19th century as a simple thatched shed and later developed into a large temple complex.\n\n→ Lord Murugan is worshipped here in a standing posture with a vel (spear), and the idol is believed to possess powerful blessings.\n\n→ The temple is famous for granting wishes, especially regarding marriage, education, and career success.\n\n→ The architecture includes a tall Rajagopuram (tower) adorned with colorful sculptures of deities and mythological stories.\n\n→ The temple sees heavy footfall during festivals such as Thai Poosam, Panguni Uthiram, Skanda Sashti, and Karthigai Deepam.\n\n→ Many devotees also visit to conduct rituals like tonsuring and ear-piercing ceremonies for children.\n\n→ Vadapalani Murugan Temple serves as a spiritual and cultural hub in the bustling city of Chennai.', '🕉️ *Vadapalani Murugan Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 05:00 AM to 12:00 PM\n\n   🌄 Peaceful atmosphere for early worship and daily poojas\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:00 PM to 09:00 PM\n\n   🌆 Ideal for attending evening aarti and sp', '📍 *How to Reach Vadapalani Murugan Temple* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 MTC buses are available from almost all major city points\n\n   📌 Nearest bus stop: Vadapalani Bus Stand\n\n\n🚆 *By Metro:*\n\n   🚇 Vadapalani Metro Station (Green Line) is just a short walk away\n\n   🛤️ Direct metro access from CMBT, Central, and Airport lines\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Auto rickshaws and taxis are widely available in this commercial area\n\n   🧭 Search \"Vadapalani Murugan Temple\" in Google Maps\n\n\n✈️ *By Air:*\n\n   🛫 Around 11 km from Chennai International Airport\n\n   🚕 Direct taxi/cab access available 24/7\n\n\n🚶 *On Foot:*\n\n   🏃 Temple is in a busy area with shops and hotels—easy to walk to from nearby locations', 4.8, 3, '2025-07-24 16:06:04', 2),
(5, 'Ashtalakshmi Temple', 'Besant Nagar', 'Chennai', 'Tamil Nadu', 9.2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCS11XQWBeAoKaOFhr5dkMXwgh9wwZ7xxlhg&s', '→ Ashtalakshmi Temple is a unique Hindu temple dedicated to Goddess Lakshmi and her eight divine forms, known as the Ashta Lakshmis.\n\n→ It is located on the shores of the Bay of Bengal in Besant Nagar, Chennai, Tamil Nadu.\n\n→ The temple was constructed in the 1970s and has since become a significant spiritual destination for devotees of wealth and prosperity.\n\n→ The eight forms of Lakshmi worshipped here include Adi Lakshmi, Dhana Lakshmi, Dhanya Lakshmi, Gaja Lakshmi, Santana Lakshmi, Veera Lakshmi, Vidya Lakshmi, and Vijaya Lakshmi.\n\n→ The temple architecture is distinctive, with multiple levels housing each form of Lakshmi in separate sanctums.\n\n→ The serene seaside setting adds to the peaceful and divine atmosphere of the temple.\n\n→ Devotees visit to seek blessings for wealth, knowledge, courage, fertility, and success in life.\n\n→ Special poojas and homams are conducted during Fridays, full moon days, and festivals like Varalakshmi Vratam and Navaratri.\n\n→ Ashtalakshmi Temple is a spiritual haven for those seeking balance, abundance, and divine grace in every aspect of life.', '🕉️ *Ashtalakshmi Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 06:30 AM to 12:00 PM\n\n   🌞 Calm mornings with opportunity to worship all eight forms of Goddess Lakshmi\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:00 PM to 09:00 PM\n\n   🌇 Beautiful lighting enhan', '📍 *How to Reach Ashtalakshmi Temple* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 MTC buses to Besant Nagar are available from all major city areas.\n\n   📌 Nearest stop: Besant Nagar Bus Depot\n\n\n🚆 *By Train:*\n\n   🚉 Closest MRTS Station: Kasturba Nagar or Thiruvanmiyur\n\n   🛤️ Connected to Chennai Beach, Fort, and Velachery\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Easily reachable via auto or taxi services\n\n   🧭 Use Google Maps: \"Ashtalakshmi Temple, Besant Nagar Beach\"\n\n\n✈️ *By Air:*\n\n   🛫 Chennai Airport is about 15 km away\n\n   🚕 Take a cab directly to Besant Nagar\n\n\n🚶 *On Foot:*\n\n   🏃 Located near Elliot’s Beach, just a short walk from the beachfront', 4.5, 1300, '2025-07-24 16:06:04', 4),
(6, 'ISKCON Temple', 'Injambakkam', 'Chennai', 'Tamil Nadu', 16, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ4-SmZDMz8XID-h0KnHa1mabvOFadSCEycw&s', '→ ISKCON Temple Chennai is a prominent temple dedicated to Lord Krishna and Radha, located in Sholinganallur, Chennai, Tamil Nadu.\n\n→ It is part of the International Society for Krishna Consciousness (ISKCON), founded by Srila Prabhupada to spread the teachings of the Bhagavad Gita and promote devotion to Lord Krishna.\n\n→ The temple, opened in 2012, is one of the largest ISKCON temples in India and features beautiful architecture with marble interiors and intricate carvings.\n\n→ The main sanctum houses the deities of Radha Krishna, along with Jagannath, Baladeva, Subhadra, and Sri Nitai Gauranga.\n\n→ The temple is a spiritual and cultural hub that regularly hosts kirtans, bhajans, and discourses on the Bhagavad Gita and Srimad Bhagavatam.\n\n→ Devotees and visitors are drawn to its serene atmosphere and the uplifting devotional music and chanting.\n\n→ The temple also runs a Govinda’s restaurant, offering pure vegetarian food, and conducts food distribution and outreach programs.\n\n→ Festivals like Janmashtami, Radhashtami, and Gaura Purnima are celebrated grandly with colorful processions, cultural performances, and special rituals.\n\n→ ISKCON Chennai serves as a peaceful retreat for spiritual seekers and promotes values of devotion, service, and community harmony.', '🕉️ *ISKCON Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 04:30 AM to 01:00 PM\n\n   🌄 Begins with Mangala Aarti, followed by Tulasi Puja and Srimad Bhagavatam discourse\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:00 PM to 08:30 PM\n\n   🌆 Sandhya Aarti and devoti', '📍 *How to Reach ISKCON Temple, Chennai* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 MTC buses to Injambakkam, ECR route are available frequently.\n\n   📌 Nearest stop: Akkarai Bus Stop\n\n\n🚆 *By Train:*\n\n   🚉 Nearest MRTS: Velachery (then connect via road)\n\n   🛤️ Further travel by auto/taxi from MRTS station\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Take a cab or auto via East Coast Road (ECR)\n\n   🧭 Destination: \"ISKCON Temple Chennai, Akkarai\"\n\n\n✈️ *By Air:*\n\n   🛫 Approximately 17 km from Chennai Airport\n\n   🚕 Take an app-based taxi or prepaid cab\n\n\n🚶 *On Foot:*\n\n   🏃 Located off ECR; not walkable unless nearby—use road transport', 3.0, 1, '2025-07-24 16:06:04', 3),
(7, 'Kalikambal Temple', 'Parrys', 'Chennai', 'Tamil Nadu', 5.5, 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Kaalikaambaal_Temple_Main_Entrance%2C_Chennai.jpg', '→ Kalikambal Temple is a historic Hindu temple dedicated to Goddess Kalikambal, a form of Parvati, located in the bustling area of Georgetown, Chennai, Tamil Nadu.\n\n→ The temple also houses Lord Kamateswarar (Shiva) as a principal deity, symbolizing the union of Shiva and Shakti.\n\n→ It is believed that the original idol of the goddess was fierce (Ugra form), but later it was replaced with a more peaceful (Shanta) form.\n\n→ The temple has existed since the 17th century and was visited by legendary figures such as Chhatrapati Shivaji Maharaj in 1677.\n\n→ The architecture of the temple features traditional South Indian elements, including a tall gopuram, pillared halls, and vibrant sculptures.\n\n→ Kalikambal Temple is especially crowded during Fridays and auspicious days like Navaratri, Aadi, and Panguni Uthiram.\n\n→ Devotees pray here for protection, success in business, marriage, and overall well-being.\n\n→ The temple’s location near major commercial hubs makes it an important spiritual stop for traders and professionals in the area.\n\n→ Kalikambal Temple continues to be a center of devotion, culture, and spiritual strength in the heart of Chennai.', '🕉️ *Kalikambal Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 05:30 AM to 12:00 PM\n\n   🌄 Ideal for peaceful early morning worship and daily poojas\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:00 PM to 09:00 PM\n\n   🌆 Evening hours are vibrant with aarti and chan', '📍 *How to Reach Kalikambal Temple* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 Frequent buses available to Parrys Corner area\n\n   📌 Nearest stop: Parrys Corner or NSC Bose Road\n\n\n🚆 *By Train:*\n\n   🚉 Nearest station: Chennai Beach (just 1 km away)\n\n   🛤️ Easily walkable from the station\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Auto rickshaws and taxis widely available around Parrys\n\n   🧭 Destination: \"Kalikambal Temple, Thambu Chetty Street\"\n\n\n✈️ *By Air:*\n\n   🛫 About 20 km from Chennai Airport\n\n   🚕 Accessible by taxi or metro + train\n\n\n🚶 *On Foot:*\n\n   🏃 Located in the heart of old Chennai—walkable from nearby commercial areas', 4.6, 1600, '2025-07-24 16:06:04', 1),
(8, 'Sri Ranganathar Temple', 'Thiruvallikeni', 'Chennai', 'Tamil Nadu', 7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq_M0smaOj1QyCXHQB5h7KMrCqcHaqahxcXA&s', '→ Sri Ranganathar Temple is a sacred Hindu temple dedicated to Lord Ranganathar, a reclining form of Lord Vishnu.\n\n→ It is located in Thiruneermalai near Chennai, Tamil Nadu, and is one of the 108 Divya Desams revered by the Alwars.\n\n→ The temple complex is situated on a small hill and in the foothills, with separate shrines for Lord Ranganathar and other deities.\n\n→ The main sanctum houses the deity in a reclining posture on the Adishesha (serpent), signifying divine rest and cosmic balance.\n\n→ It also features shrines for Lord Narasimha, Lord Rama, and other forms of Vishnu, making it unique in Vaishnava worship.\n\n→ The temple architecture is traditional Dravidian style, with intricately carved pillars, gopurams, and beautiful sculptures.\n\n→ The serene hilltop location offers a peaceful and spiritual atmosphere for meditation and prayer.\n\n→ Major festivals celebrated here include Vaikunta Ekadasi, Brahmotsavam, and Rama Navami, attracting large gatherings of devotees.\n\n→ Sri Ranganathar Temple is both a religious site and a cultural landmark, drawing pilgrims and tourists year-round.', '🕉️ *Sri Ranganathar Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 06:00 AM to 12:00 PM\n\n   🌄 Devotees can participate in Suprabhata Seva and Archana to Lord Ranganatha\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:00 PM to 08:30 PM\n\n   🌇 Evening pujas are peace', '📍 *How to Reach Sri Ranganathar Temple, Thiruneermalai* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 MTC buses go to Pallavaram and Chrompet\n\n   📌 From there, take local autos to Thiruneermalai\n\n\n🚆 *By Train:*\n\n   🚉 Nearest railway station: Pallavaram (suburban)\n\n   🛤️ Then take a cab/auto (approx. 5-6 km)\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Well connected by road from Tambaram or Airport side\n\n   🧭 Navigate to \"Sri Ranganathar Temple, Thiruneermalai\"\n\n\n✈️ *By Air:*\n\n   🛫 Very close to Chennai Airport (around 10 km)\n\n   🚕 Prepaid taxis available at airport\n\n\n🚶 *On Foot:*\n\n   🏃 From Thiruneermalai village, steps lead up to the hill temple', 4.5, 1250, '2025-07-24 16:06:04', 3),
(9, 'Thiruvotriyur Thyagaraja Temple', 'Thiruvotriyur', 'Chennai', 'Tamil Nadu', 12, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJsfsKkff0dOO8zY-c4lT7udwxG_LslO4J_g&s', '→ Thiruvotriyur Thyagaraja Temple is one of the oldest and most revered Shiva temples located in the northern part of Chennai, Tamil Nadu.\n\n→ The temple is dedicated to Lord Shiva, worshipped here as Thyagaraja, and Goddess Parvati, known as Vadivudai Amman.\n\n→ It is believed to have existed for over 1,000 years and is deeply connected to Saivite saints like Appar, Sundarar, and Thirugnanasambandar.\n\n→ The temple is renowned for its massive size, grand architecture, and richly decorated gopurams (gateway towers).\n\n→ Vadivudai Amman is considered one of the three powerful forms of Goddess Shakti in the region, making the temple a Shakti Peetam.\n\n→ The temple hosts many sacred rituals and festivals, especially the grand Brahmotsavam, Mahashivaratri, and Navaratri.\n\n→ Devotees come to seek blessings for spiritual strength, health, prosperity, and marital harmony.\n\n→ The sacred temple tank, large mandapams, and elaborate carvings reflect the temple’s historical and spiritual significance.\n\n→ Thiruvotriyur Thyagaraja Temple remains a vital cultural and devotional center in Chennai, drawing pilgrims from all over.', '🕉️ *Thiruvotriyur Thyagaraja Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 05:30 AM to 12:00 PM\n\n   🌅 Morning rituals include abhishekam and alangaram for Lord Thyagaraja and Goddess Vadivudai Amman\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:00 PM to 09:00 P', '📍 *How to Reach Thiruvotriyur Thyagaraja Temple* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 Plenty of MTC buses connect Thiruvotriyur from Broadway and other areas\n\n   📌 Nearest stop: Thiruvotriyur Temple\n\n\n🚆 *By Train:*\n\n   🚉 Nearest station: Thiruvotriyur Railway Station (Suburban)\n\n   🛤️ Local trains from Chennai Central or Beach\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Easily accessible by road via Ennore High Road\n\n   🧭 Use Google Maps: \"Thyagaraja Swamy Temple, Thiruvotriyur\"\n\n\n✈️ *By Air:*\n\n   🛫 Approx. 25 km from Chennai International Airport\n\n   🚕 Taxis available for a direct ride\n\n\n🚶 *On Foot:*\n\n   🏃 Easily walkable from local areas in Thiruvotriyur', 4.7, 1900, '2025-07-24 16:06:04', 1),
(10, 'Agastheeswarar Temple', 'Villivakkam', 'Chennai', 'Tamil Nadu', 10, 'https://upload.wikimedia.org/wikipedia/commons/9/9c/Agathiyampalli_%287%29.jpg', '→ Agastheeswarar Temple is an ancient Hindu temple dedicated to Lord Shiva, located in Kolapakkam near Chennai, Tamil Nadu.\n\n→ The presiding deity, Lord Agastheeswarar, is believed to have been worshipped by Sage Agastya, after whom the temple is named.\n\n→ According to legend, Sage Agastya was sent south by Lord Shiva to balance the earth during the celestial wedding of Shiva and Parvati.\n\n→ The temple holds significant mythological and spiritual importance for devotees and scholars alike.\n\n→ The sanctum sanctorum houses Lord Shiva in the form of a lingam, and the temple also includes shrines for Goddess Parvati and Lord Ganesha.\n\n→ The architecture is typical of South Indian temples, featuring a gopuram, pillared halls, and traditional stone carvings.\n\n→ Festivals like Mahashivaratri and Pradosham are celebrated with devotion and attract many local devotees.\n\n→ It is considered an auspicious site for those seeking knowledge, spiritual growth, and blessings from Lord Shiva.\n\n→ Agastheeswarar Temple offers a peaceful atmosphere for prayer and reflection, nestled away from the city bustle.', '🕉️ *Agastheeswarar Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 06:00 AM to 11:30 AM\n\n   🌄 Calm and spiritual atmosphere for daily rituals and abhishekam\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:30 PM to 08:30 PM\n\n   🌆 Evening poojas are serene and attrac', '📍 *How to Reach Agastheeswarar Temple, Nungambakkam* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 Regular MTC buses serve the Nungambakkam area\n\n   📌 Nearest stop: Sterling Road or Valluvar Kottam\n\n\n🚆 *By Train:*\n\n   🚉 Nungambakkam Railway Station is very close\n\n   🛤️ Suburban train connectivity to all major lines\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Central location; easily accessible by autos/cabs\n\n   🧭 Navigate to: \"Agastheeswarar Temple, Nungambakkam\"\n\n\n✈️ *By Air:*\n\n   🛫 Around 13 km from the airport\n\n   🚕 Taxis or metro + auto combination works well\n\n\n🚶 *On Foot:*\n\n   🏃 Located in a walkable neighborhood—near Loyola College', 4.4, 900, '2025-07-24 16:06:04', 1),
(11, 'Arupadai Murugan Temple', 'Besant Nagar', 'Chennai', 'Tamil Nadu', 9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQExf-G2fJzE62Xfu43WBFiFWzqLUPvlx7Ijg&s', '→ Arupadai Murugan Temple is a dedicated shrine honoring Lord Murugan and symbolizes the six sacred abodes (Arupadai Veedu) of the deity.\n\n→ It is located in Besant Nagar, Chennai, Tamil Nadu, and serves as a spiritual representation of all six major Murugan temples in Tamil Nadu.\n\n→ The temple allows devotees to worship all forms of Lord Murugan under one roof, making it a unique and spiritually powerful destination.\n\n→ Each sanctum within the temple represents a particular Arupadai Veedu such as Palani, Thiruchendur, Swamimalai, Thiruthani, Pazhamudircholai, and Thiruparamkundram.\n\n→ The architecture reflects traditional South Indian styles with beautiful gopurams and intricately carved sanctums.\n\n→ It is a place of devotion especially during major Murugan festivals like Skanda Sashti, Thaipusam, and Panguni Uthiram.\n\n→ The temple regularly conducts abhishekams, homams, and special poojas for Lord Murugan and his consorts Valli and Deivanai.\n\n→ Located near the seashore, the temple also provides a peaceful and serene atmosphere for prayer and reflection.\n\n→ Arupadai Murugan Temple stands as a spiritual beacon for devotees who may not be able to travel to all six original abodes of Lord Murugan.', '🕉️ *Arupadai Murugan Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 05:30 AM to 12:00 PM\n\n   🌄 Early morning abhishekam and pooja to Lord Murugan are spiritually uplifting\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:00 PM to 08:30 PM\n\n   🌇 Evening rituals incl', '📍 *How to Reach Arupadai Murugan Temple, Kalakshetra Colony* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 Frequent buses along East Coast Road (ECR)\n\n   📌 Nearest stop: Kalakshetra or Thiruvanmiyur\n\n\n🚆 *By Train:*\n\n   🚉 MRTS Station: Thiruvanmiyur\n\n   🛤️ Take an auto or walk approx. 1.5 km from station\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Reachable via ECR or OMR from all parts of Chennai\n\n   🧭 Use Google Maps: \"Arupadai Veedu Murugan Temple, Kalakshetra\"\n\n\n✈️ *By Air:*\n\n   🛫 Chennai International Airport is around 15 km away\n\n   🚕 Airport taxis are the best option\n\n\n🚶 *On Foot:*\n\n   🏃 Located close to Kalakshetra Colony, walkable from nearby beach areas', 4.6, 1400, '2025-07-24 16:06:04', 2),
(12, 'Kandaswamy Temple', 'George Town', 'Chennai', 'Tamil Nadu', 4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpLq0eVpz27NcHltr3bkPZrBL6MrGCQVt0zQ&s', '→ Kandaswamy Temple is a prominent Hindu temple dedicated to Lord Murugan, also known as Kandaswamy or Subramanya.\n\n→ It is located in Cheyyur, near Chennai, Tamil Nadu, India, and is believed to be several centuries old.\n\n→ The temple holds deep spiritual importance for Murugan devotees and is considered a powerful place of worship.\n\n→ The presiding deity, Lord Kandaswamy, is enshrined in a majestic form and is accompanied by his consorts Valli and Deivanai.\n\n→ The temple showcases traditional Dravidian architecture with a towering gopuram, intricate sculptures, and a peaceful sanctum.\n\n→ It is well known for its vibrant festivals, especially Panguni Uthiram, Skanda Sashti, and Thaipusam, which attract large crowds.\n\n→ Rituals and poojas are performed daily with devotion, following Tamil Saivite traditions.\n\n→ The temple complex includes sacred tanks, mandapams, and a calm, spiritual atmosphere ideal for meditation and prayer.\n\n→ Kandaswamy Temple is a vital religious landmark in the region, offering blessings, spiritual comfort, and cultural heritage.', '🕉️ *Kandaswamy Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 06:00 AM to 12:00 PM\n\n   🌄 Peaceful early morning poojas and abhishekams are performed for Lord Murugan\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 04:30 PM to 09:00 PM\n\n   🌇 Evening worship includes d', '📍 *How to Reach Kandaswamy Temple, George Town* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 MTC buses to Broadway, Parrys Corner\n\n   📌 Nearest stop: Mannady or Parrys Corner\n\n\n🚆 *By Train:*\n\n   🚉 Nearest suburban station: Chennai Beach\n\n   🛤️ Short walk from station (less than 1 km)\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Located in central George Town area—auto/cab friendly\n\n   🧭 Navigate to: \"Kandaswamy Temple, Rasappa Chetty Street\"\n\n\n✈️ *By Air:*\n\n   🛫 About 20 km from Chennai Airport\n\n   🚕 Best reached by taxi or via train from airport metro + transfer\n\n\n🚶 *On Foot:*\n\n   🏃 Easily walkable from Parrys, Sowcarpet, Mannady streets', 5.0, 1, '2025-07-24 16:06:04', 2),
(13, 'Chitrakulam Temple', 'Mylapore', 'Chennai', 'Tamil Nadu', 3.5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWAmVnsplXM_IgOWlvkfAmPETK476kCy1V4w&s', '→ Chitrakulam Temple, also known as Adi Kesava Perumal Temple, is a historic Hindu temple dedicated to Lord Vishnu.\n\n→ It is located in Mylapore, Chennai, Tamil Nadu, India, adjacent to the sacred Chitrakulam tank.\n\n→ The temple is revered as the birthplace of Sri Vedanta Desikar, a renowned Vaishnava philosopher and saint.\n\n→ The presiding deity is Adi Kesava Perumal (a form of Lord Vishnu), and his consort is Mayuravalli Thayar.\n\n→ The temple architecture reflects classic South Indian style with a serene and devotional atmosphere.\n\n→ The Chitrakulam tank is used during temple festivals and is believed to have sacred waters.\n\n→ The temple plays a central role during festivals like Vaikunta Ekadasi and Brahmotsavam.\n\n→ It is an important spiritual spot for followers of the Sri Vaishnavism tradition.\n\n→ Despite its small size, the temple is a tranquil and spiritually charged destination within the heart of the city.', '🕉️ *Chitrakulam Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 06:00 AM to 11:00 AM\n\n   🌄 Serene mornings are perfect for peaceful darshan and poojas\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 05:00 PM to 08:30 PM\n\n   🌆 The temple ambiance is calm, especially du', '📍 *How to Reach Chitrakulam Temple, Mylapore* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 Several buses to Luz Corner, Mylapore\n\n   📌 Nearest stop: Luz or Kapaleeswarar Temple stop\n\n\n🚆 *By Train:*\n\n   🚉 MRTS Station: Thirumayilai (Mylapore)\n\n   🛤️ Walk or take an auto to Chitrakulam Tank area\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Very accessible via Luz Church Road or RK Mutt Road\n\n   🧭 Search: \"Chitrakulam Tank Temple, Mylapore\"\n\n\n✈️ *By Air:*\n\n   🛫 Chennai Airport (approx. 17 km)\n\n   🚕 Reach via taxi or metro + auto combination\n\n\n🚶 *On Foot:*\n\n   🏃 Short walk from Luz junction or Kapaleeshwarar temple area', 4.4, 950, '2025-07-24 16:06:04', 3),
(14, 'Prasanna Venkatesa Perumal Temple', 'Saidapet', 'Chennai', 'Tamil Nadu', 6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNyVNh2j1q6CZ1tpv_EQwszBQPjwP7PxUUqQ&s', '→ Prasanna Venkatesa Perumal Temple is a revered Hindu temple dedicated to Lord Vishnu in the form of Prasanna Venkatesa Perumal.\n\n→ It is located in Saidapet, Chennai, Tamil Nadu, India.\n\n→ The temple is believed to be centuries old and holds strong cultural and spiritual importance among Vaishnavites.\n\n→ The presiding deity, Lord Venkatesa Perumal, is depicted in a standing posture, flanked by his consorts Sridevi and Bhoodevi.\n\n→ The temple follows the Sri Vaishnava tradition and conducts rituals according to Pancharatra Agama.\n\n→ It features traditional South Indian temple architecture with a beautiful gopuram and peaceful sanctum.\n\n→ The temple is especially crowded on Saturdays and during Purattasi month, which is considered highly auspicious for Vishnu worship.\n\n→ Festivals such as Vaikunta Ekadasi, Brahmotsavam, and Krishna Jayanthi are celebrated with great devotion.\n\n→ It serves as a spiritual sanctuary for devotees seeking peace, blessings, and divine guidance in the bustling city.', '🕉️ *Prasanna Venkatesa Perumal Temple Timings* 🕉️\n\n\n→ 🕰️ *Morning Darshan:*\n\n   ⏰ 06:00 AM to 11:30 AM\n\n   🌅 Calm and divine start to the day with Suprabhatam and Vishnu Sahasranamam\n\n\n→ 🕰️ *Evening Darshan:*\n\n   ⏰ 05:00 PM to 08:30 PM\n\n   🌆 Evening aarti', '📍 *How to Reach Prasanna Venkatesa Perumal Temple, Saidapet* 📍\n\n\n🚌 *By Bus:*\n\n   🚍 MTC buses to Saidapet are frequent from all zones\n\n   📌 Nearest stop: Saidapet Bus Depot or Court\n\n\n🚆 *By Train:*\n\n   🚉 Suburban train station: Saidapet (just 300m away)\n\n   🛤️ Connects via Beach – Tambaram line\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Easily accessible via Anna Salai or Mount Road\n\n   🧭 Location: \"Prasanna Venkatesa Perumal Temple, Karuneegar Street, Saidapet\"\n\n\n✈️ *By Air:*\n\n   🛫 Around 10 km from Chennai International Airport\n\n   🚕 Quick cab access via GST Road\n\n\n🚶 *On Foot:*\n\n   🏃 Very walkable from Saidapet railway/bus stand', 4.6, 1000, '2025-07-24 16:06:04', 3),
(15, 'Thousand Lights Mosque (special)', 'Anna Salai', 'Chennai', 'Tamil Nadu', 5, 'https://www.theislamicheritage.com/uploads/submission_images/641_Thousan%20lights-TN.jpg', '→ Thousand Lights Mosque is one of the most famous and historic mosques in Chennai, Tamil Nadu, India.\n\n→ It is located in the Anna Salai area and serves as a major place of worship for Shia Muslims.\n\n→ The mosque gets its name from the tradition of lighting a thousand oil lamps to illuminate the prayer hall in earlier days.\n\n→ It was built in the early 19th century by Nawab Umdat-ul-Umrah, a ruler of the Carnatic.\n\n→ The mosque features impressive Islamic architecture with multiple domes and tall minarets.\n\n→ It has a spacious prayer hall that can accommodate thousands of worshippers.\n\n→ The mosque is not only a religious center but also a cultural and community gathering place.\n\n→ Important occasions like Muharram and Ramadan are observed with great devotion and large gatherings.\n\n→ Thousand Lights Mosque stands as a symbol of Chennai\'s religious diversity and architectural heritage.', '🕌 *Thousand Lights Mosque Timings* 🕌\n\n\n→ 🕰️ *Morning Prayers (Fajr):*\n\n   ⏰ 05:00 AM (varies seasonally)\n\n   🌅 Start your day with calm and spiritual reflection\n\n\n→ 🕰️ *Midday Prayer (Dhuhr):*\n\n   ⏰ 12:30 PM\n\n   🕊️ Quiet and focused prayer time for visito', '🕌 *How to Reach Thousand Lights Mosque, Chennai* 🕌\n\n\n🚌 *By Bus:*\n\n   🚍 MTC buses towards Anna Salai, Thousand Lights stop\n\n   📌 Nearest stop: Thousand Lights or Gemini Flyover\n\n\n🚆 *By Train:*\n\n   🚉 Nearest MRTS: Nungambakkam or Chetpet (followed by short ride)\n\n   🛤️ Metro Station: Thousand Lights Metro (just 100m away!)\n\n\n🚖 *By Auto/Taxi:*\n\n   🚗 Central location near Teynampet/Gemini Circle\n\n   🧭 Navigate to: \"Thousand Lights Mosque, Peters Road, Chennai\"\n\n\n✈️ *By Air:*\n\n   🛫 About 14 km from Chennai Airport\n\n   🚕 Metro + cab or direct taxi route available\n\n\n🚶 *On Foot:*\n\n   🏃 Located in the heart of Chennai—walkable from major roads like Mount Road and Greams Road', 4.7, 1500, '2025-07-24 16:06:04', 1),
(16, 'Murugan Temple SIMATS', 'SIMATS (THANDALAM)', 'Chennai', 'Tamil Nadu', 5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Dvj1cOsxilVC_ygUNst-Q5i-EuWwFJcSVw&s', '→ SIMATS Murugan Temple is a well-known temple dedicated to Lord Murugan, located inside the Saveetha Institute of Medical and Technical Sciences (SIMATS) campus in Chennai, Tamil Nadu, India.\r\n\r\n→ The temple serves as a spiritual center for students, faculty, and visitors, offering a peaceful place for prayer and meditation.\r\n\r\n→ It is dedicated to Lord Murugan, the Tamil deity of wisdom, courage, and victory, who is deeply revered across the state.\r\n\r\n→ The temple was built within the SIMATS premises to blend faith with education, ensuring that devotees have access to divine blessings in their everyday lives.\r\n\r\n→ It showcases traditional Dravidian temple architecture, with a beautifully designed gopuram, sanctum, and intricate carvings.\r\n\r\n→ The spacious temple hall allows devotees to participate in regular pujas, special abhishekams, and festive celebrations.\r\n\r\n→ Festivals such as Thai Poosam, Panguni Uthiram, and Karthigai Deepam are observed with devotion and attract large gatherings.\r\n\r\n→ The temple is not just a place of worship but also a cultural and community gathering spot for the SIMATS fraternity.\r\n\r\n→ Simats Murugan Temple stands as a symbol of faith, tradition, and divine grace within a modern educational environment.', '🏯 SIMATS Murugan Temple Timings 🏯\r\n\r\n→ 🕰️ Morning Pooja:\r\n\r\n⏰ 06:00 AM – 07:30 AM\r\n\r\n🌅 Begin your day with Lord Murugan’s blessings and positive energy.\r\n\r\n→ 🕰️ Evening Pooja:\r\n\r\n⏰ 06:00 PM – 07:30 PM\r\n\r\n🌙 Offer prayers after a peaceful day and seek divin', '🏯 How to Reach Simats Murugan Temple, Chennai 🏯\r\n\r\n🚌 By Bus:\r\n\r\n🚍 MTC buses towards Poonamallee / Saveetha Medical College route\r\n\r\n📌 Nearest stop: Saveetha Medical College / Saveetha Nagar\r\n\r\n🚆 By Train:\r\n\r\n🚉 Nearest railway station: Avadi (about 12 km away)\r\n\r\n🛤️ From Avadi, buses, autos, and cabs are available to reach the campus\r\n\r\n🚖 By Auto/Taxi:\r\n\r\n🚗 Located on Chennai–Bangalore Highway (NH48) near Thandalam\r\n\r\n🧭 Navigate to: “Saveetha Medical College & Hospital, Thandalam, Chennai”\r\n\r\n✈️ By Air:\r\n\r\n🛫 About 25 km from Chennai International Airport\r\n\r\n🚕 Can be reached via direct taxi or cab in ~45 minutes depending on traffic\r\n\r\n🚶 On Foot:\r\n\r\n🏃 The temple is situated inside the SIMATS (Saveetha University) campus, walkable from the main entrance of Saveetha Medical College.', 5.0, 1, '2025-07-24 16:06:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `temple_categories`
--

CREATE TABLE `temple_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temple_categories`
--

INSERT INTO `temple_categories` (`id`, `name`) VALUES
(1, 'Shiva'),
(2, 'Murugan'),
(3, 'Vishnu'),
(4, 'Amman'),
(5, 'Ganesh');

-- --------------------------------------------------------

--
-- Table structure for table `temple_favorites`
--

CREATE TABLE `temple_favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `temple_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temple_favorites`
--

INSERT INTO `temple_favorites` (`id`, `user_id`, `temple_id`, `created_at`) VALUES
(2, 1, 3, '2025-07-30 14:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `temple_images`
--

CREATE TABLE `temple_images` (
  `id` int(11) NOT NULL,
  `temple_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temple_images`
--

INSERT INTO `temple_images` (`id`, `temple_id`, `image_url`) VALUES
(1, 1, 'https://www.tamilnadutourism.com/images/chennai/card/kapaleeshwarar-temple.jpg'),
(2, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMKgPqzPOIpssP0JNaJp44RJYGWWPyw9MbTw&s'),
(3, 1, 'https://meghasen.in/wp-content/uploads/2023/05/Kapaleeshwarar-Temple-Chennai.jpg'),
(4, 2, 'https://c9admin.cottage9.com/uploads/5154/the-parthasarathy-swamy-temple.jpg'),
(5, 2, 'https://www.trawell.in/admin/images/upload/705431335Parthasarathy_Temple_Main.jpg'),
(6, 2, 'https://hindupost.in/wp-content/uploads/2021/06/parthasarathy-temple.png'),
(7, 3, 'https://img1.dinamalar.com/Kovilimages/T_500_1006.jpg'),
(8, 3, 'https://content3.jdmagicbox.com/v2/comp/chennai/05/044p3028405/catalogue/arulmigu-marundeeswarar-temple-thiruvanmiyur-chennai-temples-3sk3zbb.jpg'),
(9, 3, 'https://www.rvatemples.com/wp-content/uploads/2018/06/sri-marundeeswarar-temple_1406879737.jpg'),
(10, 4, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/f6/6a/b2/aerial-view.jpg?w=900&h=-1&s=1'),
(11, 4, 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjfTMujpSuBg5U7k7qC7Up9Wa21USC3tzAnCKrdrhptHHXIhgdmXicF0TqIIU1EqUUNW_E_ee5y-Nzl4S8NKOruenuFAk11uP_KN3qJnj3mxnZ4c6euftotyNbasqv_khYG97iFYHZI3Xw/w640-h480/vadapalani-temple-2.jpg'),
(12, 5, 'https://travelsetu.com/apps/uploads/new_destinations_photos/destination/2023/12/21/ce893f7e311cd12522a72f2f6de775f9_1000x1000.jpg'),
(13, 5, 'https://upload.wikimedia.org/wikipedia/commons/d/de/Main_entrance_of_Ashtalakshmi_temple_in_Hyderabad_01.jpg'),
(14, 6, 'https://upload.wikimedia.org/wikipedia/commons/4/4c/ISKCON-Temple-Chennai-3.JPG'),
(15, 6, 'https://media-cdn.tripadvisor.com/media/photo-s/08/48/37/15/iskcon-chennai-sri-sri.jpg'),
(16, 7, 'https://static.toiimg.com/photo/49009178/.jpg'),
(17, 7, 'https://famoustemplesofindia.com/wp-content/uploads/2024/03/Kamadeswarar-Kalikambal-Temple-Chennai-3-768x1024.jpg'),
(18, 8, 'https://i0.wp.com/www.traveldiaryparnashree.com/wp-content/uploads/2019/06/Sri-Ranganathaswamy-Temple-Cover.jpg?resize=745%2C600&ssl=1'),
(19, 8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6g4-JFW4KQjfudACC4KObvexaILSJyBOjdw&s'),
(20, 9, 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgCy5ke7J1gKLQs0Tc-uPRtO61RlT_ElBN57AlfCMXRiedG95o__kBtOZ8nIVwJFvGL2hJrq3vcXhuC8-rDEtqiuGacophSs5f3dM8Hz5R4UTWPGB8ef6k44WAKfBdvSeBRcPN3lebavRQ/w400-h400/tiruvotriyur_swami.jpg'),
(21, 9, 'https://d3sftlgbtusmnv.cloudfront.net/blog/wp-content/uploads/2024/11/Tiruvottiyur-Temple-cp-840x425.jpg'),
(22, 10, 'https://www.templefolks.com/templefolks_admin/public/uploads/products/Agastheeswarar-965116.jpg'),
(23, 10, 'https://swarajya.gumlet.io/swarajya%2F2018-12%2Ff9596eb0-1d9b-4703-a4c3-e63c7d2f7f64%2FUntitled_design__4_.png?format=auto'),
(24, 11, 'https://www.indiatempletour.com/wp-content/uploads/2021/11/Arupadai-murugan-temple-Besant-nagar.jpg'),
(25, 11, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/c6/9f/ad/beauty-of-chennai-besant.jpg?w=1200&h=-1&s=1'),
(26, 12, 'https://upload.wikimedia.org/wikipedia/commons/6/61/Nallur_Kandasamy_front_entrance.jpg'),
(27, 12, 'https://static.wixstatic.com/media/64bed1_5275a248d8d04fae9149723a2615e569~mv2.jpg/v1/fill/w_1962,h_1148,al_c,q_90,usm_0.66_1.00_0.01,enc_avif,quality_auto/64bed1_5275a248d8d04fae9149723a2615e569~mv2.jpg'),
(28, 13, 'https://www.shutterstock.com/image-photo/chitrakulam-temple-tank-managed-by-600w-2440808335.jpg'),
(29, 13, 'https://thehinduimages.com/admin/images/pimages/p06620ae.jpg'),
(30, 14, 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3CoK-Nbx2dHVQ_KWidTB47jFB6MKPPDBTDDQpntOPYzpDzXyHUcv5GDZFwBzyunfTO0uGssXiqlewkARS5LToY9SlmJ9wSohnyiE824hG-A0J4iyGrFpzxiuwwHDKTjmFOsapRk5o2qbh/s1600/Optimized-Venkatesa-perumal.jpg'),
(31, 14, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPVFD5dvqYgxco7qnQqW3D29Yvq2PP839Xow&s'),
(32, 15, 'https://pbs.twimg.com/media/EwiRe3bVgAA9qo4?format=jpg&name=4096x4096'),
(33, 15, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc3wvGgOBVMIshb3xolOCNy-pTqsal29uV9SttLvVAcTbhtdWT2djgu2EvZw96IeD93kA&usqp=CAU'),
(34, 16, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWJ-sxWWlz_TlhrTB82ljjjo5PcNkqA7VNcGUVkWV_05jZhP3AqbFZSSgx8EOxO-YW6C4&usqp=CAU'),
(35, 16, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0IDOaOu8qiDn6acHwnFiZinEb4GwzJzSXr8iiHMuSaK2OfU00eYBNaEFSPRlst9FQXVQ&usqp=CAU');

-- --------------------------------------------------------

--
-- Table structure for table `temple_reviews`
--

CREATE TABLE `temple_reviews` (
  `id` int(11) NOT NULL,
  `temple_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` decimal(2,1) NOT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temple_reviews`
--

INSERT INTO `temple_reviews` (`id`, `temple_id`, `user_id`, `rating`, `review`, `created_at`) VALUES
(1, 1, 1, 5.0, 'Amazing temple with rich history and architecture.', '2025-07-24 16:07:48'),
(2, 1, 2, 4.8, 'Very peaceful place, must visit during festivals.', '2025-07-24 16:07:48'),
(3, 1, 3, 4.5, 'Beautiful gopuram and divine atmosphere.', '2025-07-24 16:07:48'),
(4, 2, 1, 4.7, 'Parthasarathy temple is one of the oldest in Chennai.', '2025-07-24 16:07:48'),
(5, 2, 2, 4.6, 'Great spiritual vibes and well-maintained premises.', '2025-07-24 16:07:48'),
(6, 3, 1, 4.6, 'Marundeeswarar temple is very special for healing prayers.', '2025-07-24 16:07:48'),
(7, 3, 2, 4.5, 'Serene atmosphere near the beach.', '2025-07-24 16:07:48'),
(8, 4, 1, 4.8, 'Vadapalani Murugan temple is very famous for weddings.', '2025-07-24 16:07:48'),
(9, 4, 2, 4.7, 'Highly spiritual and crowded during weekends.', '2025-07-24 16:07:48'),
(10, 5, 1, 4.5, 'Beautiful seaside temple dedicated to Goddess Lakshmi.', '2025-07-24 16:07:48'),
(11, 5, 2, 4.4, 'Great temple with scenic location.', '2025-07-24 16:07:48'),
(12, 1, 1, 4.8, 'Very peaceful temple, loved the atmosphere.', '2025-07-24 16:31:23'),
(13, 6, 14, 3.0, 'nice temple', '2025-07-27 19:01:52'),
(14, 1, 15, 4.0, 'good', '2025-07-29 05:43:35'),
(15, 1, 1, 4.0, 'well cleaned', '2025-07-30 16:31:43'),
(16, 1, 15, 4.0, 'good', '2025-07-30 17:36:03'),
(17, 4, 15, 5.0, 'Nicee', '2025-07-30 17:42:21'),
(18, 1, 15, 5.0, 'Very Good', '2025-07-30 17:44:15'),
(19, 12, 15, 5.0, 'good', '2025-08-22 05:43:38'),
(20, 16, 15, 5.0, 'Good Atmosphere', '2025-09-13 04:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `temple_visited`
--

CREATE TABLE `temple_visited` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `temple_id` int(11) NOT NULL,
  `visited_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temple_visited`
--

INSERT INTO `temple_visited` (`id`, `user_id`, `temple_id`, `visited_at`) VALUES
(1, 1, 2, '2025-07-24 16:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `password`, `created_at`) VALUES
(1, 'Vivek', '9876543210', '$2y$10$lRh/Ng/yNqAgBSPbfEp12.ZKZEAQzbeZ5p4.y5hC5EeFtPC8womtO', '2025-07-24 16:04:21'),
(2, 'Anand', '9876500001', '$2y$10$lRh/Ng/yNqAgBSPbfEp12.ZKZEAQzbeZ5p4.y5hC5EeFtPC8womtO', '2025-07-24 16:04:21'),
(3, 'Priya', '9876500002', '$2y$10$lRh/Ng/yNqAgBSPbfEp12.ZKZEAQzbeZ5p4.y5hC5EeFtPC8womtO', '2025-07-24 16:04:21'),
(4, 'Suresh', '9876500003', '$2y$10$lRh/Ng/yNqAgBSPbfEp12.ZKZEAQzbeZ5p4.y5hC5EeFtPC8womtO', '2025-07-24 16:04:21'),
(5, 'Karthik', '9876500004', '$2y$10$lRh/Ng/yNqAgBSPbfEp12.ZKZEAQzbeZ5p4.y5hC5EeFtPC8womtO', '2025-07-24 16:04:21'),
(6, 'Meena', '9876500005', '$2y$10$lRh/Ng/yNqAgBSPbfEp12.ZKZEAQzbeZ5p4.y5hC5EeFtPC8womtO', '2025-07-24 16:04:21'),
(7, 'Lakshmi', '9876500006', '$2y$10$lRh/Ng/yNqAgBSPbfEp12.ZKZEAQzbeZ5p4.y5hC5EeFtPC8womtO', '2025-07-24 16:04:21'),
(8, 'Arjun', '9876500007', '$2y$10$lRh/Ng/yNqAgBSPbfEp12.ZKZEAQzbeZ5p4.y5hC5EeFtPC8womtO', '2025-07-24 16:04:21'),
(9, 'Deepa', '9876500008', '$2y$10$lRh/Ng/yNqAgBSPbfEp12.ZKZEAQzbeZ5p4.y5hC5EeFtPC8womtO', '2025-07-24 16:04:21'),
(10, 'Vignesh', '9876500009', '$2y$10$lRh/Ng/yNqAgBSPbfEp12.ZKZEAQzbeZ5p4.y5hC5EeFtPC8womtO', '2025-07-24 16:04:21'),
(13, 'Vivek', '9876543211', '$2y$10$lRh/Ng/yNqAgBSPbfEp12.ZKZEAQzbeZ5p4.y5hC5EeFtPC8womtO', '2025-07-25 16:05:40'),
(14, 'Ram', '9876543212', '$2y$10$IuvgA6BiAFrIlyRW2rcEP.IyF.thW/KX/op2x8nWHoLCw/WMVrCyS', '2025-07-26 17:06:56'),
(15, 'Tarun', '9502008907', '$2y$10$3.1SfSq5BrDm1zudYnrGhedwqfqt3XvgR3UC.b65yxdtattJRdVWy', '2025-07-29 05:42:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `itineraries`
--
ALTER TABLE `itineraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temples`
--
ALTER TABLE `temples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `temple_categories`
--
ALTER TABLE `temple_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temple_favorites`
--
ALTER TABLE `temple_favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`temple_id`),
  ADD KEY `temple_id` (`temple_id`);

--
-- Indexes for table `temple_images`
--
ALTER TABLE `temple_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temple_id` (`temple_id`);

--
-- Indexes for table `temple_reviews`
--
ALTER TABLE `temple_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temple_id` (`temple_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `temple_visited`
--
ALTER TABLE `temple_visited`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`temple_id`),
  ADD KEY `temple_id` (`temple_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `itineraries`
--
ALTER TABLE `itineraries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `temples`
--
ALTER TABLE `temples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `temple_categories`
--
ALTER TABLE `temple_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `temple_favorites`
--
ALTER TABLE `temple_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temple_images`
--
ALTER TABLE `temple_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `temple_reviews`
--
ALTER TABLE `temple_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `temple_visited`
--
ALTER TABLE `temple_visited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `temples`
--
ALTER TABLE `temples`
  ADD CONSTRAINT `temples_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `temple_categories` (`id`);

--
-- Constraints for table `temple_favorites`
--
ALTER TABLE `temple_favorites`
  ADD CONSTRAINT `temple_favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `temple_favorites_ibfk_2` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `temple_images`
--
ALTER TABLE `temple_images`
  ADD CONSTRAINT `temple_images_ibfk_1` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `temple_reviews`
--
ALTER TABLE `temple_reviews`
  ADD CONSTRAINT `temple_reviews_ibfk_1` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `temple_reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `temple_visited`
--
ALTER TABLE `temple_visited`
  ADD CONSTRAINT `temple_visited_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `temple_visited_ibfk_2` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
