-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 25 Jun 2021 pada 09.58
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple-anime-api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anime`
--

CREATE TABLE `anime` (
  `id` int(11) NOT NULL,
  `title` varchar(101) NOT NULL,
  `synopsis` text NOT NULL,
  `type` varchar(51) NOT NULL,
  `episodes` int(11) NOT NULL,
  `premiered` varchar(51) NOT NULL,
  `studios` varchar(51) NOT NULL,
  `genres` varchar(101) NOT NULL,
  `score` float NOT NULL,
  `source` varchar(51) NOT NULL,
  `cover` varchar(251) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anime`
--

INSERT INTO `anime` (`id`, `title`, `synopsis`, `type`, `episodes`, `premiered`, `studios`, `genres`, `score`, `source`, `cover`) VALUES
(1, 'Plastic Memories', 'Eighteen-year-old Tsukasa Mizugaki has failed his college entrance exams, but after pulling some strings, he manages to land a job at the Sion Artificial Intelligence Corporation. SAI Corp is responsible for the creation of \"Giftias\"—highly advanced androids which are almost indiscernible from normal humans. However, unlike humans, Giftias have a maximum lifespan of 81,920 hours, or around nine years and four months. Terminal Service One, the station Tsukasa was assigned to, is responsible for collecting Giftias that have met their expiration date, before they lose their memories and become hostile.  Promptly after joining Terminal Service One, Tsukasa is partnered with a beautiful Giftia named Isla. She is a Terminal Service veteran and considered the best in Giftia retrievals, contrary to her petite figure and placid nature. Time is fleeting though, and Tsukasa must come to terms with his feelings for Isla before her time is up. No matter how much someone desires it, nothing lasts forever.', 'TV', 13, 'Spring 2015', 'Doga Kobo', 'Scifi, Drama, Romance', 7.93, 'Original', 'uploads/cover/1.jpg'),
(2, 'Boogiepop and Others', 'Hushed exchanges among the female student populace of Shinyo Academy center around an enigmatic supernatural entity. This entity is Boogiepop, a Shinigami who is rumored to murder people at the height of their beauty before their allure wanes. Few know of his true nature: a guardian who, between periods of dormancy, manifests as the alter ego of a high school girl named Touka Miyashita to fend off \"the enemies of the world.\" Now, a string of mysterious disappearances—presumed by the school to be merely runaways—has caused Boogiepop to awaken. But somewhere in the academy, a menacing creature hides, waiting for its opportune moment to strike.  Boogiepop wa Warawanai subtly explores the intrinsic associations between human beings and their perception of time, while delving into its characters\' complex relationships, emotions, memories, and pasts.', 'TV', 18, 'Winter 2019', 'Madhouse', 'Mistery, Dementia, Horror, Psychological, Supernatural, Drama', 7.09, 'Light Novel', 'uploads/cover/2.jpg'),
(3, 'Galilei Donna: the story of three sisters in the search of a mystery', 'Three sisters, Hozuki, Kazuki, and Hazuki, are descendants of Galileo and have completely different personalities and tastes; they never meet eye-to-eye. One day, the girls are suddenly attacked by a mysterious organization. The organization was after the \"Galileo Tesoro\" which Galileo Galilei was said to have discovered. Still unaware of what was going on, the sisters escape on the airship they built after the sudden attack. But it won\'t be so easy for these three sisters to help each other out in a pinch when they\'re constantly at odds with each other. What is the Tesoro, and what is the organization after? And what about the relationship between the sisters? It\'s a threesome of cute girls, action, and mystery!', 'TV', 11, 'Fall 2013', 'A-1 Pictures', 'Action, Sci-Fi, Adventure', 6.43, 'Original', 'uploads/cover/3.jpg'),
(4, 'Tokyo ESP', 'Urushiba Rinka was a fairly normal high school girl, though she was a bit poor and her only family was her father. Then one day, she saw a penguin and some glowing fish swimming through the sky. Rinka might have thought it was a hallucination if there hadn\'t been another witness with her, a boy from her school with a strangely scratched-up face.  Contact with a fish caused her to pass out, and when she awoke, she had developed the power to move through inanimate objects... such as the floor of her apartment! Later, a call from her father showed her that she was not the only one the flying fish bestowed with hard-to-control superpowers! What exactly is going on here? And does Rinka\'s classmate know more about this situation than he\'s letting on?', 'TV', 12, 'Summer 2014', 'Xebec', 'Action, Sci-Fi, Comedy, Super Power, Supernatural, Shounen', 6.57, 'Manga', 'uploads/cover/4.jpg'),
(5, 'Monster', 'Dr. Kenzou Tenma, an elite neurosurgeon recently engaged to his hospital director\'s daughter, is well on his way to ascending the hospital hierarchy. That is until one night, a seemingly small event changes Dr. Tenma\'s life forever. While preparing to perform surgery on someone, he gets a call from the hospital director telling him to switch patients and instead perform life-saving brain surgery on a famous performer. His fellow doctors, fiancée, and the hospital director applaud his accomplishment; but because of the switch, a poor immigrant worker is dead, causing Dr. Tenma to have a crisis of conscience.  So when a similar situation arises, Dr. Tenma stands his ground and chooses to perform surgery on the young boy Johan Liebert instead of the town\'s mayor. Unfortunately, this choice leads to serious ramifications for Dr. Tenma—losing his social standing being one of them. However, with the mysterious death of the director and two other doctors, Dr. Tenma\'s position is restored. With no evidence to convict him, he is released and goes on to attain the position of hospital director.  Nine years later when Dr. Tenma saves the life of a criminal, his past comes back to haunt him—once again, he comes face to face with the monster he operated on. He must now embark on a quest of pursuit to make amends for the havoc spread by the one he saved.', 'TV', 74, 'Finished Airing', 'Madhouse', 'Drama, Horror, Mystery, Police, Psychological, Seinen, Thriller', 8.79, 'Manga', 'uploads/cover/5.jpg'),
(6, 'Heaven\'s Memo Pad', 'Narumi Fujishima may seem like a normal high school student at first glance, but in reality he is a pessimistic outsider. Due to his father\'s work, he had to constantly transfer schools, and thus he has never managed to become a part of society. When he is forced to join the gardening club by his cheerful classmate Ayaka Shinozaki, Narumi encounters the genius hacker Alice, who lives in isolation above Hanamaru, the ramen shop where Ayaka works part-time. He then discovers that Alice is running a special private detective agency, and that all her professional associates refer to themselves as \"NEET\"s: Not in Education, Employment, or Training.  Joining the NEET detective agency due to his personal connection with a criminal case, Narumi finds himself entangled in a world of dangerous investigations conducted by the ill-assorted group of detectives, all the while trying to track down the crime syndicate which seems to have mysterious ties to Alice.', 'TV', 12, 'Summer 2011', 'J.C.Staff', 'Mystery', 7.52, 'Light Novel', 'uploads/cover/6.jpg'),
(7, 'A Certain Magical Index III', 'Touma Kamijou can\'t catch a break. After the invasion of Academy City, political tensions continue to rise as both the science and magic factions collide head on. It appears that Academy City intends to declare war against the Roman Catholic Church, consequently plunging the whole world into global warfare. Touma soon finds himself on the front lines once again, striving to protect his friends and allies.  Toaru Majutsu no Index III serves as the last installment of the original franchise as Touma, Accelerator, and the true Level 0 Shiage Hamazura continue their separate journeys, leading up to the final act of the original light novel series.', 'TV', 26, 'Fall 2018', 'J.C.Staff', 'Action, Sci-Fi, Super Power, Magic', 6.77, 'Light Novel', 'uploads/cover/7.jpg'),
(8, 'A Certain Scientific Railgun T', 'The Daihasei Festival has begun, and that of course means that Tokiwadai Middle School—a prestigious all-girls\' middle school—is competing too. Despite the participation of the \"Ace of Tokiwadai,\" Mikoto Misaka, the other students who are participating are still putting their utmost effort into winning, no matter how impossible the feat may seem against her might.  However, not all is fun and games. Due to the festival, Academy City opens to the outside world, and various factions have begun plotting ways to infiltrate the city. Misaka appears to be on their radar, and as the festival proceeds, people lurking from the shadows begin to emerge...  Toaru Kagaku no Railgun T brings back the Tokiwadai Ace and her friends as they dive deeper into the dark side of Academy City. From terrorist attacks to ruthless underground projects, anything is possible in this city.', 'TV', 25, 'Winter 2020', 'J.C.Staff', 'Action, Sci-Fi, Super Power', 8.22, 'Manga', 'uploads/cover/8.jpg'),
(9, 'WorldEnd: What do you do at the end of the world? Are you busy? Will you save us?', 'Putting his life on the line, Willem Kmetsch leaves his loved ones behind and sets out to battle a mysterious monster, and even though he is victorious, he is rendered frozen in ice. It is during his icy slumber that terrifying creatures known as \"Beasts\" emerge on the Earth\'s surface and threaten humanity\'s existence. Willem awakens 500 years later, only to find himself the sole survivor of his race as mankind is wiped out.  Together with the other surviving races, Willem takes refuge on the floating islands in the sky, living in fear of the Beasts below. He lives a life of loneliness and only does odd jobs to get by. One day, he is tasked with being a weapon storehouse caretaker. Thinking nothing of it, Willem accepts, but he soon realizes that these weapons are actually a group of young Leprechauns. Though they bear every resemblance to humans, they have no regard for their own lives, identifying themselves as mere weapons of war. Among them is Chtholly Nota Seniorious, who is more than willing to sacrifice herself if it means defeating the Beasts and ensuring peace.  Willem becomes something of a father figure for the young Leprechauns, watching over them fondly and supporting them in any way he can. He, who once fought so bravely on the frontlines, can now only hope that the ones being sent to battle return safely from the monsters that destroyed his kind.', 'TV', 12, 'Spring 2017', 'Satelight, C2C', 'Sci-Fi, Drama, Romance, Fantasy', 7.71, 'Light Novel', 'uploads/cover/9.jpg'),
(10, 'Talentless Nana', 'Fifty years ago, horrific creatures dubbed as the \"enemies of humanity\" suddenly appeared around the world. To combat these threats, teenagers gifted with supernatural abilities called \"Talents\"—such as pyrokinesis and time travel—hone their powers at an academy on a secluded island.  Nanao Nakajima, however, is quite different from the others on the island: he has no Talent. With many \"Talented\" teenagers around him, Nanao is often a target for bullying, but even so, he still strives to complete his training. Soon after, two transfer students, the mysterious Kyouya Onodera and the mind-reading Nana Hiiragi, join the class. But just as everyone starts blending as comrades-in-arms, mysterious disappearances begin to threaten the class\'s entire foundation.', 'TV', 13, 'Fall 2020', 'Bridge', 'Psychological, Shounen, Super Power, Supernatural, Thriller', 7.25, 'Manga', 'uploads/cover/10.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
