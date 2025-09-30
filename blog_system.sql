-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2025 at 11:59 AM
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
-- Database: `blog_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(2, 'Agriculture'),
(3, 'journey'),
(4, 'technology'),
(5, 'jungle'),
(6, 'baby girl'),
(7, 'love story');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `name`, `email`, `comment`, `created_time`) VALUES
(1, 'ruchi', 'ruchi@gmail.com', 'nice', '2025-09-30 14:43:58'),
(2, 'rohit', 'rohit@gmail.com', 'very motivating', '2025-09-30 14:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `blog_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`contact_id`, `name`, `email`, `subject`, `message`, `blog_file`, `created_at`) VALUES
(1, 'nature rajput', 'naman@gmail.com', 'college life', 'I am a writer by profession, I am share with you my college life in the form of blog hope you like it and post it also.', '1758794715_naman_rajput_college_life.pdf', '2025-09-25 10:05:15'),
(2, 'nature rajput', 'naman@gmail.com', 'college life', 'I am a writer by profession, I am share with you my college life in the form of blog hope you like it and post it also.', '1758795424_naman_rajput_college_life.pdf', '2025-09-25 10:17:04'),
(3, 'ruchi gupta', 'ruchi@gmail.com', 'my hard days', 'i have to face such issues in my life when i was 23rd and no job opportunities their for me, in every where i fell left out.', '1758875974_My Hard Days.pdf', '2025-09-26 08:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `about_us` text NOT NULL,
  `author` varchar(255) NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `created_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `category_id`, `image`, `about_us`, `author`, `user_id`, `created_time`) VALUES
(1, 'A mango tree life', 2, '1758778277_mango tree.jpeg', 'The mango tree is a tropical evergreen tree known for its sweet and juicy fruit, the mango. It can grow up to 35–40 meters tall and has a dense canopy with fragrant leaves. Mango trees bloom with small, fragrant flowers and produce fruit that varies in size, shape, and color depending on the variety.\r\n\r\nMango trees are native to South Asia but are now cultivated in many tropical and subtropical regions worldwide. They thrive in warm climates and well-drained soil. Apart from providing delicious fruit, mango trees offer shade, timber, and medicinal benefits. The leaves, bark, and seeds are often used in traditional medicine.', 'admin', 0, '2025-09-25 11:01:17'),
(2, 'himalayas journey', 3, '1758792272_himalayas.jpeg', 'Introduction:\r\nThe Himalayas, the majestic mountain range stretching across Nepal, India, Bhutan, and Tibet, have always been a dream destination for adventurers and nature lovers. This journey is not just about the peaks but also about the serene valleys, vibrant cultures, and the sheer thrill of exploring untouched landscapes.\r\n\r\nDay 1: Arrival and Acclimatization\r\nWe landed in the picturesque town of Manali, surrounded by snow-capped peaks. The crisp mountain air and the gentle flow of the Beas River instantly set the mood. The day was spent acclimatizing, enjoying local cuisine, and planning the trekking route.\r\n\r\nDay 2: Trek to Solang Valley\r\nOur trek started early morning through pine forests and small villages. The sight of Solang Valley, with its rolling meadows and adventure sports activities, was breathtaking. Paragliding over the valley gave us a bird’s-eye view of the Himalayas – truly unforgettable!\r\n\r\nDay 3: Rohtang Pass Adventure\r\nWe drove to Rohtang Pass, where snow greeted us even in the summer. The icy winds and panoramic views of glaciers and mountain ridges were awe-inspiring. Photography enthusiasts were in heaven capturing the raw beauty of nature.\r\n\r\nDay 4: Villages and Culture\r\nWe visited a local village to experience Himalayan culture first-hand. From traditional Himachali food to folk music and handicrafts, the warmth of the local people added a personal touch to the journey.\r\n\r\nDay 5: Sunset at Naggar Castle\r\nOur trip ended at Naggar Castle, perched on a hill with stunning views of the Kullu Valley. Watching the sunset behind the Himalayas, painting the sky in shades of pink and orange, was a magical experience.\r\n\r\nConclusion:\r\nThe Himalayas are not just mountains; they are a journey into serenity, adventure, and self-discovery. Each step, each view, and each encounter leaves you with memories that last a lifetime. If you’re seeking a mix of adventure, culture, and breathtaking landscapes, the Himalayas should be on your travel list.', 'admin', 0, '2025-09-25 14:54:32'),
(3, 'my first smart phone', 4, '1758792429_phone.webp', 'Introduction:\r\nI still remember the excitement of holding my first smartphone. It was a tiny rectangle of possibilities, a window into a world I had only imagined before. The day I got it, I felt like I had entered the future.\r\n\r\nThe Unboxing Moment:\r\nUnwrapping the phone was like opening a treasure. Every detail—from the sleek screen to the smooth edges—made my heart race. I spent hours just exploring the settings, wallpapers, and pre-installed apps.\r\n\r\nFirst Impressions:\r\nThe touch screen was magical. I swiped, tapped, and scrolled like I had done it all my life. Suddenly, I could connect with friends instantly, watch videos, play games, and browse the internet, all from the palm of my hand.\r\n\r\nDiscovering Apps and Features:\r\nI downloaded apps one by one, exploring social media, music, and photography. Taking my first photos and seeing them on the screen was amazing. I even tried customizing my phone with widgets, themes, and ringtones—it felt like creating my own little world.\r\n\r\nLessons Learned:\r\nMy first smartphone taught me responsibility. I had to charge it, care for it, and manage my time wisely. At the same time, it opened doors to learning, creativity, and connecting with people in ways I had never experienced.\r\n\r\nConclusion:\r\nGetting my first smartphone wasn’t just about owning a device; it was about stepping into a world full of opportunities and excitement. It sparked a curiosity in me to explore technology and discover how it could make life more fun, efficient, and connected.', 'admin', 0, '2025-09-25 14:57:09'),
(4, 'Lover to Couple', 7, '1758875022_couple.jpeg', 'From Classmates to Soulmates: A Journey from Student to Lover to Couple\r\n\r\nLife has a funny way of turning ordinary moments into unforgettable memories. One day, you’re sharing notes in the library, and the next, you’re sharing secrets and dreams with someone who has completely captured your heart. This is the journey from being a student to becoming lovers, and eventually, a couple.\r\n\r\n1. The Student Phase – Innocent Beginnings\r\n\r\nEvery love story starts somewhere. Often, it begins in classrooms, cafeterias, or college corridors. Two students meet, exchange smiles, and maybe collaborate on a project. There’s excitement in small gestures – a borrowed pen, shared lunch, or a simple “good morning.” At this stage, the connection is mostly platonic but filled with subtle sparks.\r\n\r\nThe student phase is special because everything feels new. The laughter during group studies, the friendly arguments, and the shared stress of exams all become threads that start weaving a deeper bond.\r\n\r\n2. The Lover Phase – Discovering Feelings\r\n\r\nAs days turn into weeks, casual conversations grow longer, and small gestures start to mean more. That simple smile becomes something you wait for, that text in the middle of the night brings butterflies, and a hand brushed accidentally sends your heart racing.\r\n\r\nIn this phase, you start recognizing the little things that make the other person unique. You share your dreams, your fears, and your quirks. The connection deepens, and friendship slowly transforms into romance. Confessions are hesitant, and heartbeats are nervous, but every moment feels electric.\r\n\r\n3. Becoming a Couple – Commitment and Togetherness\r\n\r\nEventually, the feelings can no longer be contained. A conversation, a note, or a confession marks the transition from lovers to an official couple. Now, it’s about more than stolen glances – it’s about support, trust, and shared goals.\r\n\r\nBeing a couple means understanding each other’s strengths and weaknesses, cheering each other on through exams, and celebrating even the smallest victories together. It’s the perfect blend of friendship and romance – laughter, love, and loyalty all wrapped into one beautiful bond.\r\n\r\n4. Lessons from the Journey\r\n\r\nPatience is key: Love doesn’t always happen instantly. Sometimes, it grows quietly in the background of ordinary days.\r\n\r\nCommunication matters: Sharing thoughts and feelings early prevents misunderstandings later.\r\n\r\nFriendship first: Many strong couples start as friends – it creates a solid foundation.\r\n\r\nCherish every moment: From late-night study sessions to first dates, every moment adds to your love story.', 'admin', 0, '2025-09-26 13:53:42'),
(5, 'my village', 2, '1759145975_village.webp', 'The Story of My Village\r\n\r\nMy village is a place where life flows gently, away from the rush of cities. Surrounded by green fields, tall trees, and the songs of birds, it feels like a small world of peace and simplicity. The air is always fresh, carrying the fragrance of soil after the rains, and the mornings begin with the golden rays of the sun shining over the farmlands.\r\n\r\nMost people in my village are farmers. They rise early, work hard in the fields, and depend on the blessings of nature for their harvests. In every season, the land wears a new color — bright green during the monsoon, golden in the harvest time, and calm brown in the summer. Cows, goats, and hens are part of almost every household, making the village lively with their sounds.\r\n\r\nOur village also has traditions that keep everyone connected. Festivals are celebrated with great joy — whether it is Diwali with its lamps, Holi with colors, or the harvest festival when everyone shares food and thanks nature. The temple at the center of the village is not only a place of worship but also where people gather, discuss, and help each other.\r\n\r\nLife in my village may not have tall buildings or busy markets, but it has warmth in people’s hearts. Neighbors treat each other like family, and no one is left alone in times of need. Children run barefoot in the open fields, elders sit under the banyan tree sharing stories, and women weave together the bonds of home and community.\r\n\r\nFor me, my village is not just a place on the map — it is a part of my identity. It is where I learned the value of hard work, kindness, and living close to nature. Whenever I am away, I carry the memories of my village with me, because it is my first home, my root, and my pride.', 'admin', 0, '2025-09-29 17:09:35'),
(6, 'Track in jungle', 5, '1759146473_tracking.jpeg', 'A Day in the Jungle\r\n\r\nIt was early morning when I began my trek into the jungle. The sun was just rising, painting the sky in shades of orange and pink. The forest greeted me with the sound of chirping birds and the rustle of leaves as a cool breeze moved through the tall trees. Carrying only my backpack, a bottle of water, and a heart full of excitement, I stepped deeper into the unknown.\r\n\r\nThe jungle was alive. I could hear the distant call of a peacock, the chatter of monkeys jumping from branch to branch, and the soft crunch of dry leaves under my feet. The air smelled of wildflowers and damp soil, fresh and pure. At every step, I discovered something new — colorful butterflies resting on plants, tiny insects working hard, and wild fruits hanging like hidden treasures.\r\n\r\nAfter walking for an hour, I reached a small stream flowing gently over smooth stones. The water was so clear that I could see the fish swimming inside. I sat there for a while, dipping my hands into the cool water, feeling refreshed. It was as if the jungle itself had offered me a moment of rest.\r\n\r\nBut the trek wasn’t just calm and peaceful — it had its share of challenges too. At one point, the path became narrow and thorny, testing my courage. I also heard the sudden roar of an animal deep inside, which made my heart race. Though I never saw it, the sound reminded me that I was only a guest in this wild land.\r\n\r\nFinally, as I climbed a small hill inside the jungle, I was rewarded with a breathtaking view. From the top, I could see the endless green canopy stretching out like a sea of trees. The wind brushed against my face, carrying the smell of earth and freedom. In that moment, I felt strong, alive, and deeply connected to nature.\r\n\r\nThat day’s trek was not just a walk in the jungle — it was a journey into myself. The forest taught me patience, courage, and the beauty of silence. When I walked back home, I carried not just memories but also the spirit of the jungle within me.', 'Naman Rajput', 1, '2025-09-29 17:17:53'),
(7, 'Last Night', 3, '1759212361_dream.jpeg', 'The Dream of the Mountain\r\n\r\nLast night, a young girl closed her eyes and drifted into sleep. In her dream, she found herself standing at the foot of a tall, majestic mountain. Its peak touched the clouds, shining in the soft glow of the moon. With a curious heart, she began her journey upward.\r\n\r\nThe path was narrow and covered with flowers that glowed like little stars. She could hear the whispers of the wind guiding her way. Birds with bright wings flew beside her, as if they had been waiting to accompany her on this magical climb.\r\n\r\nAs she reached higher, the air grew cooler, and she saw sparkling waterfalls tumbling down the rocks. Each step felt lighter, as though the mountain itself wanted her to reach the top. Finally, after a long journey, she stood on the peak. From there, she could see endless valleys, rivers flowing like silver threads, and the night sky filled with countless stars.\r\n\r\nIn that moment, she felt a deep peace — as if she had touched a secret of the world. Just then, the morning sun peeked over the horizon, and she woke up, smiling. The mountain was only in her dream, but the beauty of that journey stayed alive in her heart.', 'niyati parihar', 2, '2025-09-30 11:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `status` tinyint(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `image`, `role`, `status`) VALUES
(1, 'naman rajput', 'naman@gmail.com', '$2y$10$z7yVcxti5vfUG28FjNLUEOE6FKNekmuMDJMfaRV40uNiPyhh8OvNe', '1758800908_naman.jpeg', 'user', 1),
(2, 'niyati parihar', 'niyati@gmail.com', '$2y$10$40DQZ6a2cEIJoQ6VpgGj1eU8EOGlwv3qPKCu.cKakB55PgETao73S', '1758800954_niyatiimg.jpeg', 'user', 1),
(3, 'admin', 'admin@blog.com', '$2y$10$caip476azbzQ.l3EtP7pa.gKpePyA8fKCezG9HcdYiL6/RvzOMv9y', '', 'admin', 1),
(4, 'ruchi gupta', 'ruchi@gmail.com', '$2y$10$0EVk2BokteSGjD5zLMvgzuDEv9PmV10O9Mv3qtfl8PqcuSBPninDS', '1759225535_ruchi.jpeg', 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
