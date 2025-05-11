-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 11 mai 2025 à 20:38
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bind`
--
CREATE DATABASE IF NOT EXISTS `bind` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `bind`;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `price`) VALUES
(1, 'Lampe', 25),
(2, 'table', 110),
(3, 'chaise', 80),
(4, 'Lampe', 25),
(5, 'table', 110),
(6, 'chaise', 80);
--
-- Base de données : `blu_ray`
--
CREATE DATABASE IF NOT EXISTS `blu_ray` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `blu_ray`;

-- --------------------------------------------------------

--
-- Structure de la table `bluray`
--

DROP TABLE IF EXISTS `bluray`;
CREATE TABLE IF NOT EXISTS `bluray` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cat_id` int NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `release_date` date NOT NULL,
  `note` tinyint NOT NULL,
  `cover` varchar(120) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `bluray`
--

INSERT INTO `bluray` (`id`, `name`, `cat_id`, `price`, `release_date`, `note`, `cover`, `description`) VALUES
(1, 'Midway', 5, 25, '0000-00-00', 4, 'midway.jpg', 'Après la débâcle de Pearl Harbor qui a laissé la flotte américaine dévastée, la marine impériale japonaise prépare une nouvelle attaque qui devrait éliminer définitivement les forces aéronavales restantes de son adversaire. La campagne du Pacifique va se jouer dans un petit atoll isolé du Pacifique nord : Midway.L\'amiral Nimitz, à la tête de la flotte américaine, voit cette bataille comme l\'ultime chance de renverser la supériorité japonaise. Une course contre la montre s\'engage alors pour Edwin Layton qui doit percer les codes secrets de la flotte japonaise et, grâce aux renseignements, permettre aux pilotes de l\'aviation américaine de faire face à la plus grande offensive jamais menée pendant ce conflit.'),
(2, 'Joker', 6, 24, '2020-02-10', 4, 'joker.jpg', 'Arthur Fleck, comédien de stand-up raté, est agressé alors qu\'il erre dans les rues de Gotham déguisé en clown. Méprisé de tous et bafoué, il bascule peu à peu dans la folie pour devenir le Joker, un dangereux tueur psychotique...'),
(3, 'La reine des neiges 2', 2, 22, '2020-02-14', 3, 'reine.jpg', 'Pourquoi Elsa est-elle née avec des pouvoirs magiques ? La jeune fille rêve de l\'apprendre, mais la réponse met son royaume en danger. Avec l\'aide d\'Anna, Kristoff, Olaf et Sven, Elsa entreprend un voyage aussi périlleux qu\'extraordinaire. Dans La Reine des neiges, Elsa craignait que ses pouvoirs ne menacent le monde. Dans La Reine des neiges 2, elle espère qu\'ils seront assez puissants pour le sauver'),
(4, 'Ad Astra', 6, 20, '2020-01-22', 1, 'astra.jpg', 'L’astronaute Roy McBride s’aventure jusqu’aux confins du système solaire à la recherche de son père disparu et pour résoudre un mystère qui menace la survie de notre planète. Lors de son voyage, il sera confronté à des révélations mettant en cause la nature même de l’existence humaine, et notre place dans l’univers.'),
(5, '1917', 5, 22, '2020-03-02', 2, '1917.jpg', 'Pris dans la tourmente de la Première Guerre Mondiale, Schofield et Blake, deux jeunes soldats britanniques, se voient assigner une mission à proprement parler impossible. Porteurs d\'un message qui pourrait empêcher une attaque dévastatrice et la mort de centaines de soldats, dont le frère de Blake, ils se lancent dans une véritable course contre la montre, derrière les lignes ennemies.'),
(6, 'A Star is Born', 8, 18, '2018-11-20', 2, 'star.jpg', 'Star de country un peu oubliée, Jackson Maine découvre Ally, une jeune chanteuse très prometteuse. Tandis qu\'ils tombent follement amoureux l\'un de l\'autre, Jack propulse Ally sur le devant de la scène et fait d\'elle une artiste adulée par le public. Bientôt éclipsé par le succès de la jeune femme, il vit de plus en plus de mal son propre déclin'),
(7, 'Alita: Battle Angel', 2, 18, '2020-02-02', 3, 'alita.jpg', 'Au vingt-sixième siècle, un scientifique sauve Alita, une jeune cyborg inerte abandonnée dans une décharge. Ramenée à la vie, elle doit découvrir le mystère de ses origines et le monde complexe dans lequel elle se trouve, afin de protéger ses nouveaux amis contre les forces sombres lancées à sa poursuite.'),
(8, 'Game of Thrones (Le Trône de Fer) - Saison 7', 6, 18, '2018-06-20', 4, 'game07.jpg', 'Il y a très longtemps, à une époque oubliée, une force a détruit l\'équilibre des saisons. Dans un pays où l\'été peut durer plusieurs années et l\'hiver toute une vie, des forces sinistres et surnaturelles se pressent aux portes du Royaume des Sept Couronnes. La confrérie de la Garde de Nuit, protégeant le Royaume de toute créature pouvant provenir d\'au-delà du Mur protecteur, n\'a plus les ressources nécessaires pour assurer la sécurité de tous. Après un été de dix années, un hiver rigoureux s\'abat sur le Royaume avec la promesse d\'un avenir des plus sombres. Pendant ce temps, complots et rivalités se jouent sur le continent pour s\'emparer du Trône de Fer, le symbole du pouvoir absolu.'),
(9, 'American Sniper', 5, 10, '2015-03-07', 3, 'sniper.jpg', 'Tireur d\'élite des Navy SEAL, Chris Kyle est envoyé en Irak dans un seul but : protéger ses camarades. Sa précision chirurgicale sauve d\'innombrables vies humaines sur le champ de bataille et, tandis que les récits de ses exploits se multiplient, il décroche le surnom de \"La Légende\". Cependant, sa réputation se propage au-delà des lignes ennemies, si bien que sa tête est mise à prix et qu\'il devient une cible privilégiée des insurgés. Malgré le danger, et l\'angoisse dans laquelle vit sa famille, Chris participe à quatre batailles décisives parmi les plus terribles de la guerre en Irak, s\'imposant ainsi comme l\'incarnation vivante de la devise des SEAL : \"Pas de quartier !\" Mais en rentrant au pays, Chris prend conscience qu\'il ne parvient pas à retrouver une vie normale.'),
(10, 'Les Heures Sombres', 4, 12, '2019-05-06', 2, 'heures.jpg', 'Homme politique brillant et plein d\'esprit, Winston Churchill est un des piliers du Parlement du Royaume-Uni, mais à 65 ans déjà, il est un candidat improbable au poste de Premier Ministre. Il y est cependant nommé d\'urgence le 10 mai 1940, après la démission de Neville Chamberlain, et dans un contexte européen dramatique marqué par les défaites successives des Alliés face aux troupes nazies et par l\'armée britannique dans l\'incapacité d\'être évacuée de Dunkerque. Alors que plane la menace d\'une invasion du Royaume-Uni par Hitler et que 200 000 soldats britanniques sont piégés à Dunkerque, Churchill découvre que son propre parti complote contre lui et que même son roi, George VI, se montre fort sceptique quant à son aptitude à assurer la lourde tâche qui lui incombe. '),
(11, 'Munich', 4, 8, '2014-08-14', 3, 'munich.jpg', 'Dans la nuit du 5 septembre 1972, un commando de l\'organisation palestinienne Septembre Noir s\'introduit dans le Village Olympique, force l\'entrée du pavillon israélien. Moins d\'une journée plus tard, les 11 membres de l\'équipe sportive israélienne seront morts et le monde aura découvert en direct le nouveau visage du terrorisme. Après avoir refusé tout compromis avec les preneurs d\'otages, le gouvernement de Golda Meir monte une opération de représailles sans précédent. Avner, un jeune agent du Mossad, prend la tête d\'une équipe de 4 hommes chargés de traquer à travers le monde, 11 représentants de Septembre Noir, désignés comme responsables de l\'attentat de Munich'),
(12, 'Gone Girl', 1, 12, '2016-03-02', 2, 'gone.jpg', 'Amy et Nick forment en apparence un couple modèle. Mais le jour de leur 5ème anniversaire de mariage, Amy disparaît et Nick retrouve leur maison saccagée. Lors de l\'enquête tout semble accuser Nick. Celui-ci décide, de son côté, de tout faire pour savoir ce qui est arrivé à Amy et découvre qu\'elle lui dissimulait beaucoup de choses.'),
(13, 'Seven', 1, 8, '2011-03-23', 4, 'seven.jpg', 'Gourmandise. Avarice. Paresse. Envie. Colère. Orgueil. Luxure. Sept péchés capitaux. Sept façons de mourir. Un thriller hallucinant signé David Fincher, qui marquera vos esprits à jamais.'),
(14, 'Star Wars : Le Réveil de la Force', 6, 24, '2020-01-10', 3, 'star-wars.jpg', 'Plus de 30 ans après la bataille d\'Endor, la galaxie subit toujours la tyrannie et l\'oppression. Les membres de l\'Alliance rebelle, devenus la \"Résistance\", combattent les vestiges de l\'Empire devenu Premier Ordre. Un mystérieux guerrier, Kylo Ren, semble vouer un culte à Dark Vador et pourchasse impitoyablement tout opposant. Au même moment, une jeune femme nommée Rey, pilleuse d\'épaves sur la planète désertique Jakku, va faire la rencontre de Finn, un Stormtrooper en fuite. Cette rencontre va bouleverser sa vie');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_order` int NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3AF34668727ACA70` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `category_order`, `slug`) VALUES
(11, NULL, 'Informatique', 1, 'informatique'),
(12, 11, 'Ordinateurs portables', 2, 'ordinateurs-portables'),
(13, 11, 'Ecrans', 3, 'ecrans'),
(14, 11, 'Souris', 4, 'souris'),
(15, NULL, 'Mode', 5, 'mode'),
(16, 15, 'Hommes', 6, 'hommes'),
(17, 15, 'Femmes', 7, 'femmes'),
(18, 15, 'Enfant', 8, 'enfant');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Thriller'),
(2, 'Animation'),
(3, 'Policier'),
(4, 'Historique'),
(5, 'Guerre'),
(6, 'Fantastique'),
(7, 'Horreur'),
(8, 'Drame');

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupons_types_id` int NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int NOT NULL,
  `max_usage` int NOT NULL,
  `validity` date NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_F56411183DDD47B7` (`coupons_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `coupons_type`
--

DROP TABLE IF EXISTS `coupons_type`;
CREATE TABLE IF NOT EXISTS `coupons_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221118150126', '2022-11-18 15:08:39', 113),
('DoctrineMigrations\\Version20230104154132', '2023-01-04 15:49:31', 219);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `products_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E01FBE6A6C8A81A9` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `products_id`, `name`) VALUES
(101, 18, ''),
(102, 19, ''),
(103, 11, ''),
(104, 20, ''),
(105, 15, '3.jpg'),
(106, 16, ''),
(107, 16, ''),
(108, 12, ''),
(109, 16, ''),
(110, 12, ''),
(111, 12, ''),
(112, 19, ''),
(113, 18, ''),
(114, 14, ''),
(115, 12, ''),
(116, 12, ''),
(117, 15, ''),
(118, 20, ''),
(119, 16, ''),
(120, 20, ''),
(121, 20, ''),
(122, 15, ''),
(123, 19, ''),
(124, 19, ''),
(125, 18, ''),
(126, 13, ''),
(127, 18, ''),
(128, 12, ''),
(129, 11, ''),
(130, 16, ''),
(131, 17, ''),
(132, 11, ''),
(133, 18, ''),
(134, 15, ''),
(135, 14, ''),
(136, 12, ''),
(137, 11, ''),
(138, 15, ''),
(139, 16, ''),
(140, 20, ''),
(141, 17, ''),
(142, 19, ''),
(143, 14, ''),
(144, 17, ''),
(145, 14, ''),
(146, 12, ''),
(147, 19, ''),
(148, 16, ''),
(149, 14, ''),
(150, 14, ''),
(151, 15, ''),
(152, 12, ''),
(153, 15, ''),
(154, 12, ''),
(155, 11, ''),
(156, 12, ''),
(157, 17, ''),
(158, 11, ''),
(159, 19, ''),
(160, 19, ''),
(161, 18, ''),
(162, 17, ''),
(163, 18, ''),
(164, 18, ''),
(165, 18, ''),
(166, 18, ''),
(167, 17, ''),
(168, 20, ''),
(169, 17, ''),
(170, 14, ''),
(171, 14, ''),
(172, 17, ''),
(173, 12, ''),
(174, 18, ''),
(175, 12, ''),
(176, 19, ''),
(177, 20, ''),
(178, 20, ''),
(179, 14, ''),
(180, 12, ''),
(181, 17, ''),
(182, 19, ''),
(183, 17, ''),
(184, 13, ''),
(185, 20, ''),
(186, 17, ''),
(187, 19, ''),
(188, 14, ''),
(189, 18, ''),
(190, 11, ''),
(191, 17, ''),
(192, 12, ''),
(193, 13, ''),
(194, 11, ''),
(195, 19, ''),
(196, 14, ''),
(197, 19, ''),
(198, 19, ''),
(199, 15, ''),
(200, 12, '');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:25:\\\"emails/register.html.twig\\\";i:1;N;i:2;a:2:{s:4:\\\"user\\\";O:16:\\\"App\\\\Entity\\\\Users\\\":12:{s:20:\\\"\\0App\\\\Entity\\\\Users\\0id\\\";i:29;s:23:\\\"\\0App\\\\Entity\\\\Users\\0email\\\";s:19:\\\"johnlama2@gmail.com\\\";s:23:\\\"\\0App\\\\Entity\\\\Users\\0roles\\\";a:0:{}s:26:\\\"\\0App\\\\Entity\\\\Users\\0password\\\";s:60:\\\"$2y$13$snoLxifnnAWkY4YxixaHlOEb6vcNA5ieMGN/rt5dD1tp2ttiZ92mS\\\";s:26:\\\"\\0App\\\\Entity\\\\Users\\0lastname\\\";s:5:\\\"Selle\\\";s:27:\\\"\\0App\\\\Entity\\\\Users\\0firstname\\\";s:6:\\\"Adrien\\\";s:25:\\\"\\0App\\\\Entity\\\\Users\\0address\\\";s:16:\\\"Rue de moncheret\\\";s:25:\\\"\\0App\\\\Entity\\\\Users\\0zipcode\\\";s:4:\\\"6280\\\";s:22:\\\"\\0App\\\\Entity\\\\Users\\0city\\\";s:4:\\\"Acoz\\\";s:29:\\\"\\0App\\\\Entity\\\\Users\\0is_verified\\\";b:0;s:24:\\\"\\0App\\\\Entity\\\\Users\\0orders\\\";O:33:\\\"Doctrine\\\\ORM\\\\PersistentCollection\\\":2:{s:13:\\\"\\0*\\0collection\\\";O:43:\\\"Doctrine\\\\Common\\\\Collections\\\\ArrayCollection\\\":1:{s:53:\\\"\\0Doctrine\\\\Common\\\\Collections\\\\ArrayCollection\\0elements\\\";a:0:{}}s:14:\\\"\\0*\\0initialized\\\";b:1;}s:28:\\\"\\0App\\\\Entity\\\\Users\\0created_at\\\";O:17:\\\"DateTimeImmutable\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-02 21:15:30.926137\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}s:5:\\\"token\\\";s:149:\\\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9 . eyJ1c2VyX2lkIjoyOSwiaWF0IjoxNjcyNjk0MTMxLCJleHAiOjE2NzI3MDQ5MzF9 . Apd_kiGC9Srgl1zgqtozk0G5VYwX4elpWRligOvKYrI\\\";}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"no-replay@website.net\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"johnlama2@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:49:\\\"activation de votre compte sur le site e-commerce\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-01-02 21:15:31', '2023-01-02 21:15:31', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:25:\\\"emails/register.html.twig\\\";i:1;N;i:2;a:2:{s:4:\\\"user\\\";O:16:\\\"App\\\\Entity\\\\Users\\\":12:{s:20:\\\"\\0App\\\\Entity\\\\Users\\0id\\\";i:29;s:23:\\\"\\0App\\\\Entity\\\\Users\\0email\\\";s:19:\\\"johnlama2@gmail.com\\\";s:23:\\\"\\0App\\\\Entity\\\\Users\\0roles\\\";a:0:{}s:26:\\\"\\0App\\\\Entity\\\\Users\\0password\\\";s:60:\\\"$2y$13$snoLxifnnAWkY4YxixaHlOEb6vcNA5ieMGN/rt5dD1tp2ttiZ92mS\\\";s:26:\\\"\\0App\\\\Entity\\\\Users\\0lastname\\\";s:5:\\\"Selle\\\";s:27:\\\"\\0App\\\\Entity\\\\Users\\0firstname\\\";s:6:\\\"Adrien\\\";s:25:\\\"\\0App\\\\Entity\\\\Users\\0address\\\";s:16:\\\"Rue de moncheret\\\";s:25:\\\"\\0App\\\\Entity\\\\Users\\0zipcode\\\";s:4:\\\"6280\\\";s:22:\\\"\\0App\\\\Entity\\\\Users\\0city\\\";s:4:\\\"Acoz\\\";s:29:\\\"\\0App\\\\Entity\\\\Users\\0is_verified\\\";b:0;s:24:\\\"\\0App\\\\Entity\\\\Users\\0orders\\\";O:33:\\\"Doctrine\\\\ORM\\\\PersistentCollection\\\":2:{s:13:\\\"\\0*\\0collection\\\";O:43:\\\"Doctrine\\\\Common\\\\Collections\\\\ArrayCollection\\\":1:{s:53:\\\"\\0Doctrine\\\\Common\\\\Collections\\\\ArrayCollection\\0elements\\\";a:0:{}}s:14:\\\"\\0*\\0initialized\\\";b:0;}s:28:\\\"\\0App\\\\Entity\\\\Users\\0created_at\\\";O:17:\\\"DateTimeImmutable\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-02 21:15:30.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}s:5:\\\"token\\\";s:149:\\\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9 . eyJ1c2VyX2lkIjoyOSwiaWF0IjoxNjcyNjk0MjQwLCJleHAiOjE2NzI3MDUwNDB9 . t1AfSJTr6hemO5ydr7FUy6-geZxDjZW-4zjWvXBJBks\\\";}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"no-replay@website.net\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"johnlama2@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:49:\\\"activation de votre compte sur le site e-commerce\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-01-02 21:17:20', '2023-01-02 21:17:20', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupons_id` int DEFAULT NULL,
  `users_id` int NOT NULL,
  `reference` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_E52FFDEE6D72B15C` (`coupons_id`),
  KEY `IDX_E52FFDEE67B3B43D` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orders_id` int NOT NULL,
  `products_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8F964642CFFE9AD6` (`orders_id`),
  KEY `IDX_8F9646426C8A81A9` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `price`) VALUES
(1, 'Lampe', 25),
(2, 'table', 110),
(3, 'chaise', 80),
(4, 'Lampe', 25),
(5, 'table', 110),
(6, 'chaise', 80);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B3BA5A5AA21214B7` (`categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `name`, `description`, `price`, `stock`, `created_at`, `slug`) VALUES
(11, 14, 'Sint.', 'Neque praesentium nisi est officia dolore ipsum doloremque. Consequatur eaque est veniam voluptas voluptas qui quidem ut. Vitae ut ut illo deserunt tempora autem doloremque.', 146163, 0, '2022-11-15 18:51:53', 'sint'),
(12, 18, 'Quo quo magnam.', 'Illo et quas dicta alias placeat et nulla. Distinctio qui consequatur ipsum non.', 81800, 9, '2022-11-15 18:51:53', 'quo-quo-magnam'),
(13, 15, 'Quidem facilis.', 'Non cumque voluptatibus non at ut aut numquam. Ex omnis et et id facere modi ut. Consequatur quam et eum dolorem. Quis ut consequatur alias occaecati quidem.', 96734, 1, '2022-11-15 18:51:53', 'quidem-facilis'),
(14, 12, 'Id quibusdam.', 'Fugit vel fugiat rerum et dolor. Optio aliquam labore quidem nisi necessitatibus numquam quia. Iure a est ducimus qui dolorum. Et eius nihil quas et.', 17348, 1, '2022-11-15 18:51:53', 'id-quibusdam'),
(15, 13, 'Voluptatum.', 'Ratione aut sed tempore placeat odio eos sequi enim. Ex repellat adipisci nihil beatae. Ea eveniet dolores repudiandae minus est rerum et blanditiis. Omnis earum molestiae voluptates id.', 45502, 5, '2022-11-15 18:51:53', 'voluptatum'),
(16, 12, 'Ratione quo id.', 'Magni qui quia omnis. Est amet quisquam ratione tenetur. Ea sapiente sit cum aut minus.', 104129, 9, '2022-11-15 18:51:53', 'ratione-quo-id'),
(17, 16, 'Qui doloribus.', 'Rerum iusto voluptatem rerum est. Dolore voluptas delectus sit quia. Dolor distinctio aut omnis et perspiciatis qui quidem.', 57120, 2, '2022-11-15 18:51:53', 'qui-doloribus'),
(18, 15, 'Corporis qui.', 'At voluptatum sunt tempore vel expedita. Aut dolores nisi rerum tempore tempore et enim est. Ut doloremque dolorem cumque. Ea hic adipisci unde quo neque quidem atque. Est qui et distinctio et.', 24250, 8, '2022-11-15 18:51:53', 'corporis-qui'),
(19, 11, 'Et alias.', 'Voluptas odit omnis corporis nemo eveniet ab consequatur. Cupiditate sed rerum ducimus et. Recusandae totam aut et modi excepturi corrupti. Enim et necessitatibus temporibus officiis est excepturi.', 123322, 3, '2022-11-15 18:51:53', 'et-alias'),
(20, 17, 'Ut sunt.', 'Ipsa distinctio dolores maxime dolor quia est cupiditate. Voluptas omnis iusto sunt dolore dolore. Fugit consequatur repellendus beatae consequatur qui. Aut aut eius id magni ad corrupti labore.', 25587, 5, '2022-11-15 18:51:53', 'ut-sunt');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `login` varchar(60) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `login`, `password`) VALUES
(1, 'John', 'Doe', 'Doe', '$2y$10$tlJuEvGfRB918Vverg0bE.sTXVTwAupb1I3fgDWc1J15kDpsDIpk6'),
(2, 'Patrick', 'Marthus', 'pat', '$2y$10$KmelLSPwpI5qc6W5i37qJuV7dRunS/Kc9MdPWDjZJS1SLMmuXErYu'),
(3, NULL, NULL, 'selleadrien@gmail.com', '$2y$10$xZkkv59.BQ4xR/sXfgFxcuOZ1XG8S4LYVKEysg7kWx2aVmHD5C1gm');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `is_verified` tinyint(1) NOT NULL,
  `reset_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `lastname`, `firstname`, `address`, `zipcode`, `city`, `created_at`, `is_verified`, `reset_token`) VALUES
(7, 'admin@demo.fr', '[\"ROLE_ADMIN\"]', '$2y$13$d87CXSMP9Hawf6JiQTbPkOBngAoIPur4bSFWJ7YsHfrwdzFMAvFZm', 'Garbier', 'Benoit', '12 rue du port', '75001', 'Paris', '2022-11-15 18:51:53', 0, 'cPLSybqrkUPB8UyQLkHGo8Ole4HpNO6p6bX0I6YZRzE'),
(8, 'nicolas.briand@wanadoo.fr', '[]', '$2y$13$PA5/wvDqfJ3i00DqgpNRieklcRU/A5XDuL3FfarAO/JOdzcTMRMJO', 'Diaz', 'Françoise', '837, boulevard Delmas', '92654', 'Dufour', '2022-11-15 18:51:53', 0, ''),
(9, 'lebrun.eugene@gmail.com', '[]', '$2y$13$wjMtX9NMfT8PYYHRGOjIP.JR4gm2I8gan.4DxjIPPXeQFfWhGqBHC', 'Morel', 'Audrey', '869, impasse de Baudry', '05514', 'Laine', '2022-11-15 18:51:54', 0, ''),
(10, 'goncalves.stephane@barthelemy.com', '[]', '$2y$13$r04M5BZIYEGF01Didtmodersal9ZyobBF.eBKsMZFE.v/ctrwqosi', 'Bruneau', 'Lucy', '56, impasse de Brun', '03499', 'MarquesVille', '2022-11-15 18:51:55', 0, ''),
(11, 'pneveu@noos.fr', '[]', '$2y$13$5wGSKu7SRZc54/8UB6G3eenKXxW5MhA/7PY1PG3XDDajCLal4BkKq', 'Guillou', 'Josette', '302, rue de Germain', '13111', 'MaillotVille', '2022-11-15 18:51:55', 0, ''),
(12, 'bfischer@club-internet.fr', '[]', '$2y$13$H2Io5QLrvH7X3EidpiU2COaqnpKtFPfwwsMCZBSBA5XXpdKZRLsXW', 'Joubert', 'Gilbert', '5, chemin Godard', '51059', 'GrosVille', '2022-11-15 18:51:56', 0, ''),
(13, 'selleadrien', '[]', '$2y$13$PuaUxhBrT6CswpPDI6sC3OBU6U9gVUSsAZIA6QWWdP48s7pVf9tFi', 'Selle', 'Adrien', 'Rue de moncheret', '6280', 'Acoz', '2022-11-26 15:10:25', 0, ''),
(14, 'arnaud@gmail.com', '[]', '$2y$13$SJ1dinQuYjVWIamH.FRttu1NSvVPNPIq7LPp7Ekty8CIv9pQQ8zxW', 'peltier', 'arnaud', 'Rue de moncheret', '6280', 'Acoz', '2022-11-26 15:19:06', 0, ''),
(15, 'fabian@gmail.Com', '[]', '$2y$13$cSJyyhA.pDQUeuVtfVDlQeWQKbXnLr6HM2tsqX9n8AVdwTNQ4obDu', 'luckyou', 'fabian', 'Rue de moncheret', '6280', 'Acoz', '2022-11-26 15:30:12', 0, ''),
(17, 'giraud2@gmail.com', '[]', '$2y$13$Jh9vV21U.odM6m.3Rl9rC.SgH4s2E/mQ2R53nKZXmPViN7KeooAyq', 'giraud2', 'charles2', 'Rue de moncheret', '6280', 'Acoz', '2022-11-26 18:13:02', 0, ''),
(19, 'sellealbino@gmail.com', '[]', '$2y$13$KAgFC8.RzODynvCNyaBIu.gnBYY55cnhgxMr3J2LxMne25WmQ777W', 'selle', 'albino', 'Rue de moncheret', '6280', 'Acoz', '2022-12-07 10:27:03', 0, ''),
(22, 'giraud4@gmail.com', '[]', '$2y$13$iSUM7YfkVdnIz3SCDt09uOcxvf9TEwGFhRzStWLyOE02OkyxbKvc2', 'giraud2', 'Adrien', 'Rue de moncheret', '6280', 'Acoz', '2022-12-10 15:14:42', 0, ''),
(23, 'giraud5@gmail.com', '[]', '$2y$13$nB0PDWyBoSdg7lgQVhQbN.Nf1jzLwUTH44EFdFontsR0uZ33LPgp.', 'giraud2', 'Adrien', 'Rue de moncheret', '6280', 'Acoz', '2022-12-10 16:17:26', 0, ''),
(24, 'laura@gmail.com', '[]', '$2y$13$Crzws9RKx9Tg05Gr5DF2U.ae.JSF98lZkBVaaZ8WwA/HKo5Q0KVcK', 'laura', 'giraud', 'Rue de moncheret', '6280', 'Acoz', '2022-12-10 16:21:59', 0, ''),
(28, 'johnlama@gmail.com', '[]', '$2y$13$aqjpVRHdRisNi4wpLVgsyeq2ZolCyqCmnn7RbTM9MGdS1Nx.zxmvK', 'Selle', 'Adrien', 'Rue de moncheret', '6280', 'Acoz', '2023-01-02 20:41:08', 0, ''),
(29, 'johnlama2@gmail.com', '[]', '$2y$13$snoLxifnnAWkY4YxixaHlOEb6vcNA5ieMGN/rt5dD1tp2ttiZ92mS', 'Selle', 'Adrien', 'Rue de moncheret', '6280', 'Acoz', '2023-01-02 21:15:30', 1, ''),
(30, 'ludolemaire@gmail.Com', '[]', '$2y$13$yLa13Tw34hkNv7BDLixfmOXM6n3tqfuxjhJ3R4lzs2OFvv3Yprjs2', 'ludo', 'lemaire', 'rue du paradis', '6280', 'Acoz', '2023-01-02 21:26:24', 1, '');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bluray`
--
ALTER TABLE `bluray`
  ADD CONSTRAINT `bluray_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_3AF34668727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `FK_F56411183DDD47B7` FOREIGN KEY (`coupons_types_id`) REFERENCES `coupons_type` (`id`);

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_E01FBE6A6C8A81A9` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_E52FFDEE67B3B43D` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_E52FFDEE6D72B15C` FOREIGN KEY (`coupons_id`) REFERENCES `coupons` (`id`);

--
-- Contraintes pour la table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `FK_8F9646426C8A81A9` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FK_8F964642CFFE9AD6` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_B3BA5A5AA21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
--
-- Base de données : `e-commerce`
--
CREATE DATABASE IF NOT EXISTS `e-commerce` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `e-commerce`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_order` int NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3AF34668727ACA70` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `category_order`, `slug`) VALUES
(11, NULL, 'Informatique', 1, 'informatique'),
(12, 11, 'Ordinateurs portables', 2, 'ordinateurs-portables'),
(13, 11, 'Ecrans', 3, 'ecrans'),
(14, 11, 'Souris', 4, 'souris'),
(15, NULL, 'Mode', 5, 'mode'),
(16, 15, 'Hommes', 6, 'hommes'),
(17, 15, 'Femmes', 7, 'femmes'),
(18, 15, 'Enfant', 8, 'enfant');

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupons_types_id` int NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int NOT NULL,
  `max_usage` int NOT NULL,
  `validity` date NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_F56411183DDD47B7` (`coupons_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `coupons_type`
--

DROP TABLE IF EXISTS `coupons_type`;
CREATE TABLE IF NOT EXISTS `coupons_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221118150126', '2022-11-18 15:08:39', 113),
('DoctrineMigrations\\Version20230104154132', '2023-01-04 15:49:31', 219);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `products_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E01FBE6A6C8A81A9` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `products_id`, `name`) VALUES
(101, 18, ''),
(102, 19, ''),
(103, 11, ''),
(104, 20, ''),
(105, 15, '3.jpg'),
(106, 16, ''),
(107, 16, ''),
(108, 12, ''),
(109, 16, ''),
(110, 12, ''),
(111, 12, ''),
(112, 19, ''),
(113, 18, ''),
(114, 14, ''),
(115, 12, ''),
(116, 12, ''),
(117, 15, ''),
(118, 20, ''),
(119, 16, ''),
(120, 20, ''),
(121, 20, ''),
(122, 15, ''),
(123, 19, ''),
(124, 19, ''),
(125, 18, ''),
(126, 13, ''),
(127, 18, ''),
(128, 12, ''),
(129, 11, ''),
(130, 16, ''),
(131, 17, ''),
(132, 11, ''),
(133, 18, ''),
(134, 15, ''),
(135, 14, ''),
(136, 12, ''),
(137, 11, ''),
(138, 15, ''),
(139, 16, ''),
(140, 20, ''),
(141, 17, ''),
(142, 19, ''),
(143, 14, ''),
(144, 17, ''),
(145, 14, ''),
(146, 12, ''),
(147, 19, ''),
(148, 16, ''),
(149, 14, ''),
(150, 14, ''),
(151, 15, ''),
(152, 12, ''),
(153, 15, ''),
(154, 12, ''),
(155, 11, ''),
(156, 12, ''),
(157, 17, ''),
(158, 11, ''),
(159, 19, ''),
(160, 19, ''),
(161, 18, ''),
(162, 17, ''),
(163, 18, ''),
(164, 18, ''),
(165, 18, ''),
(166, 18, ''),
(167, 17, ''),
(168, 20, ''),
(169, 17, ''),
(170, 14, ''),
(171, 14, ''),
(172, 17, ''),
(173, 12, ''),
(174, 18, ''),
(175, 12, ''),
(176, 19, ''),
(177, 20, ''),
(178, 20, ''),
(179, 14, ''),
(180, 12, ''),
(181, 17, ''),
(182, 19, ''),
(183, 17, ''),
(184, 13, ''),
(185, 20, ''),
(186, 17, ''),
(187, 19, ''),
(188, 14, ''),
(189, 18, ''),
(190, 11, ''),
(191, 17, ''),
(192, 12, ''),
(193, 13, ''),
(194, 11, ''),
(195, 19, ''),
(196, 14, ''),
(197, 19, ''),
(198, 19, ''),
(199, 15, ''),
(200, 12, '');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:25:\\\"emails/register.html.twig\\\";i:1;N;i:2;a:2:{s:4:\\\"user\\\";O:16:\\\"App\\\\Entity\\\\Users\\\":12:{s:20:\\\"\\0App\\\\Entity\\\\Users\\0id\\\";i:29;s:23:\\\"\\0App\\\\Entity\\\\Users\\0email\\\";s:19:\\\"johnlama2@gmail.com\\\";s:23:\\\"\\0App\\\\Entity\\\\Users\\0roles\\\";a:0:{}s:26:\\\"\\0App\\\\Entity\\\\Users\\0password\\\";s:60:\\\"$2y$13$snoLxifnnAWkY4YxixaHlOEb6vcNA5ieMGN/rt5dD1tp2ttiZ92mS\\\";s:26:\\\"\\0App\\\\Entity\\\\Users\\0lastname\\\";s:5:\\\"Selle\\\";s:27:\\\"\\0App\\\\Entity\\\\Users\\0firstname\\\";s:6:\\\"Adrien\\\";s:25:\\\"\\0App\\\\Entity\\\\Users\\0address\\\";s:16:\\\"Rue de moncheret\\\";s:25:\\\"\\0App\\\\Entity\\\\Users\\0zipcode\\\";s:4:\\\"6280\\\";s:22:\\\"\\0App\\\\Entity\\\\Users\\0city\\\";s:4:\\\"Acoz\\\";s:29:\\\"\\0App\\\\Entity\\\\Users\\0is_verified\\\";b:0;s:24:\\\"\\0App\\\\Entity\\\\Users\\0orders\\\";O:33:\\\"Doctrine\\\\ORM\\\\PersistentCollection\\\":2:{s:13:\\\"\\0*\\0collection\\\";O:43:\\\"Doctrine\\\\Common\\\\Collections\\\\ArrayCollection\\\":1:{s:53:\\\"\\0Doctrine\\\\Common\\\\Collections\\\\ArrayCollection\\0elements\\\";a:0:{}}s:14:\\\"\\0*\\0initialized\\\";b:1;}s:28:\\\"\\0App\\\\Entity\\\\Users\\0created_at\\\";O:17:\\\"DateTimeImmutable\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-02 21:15:30.926137\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}s:5:\\\"token\\\";s:149:\\\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9 . eyJ1c2VyX2lkIjoyOSwiaWF0IjoxNjcyNjk0MTMxLCJleHAiOjE2NzI3MDQ5MzF9 . Apd_kiGC9Srgl1zgqtozk0G5VYwX4elpWRligOvKYrI\\\";}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"no-replay@website.net\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"johnlama2@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:49:\\\"activation de votre compte sur le site e-commerce\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-01-02 21:15:31', '2023-01-02 21:15:31', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:25:\\\"emails/register.html.twig\\\";i:1;N;i:2;a:2:{s:4:\\\"user\\\";O:16:\\\"App\\\\Entity\\\\Users\\\":12:{s:20:\\\"\\0App\\\\Entity\\\\Users\\0id\\\";i:29;s:23:\\\"\\0App\\\\Entity\\\\Users\\0email\\\";s:19:\\\"johnlama2@gmail.com\\\";s:23:\\\"\\0App\\\\Entity\\\\Users\\0roles\\\";a:0:{}s:26:\\\"\\0App\\\\Entity\\\\Users\\0password\\\";s:60:\\\"$2y$13$snoLxifnnAWkY4YxixaHlOEb6vcNA5ieMGN/rt5dD1tp2ttiZ92mS\\\";s:26:\\\"\\0App\\\\Entity\\\\Users\\0lastname\\\";s:5:\\\"Selle\\\";s:27:\\\"\\0App\\\\Entity\\\\Users\\0firstname\\\";s:6:\\\"Adrien\\\";s:25:\\\"\\0App\\\\Entity\\\\Users\\0address\\\";s:16:\\\"Rue de moncheret\\\";s:25:\\\"\\0App\\\\Entity\\\\Users\\0zipcode\\\";s:4:\\\"6280\\\";s:22:\\\"\\0App\\\\Entity\\\\Users\\0city\\\";s:4:\\\"Acoz\\\";s:29:\\\"\\0App\\\\Entity\\\\Users\\0is_verified\\\";b:0;s:24:\\\"\\0App\\\\Entity\\\\Users\\0orders\\\";O:33:\\\"Doctrine\\\\ORM\\\\PersistentCollection\\\":2:{s:13:\\\"\\0*\\0collection\\\";O:43:\\\"Doctrine\\\\Common\\\\Collections\\\\ArrayCollection\\\":1:{s:53:\\\"\\0Doctrine\\\\Common\\\\Collections\\\\ArrayCollection\\0elements\\\";a:0:{}}s:14:\\\"\\0*\\0initialized\\\";b:0;}s:28:\\\"\\0App\\\\Entity\\\\Users\\0created_at\\\";O:17:\\\"DateTimeImmutable\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-02 21:15:30.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}s:5:\\\"token\\\";s:149:\\\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9 . eyJ1c2VyX2lkIjoyOSwiaWF0IjoxNjcyNjk0MjQwLCJleHAiOjE2NzI3MDUwNDB9 . t1AfSJTr6hemO5ydr7FUy6-geZxDjZW-4zjWvXBJBks\\\";}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"no-replay@website.net\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:19:\\\"johnlama2@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:49:\\\"activation de votre compte sur le site e-commerce\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-01-02 21:17:20', '2023-01-02 21:17:20', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupons_id` int DEFAULT NULL,
  `users_id` int NOT NULL,
  `reference` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_E52FFDEE6D72B15C` (`coupons_id`),
  KEY `IDX_E52FFDEE67B3B43D` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orders_id` int NOT NULL,
  `products_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8F964642CFFE9AD6` (`orders_id`),
  KEY `IDX_8F9646426C8A81A9` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B3BA5A5AA21214B7` (`categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `name`, `description`, `price`, `stock`, `created_at`, `slug`) VALUES
(11, 14, 'Sint.', 'Neque praesentium nisi est officia dolore ipsum doloremque. Consequatur eaque est veniam voluptas voluptas qui quidem ut. Vitae ut ut illo deserunt tempora autem doloremque.', 146163, 0, '2022-11-15 18:51:53', 'sint'),
(12, 18, 'Quo quo magnam.', 'Illo et quas dicta alias placeat et nulla. Distinctio qui consequatur ipsum non.', 81800, 9, '2022-11-15 18:51:53', 'quo-quo-magnam'),
(13, 15, 'Quidem facilis.', 'Non cumque voluptatibus non at ut aut numquam. Ex omnis et et id facere modi ut. Consequatur quam et eum dolorem. Quis ut consequatur alias occaecati quidem.', 96734, 1, '2022-11-15 18:51:53', 'quidem-facilis'),
(14, 12, 'Id quibusdam.', 'Fugit vel fugiat rerum et dolor. Optio aliquam labore quidem nisi necessitatibus numquam quia. Iure a est ducimus qui dolorum. Et eius nihil quas et.', 17348, 1, '2022-11-15 18:51:53', 'id-quibusdam'),
(15, 13, 'Voluptatum.', 'Ratione aut sed tempore placeat odio eos sequi enim. Ex repellat adipisci nihil beatae. Ea eveniet dolores repudiandae minus est rerum et blanditiis. Omnis earum molestiae voluptates id.', 45502, 5, '2022-11-15 18:51:53', 'voluptatum'),
(16, 12, 'Ratione quo id.', 'Magni qui quia omnis. Est amet quisquam ratione tenetur. Ea sapiente sit cum aut minus.', 104129, 9, '2022-11-15 18:51:53', 'ratione-quo-id'),
(17, 16, 'Qui doloribus.', 'Rerum iusto voluptatem rerum est. Dolore voluptas delectus sit quia. Dolor distinctio aut omnis et perspiciatis qui quidem.', 57120, 2, '2022-11-15 18:51:53', 'qui-doloribus'),
(18, 15, 'Corporis qui.', 'At voluptatum sunt tempore vel expedita. Aut dolores nisi rerum tempore tempore et enim est. Ut doloremque dolorem cumque. Ea hic adipisci unde quo neque quidem atque. Est qui et distinctio et.', 24250, 8, '2022-11-15 18:51:53', 'corporis-qui'),
(19, 11, 'Et alias.', 'Voluptas odit omnis corporis nemo eveniet ab consequatur. Cupiditate sed rerum ducimus et. Recusandae totam aut et modi excepturi corrupti. Enim et necessitatibus temporibus officiis est excepturi.', 123322, 3, '2022-11-15 18:51:53', 'et-alias'),
(20, 17, 'Ut sunt.', 'Ipsa distinctio dolores maxime dolor quia est cupiditate. Voluptas omnis iusto sunt dolore dolore. Fugit consequatur repellendus beatae consequatur qui. Aut aut eius id magni ad corrupti labore.', 25587, 5, '2022-11-15 18:51:53', 'ut-sunt');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `is_verified` tinyint(1) NOT NULL,
  `reset_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `lastname`, `firstname`, `address`, `zipcode`, `city`, `created_at`, `is_verified`, `reset_token`) VALUES
(7, 'admin@demo.fr', '[\"ROLE_ADMIN\"]', '$2y$13$d87CXSMP9Hawf6JiQTbPkOBngAoIPur4bSFWJ7YsHfrwdzFMAvFZm', 'Garbier', 'Benoit', '12 rue du port', '75001', 'Paris', '2022-11-15 18:51:53', 0, 'cPLSybqrkUPB8UyQLkHGo8Ole4HpNO6p6bX0I6YZRzE'),
(8, 'nicolas.briand@wanadoo.fr', '[]', '$2y$13$PA5/wvDqfJ3i00DqgpNRieklcRU/A5XDuL3FfarAO/JOdzcTMRMJO', 'Diaz', 'Françoise', '837, boulevard Delmas', '92654', 'Dufour', '2022-11-15 18:51:53', 0, ''),
(9, 'lebrun.eugene@gmail.com', '[]', '$2y$13$wjMtX9NMfT8PYYHRGOjIP.JR4gm2I8gan.4DxjIPPXeQFfWhGqBHC', 'Morel', 'Audrey', '869, impasse de Baudry', '05514', 'Laine', '2022-11-15 18:51:54', 0, ''),
(10, 'goncalves.stephane@barthelemy.com', '[]', '$2y$13$r04M5BZIYEGF01Didtmodersal9ZyobBF.eBKsMZFE.v/ctrwqosi', 'Bruneau', 'Lucy', '56, impasse de Brun', '03499', 'MarquesVille', '2022-11-15 18:51:55', 0, ''),
(11, 'pneveu@noos.fr', '[]', '$2y$13$5wGSKu7SRZc54/8UB6G3eenKXxW5MhA/7PY1PG3XDDajCLal4BkKq', 'Guillou', 'Josette', '302, rue de Germain', '13111', 'MaillotVille', '2022-11-15 18:51:55', 0, ''),
(12, 'bfischer@club-internet.fr', '[]', '$2y$13$H2Io5QLrvH7X3EidpiU2COaqnpKtFPfwwsMCZBSBA5XXpdKZRLsXW', 'Joubert', 'Gilbert', '5, chemin Godard', '51059', 'GrosVille', '2022-11-15 18:51:56', 0, ''),
(13, 'selleadrien', '[]', '$2y$13$PuaUxhBrT6CswpPDI6sC3OBU6U9gVUSsAZIA6QWWdP48s7pVf9tFi', 'Selle', 'Adrien', 'Rue de moncheret', '6280', 'Acoz', '2022-11-26 15:10:25', 0, ''),
(14, 'arnaud@gmail.com', '[]', '$2y$13$SJ1dinQuYjVWIamH.FRttu1NSvVPNPIq7LPp7Ekty8CIv9pQQ8zxW', 'peltier', 'arnaud', 'Rue de moncheret', '6280', 'Acoz', '2022-11-26 15:19:06', 0, ''),
(15, 'fabian@gmail.Com', '[]', '$2y$13$cSJyyhA.pDQUeuVtfVDlQeWQKbXnLr6HM2tsqX9n8AVdwTNQ4obDu', 'luckyou', 'fabian', 'Rue de moncheret', '6280', 'Acoz', '2022-11-26 15:30:12', 0, ''),
(17, 'giraud2@gmail.com', '[]', '$2y$13$Jh9vV21U.odM6m.3Rl9rC.SgH4s2E/mQ2R53nKZXmPViN7KeooAyq', 'giraud2', 'charles2', 'Rue de moncheret', '6280', 'Acoz', '2022-11-26 18:13:02', 0, ''),
(19, 'sellealbino@gmail.com', '[]', '$2y$13$KAgFC8.RzODynvCNyaBIu.gnBYY55cnhgxMr3J2LxMne25WmQ777W', 'selle', 'albino', 'Rue de moncheret', '6280', 'Acoz', '2022-12-07 10:27:03', 0, ''),
(22, 'giraud4@gmail.com', '[]', '$2y$13$iSUM7YfkVdnIz3SCDt09uOcxvf9TEwGFhRzStWLyOE02OkyxbKvc2', 'giraud2', 'Adrien', 'Rue de moncheret', '6280', 'Acoz', '2022-12-10 15:14:42', 0, ''),
(23, 'giraud5@gmail.com', '[]', '$2y$13$nB0PDWyBoSdg7lgQVhQbN.Nf1jzLwUTH44EFdFontsR0uZ33LPgp.', 'giraud2', 'Adrien', 'Rue de moncheret', '6280', 'Acoz', '2022-12-10 16:17:26', 0, ''),
(24, 'laura@gmail.com', '[]', '$2y$13$Crzws9RKx9Tg05Gr5DF2U.ae.JSF98lZkBVaaZ8WwA/HKo5Q0KVcK', 'laura', 'giraud', 'Rue de moncheret', '6280', 'Acoz', '2022-12-10 16:21:59', 0, ''),
(28, 'johnlama@gmail.com', '[]', '$2y$13$aqjpVRHdRisNi4wpLVgsyeq2ZolCyqCmnn7RbTM9MGdS1Nx.zxmvK', 'Selle', 'Adrien', 'Rue de moncheret', '6280', 'Acoz', '2023-01-02 20:41:08', 0, ''),
(29, 'johnlama2@gmail.com', '[]', '$2y$13$snoLxifnnAWkY4YxixaHlOEb6vcNA5ieMGN/rt5dD1tp2ttiZ92mS', 'Selle', 'Adrien', 'Rue de moncheret', '6280', 'Acoz', '2023-01-02 21:15:30', 1, ''),
(30, 'ludolemaire@gmail.Com', '[]', '$2y$13$yLa13Tw34hkNv7BDLixfmOXM6n3tqfuxjhJ3R4lzs2OFvv3Yprjs2', 'ludo', 'lemaire', 'rue du paradis', '6280', 'Acoz', '2023-01-02 21:26:24', 1, '');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_3AF34668727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `FK_F56411183DDD47B7` FOREIGN KEY (`coupons_types_id`) REFERENCES `coupons_type` (`id`);

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_E01FBE6A6C8A81A9` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_E52FFDEE67B3B43D` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_E52FFDEE6D72B15C` FOREIGN KEY (`coupons_id`) REFERENCES `coupons` (`id`);

--
-- Contraintes pour la table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `FK_8F9646426C8A81A9` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FK_8F964642CFFE9AD6` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_B3BA5A5AA21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
--
-- Base de données : `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3AF34668727ACA70` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupons_types_id` int NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int NOT NULL,
  `max_usage` int NOT NULL,
  `validity` datetime NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_F56411183DDD47B7` (`coupons_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `coupons_types`
--

DROP TABLE IF EXISTS `coupons_types`;
CREATE TABLE IF NOT EXISTS `coupons_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221023134457', '2022-10-23 14:08:21', 2679);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `products_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E01FBE6A6C8A81A9` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupons_id` int DEFAULT NULL,
  `users_id` int NOT NULL,
  `reference` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_E52FFDEE6D72B15C` (`coupons_id`),
  KEY `IDX_E52FFDEE67B3B43D` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE IF NOT EXISTS `orders_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orders_id` int NOT NULL,
  `products_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_835379F1CFFE9AD6` (`orders_id`),
  KEY `IDX_835379F16C8A81A9` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_B3BA5A5AA21214B7` (`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `lastname`, `firstname`, `address`, `zipcode`, `city`, `created_at`) VALUES
(1, 'selleadrien', '[]', '$2y$13$lScER.XacR99jmalu0eh3.NM4B5AkRWzVSoi61K9ncfq1f7CJn5lC', 'Selle', 'Adrien', 'Rue de moncheret', '6280', 'Acoz', '2022-10-25 20:07:50');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_3AF34668727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `FK_F56411183DDD47B7` FOREIGN KEY (`coupons_types_id`) REFERENCES `coupons_types` (`id`);

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_E01FBE6A6C8A81A9` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_E52FFDEE67B3B43D` FOREIGN KEY (`users_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_E52FFDEE6D72B15C` FOREIGN KEY (`coupons_id`) REFERENCES `coupons` (`id`);

--
-- Contraintes pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `FK_835379F16C8A81A9` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FK_835379F1CFFE9AD6` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_B3BA5A5AA21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
--
-- Base de données : `e_commercesf4`
--
CREATE DATABASE IF NOT EXISTS `e_commercesf4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `e_commercesf4`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3AF34668727ACA70` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`) VALUES
(1, NULL, 'Informatique', 'informatique');

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupons_types_id` int NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int NOT NULL,
  `max_usages` int NOT NULL,
  `validity` datetime NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_F56411183DDD47B7` (`coupons_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `coupons_types`
--

DROP TABLE IF EXISTS `coupons_types`;
CREATE TABLE IF NOT EXISTS `coupons_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231026143006', '2023-10-26 14:33:35', 1931),
('DoctrineMigrations\\Version20231111150939', '2023-11-11 15:31:22', 1328);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `products_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E01FBE6A6C8A81A9` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupons_id` int DEFAULT NULL,
  `users_id` int NOT NULL,
  `reference` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_E52FFDEE6D72B15C` (`coupons_id`),
  KEY `IDX_E52FFDEE67B3B43D` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE IF NOT EXISTS `orders_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orders_id` int NOT NULL,
  `products_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_835379F1CFFE9AD6` (`orders_id`),
  KEY `IDX_835379F16C8A81A9` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B3BA5A5AA21214B7` (`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_3AF34668727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `FK_F56411183DDD47B7` FOREIGN KEY (`coupons_types_id`) REFERENCES `coupons_types` (`id`);

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_E01FBE6A6C8A81A9` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_E52FFDEE67B3B43D` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_E52FFDEE6D72B15C` FOREIGN KEY (`coupons_id`) REFERENCES `coupons` (`id`);

--
-- Contraintes pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `FK_835379F16C8A81A9` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FK_835379F1CFFE9AD6` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_B3BA5A5AA21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
--
-- Base de données : `fortify`
--
CREATE DATABASE IF NOT EXISTS `fortify` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `fortify`;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('selleadrien@gmail.com', '$2y$12$xBppD5wSyQpSCn5M7vNCw.4w53wmF60EMIkpGq.NFlQ8FyPnLLO12', '2024-10-18 10:45:24');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `125` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `created_at`, `updated_at`) VALUES
(1, 'Adrien Selle', 'selleadrien@gmail.com', '$2y$12$57SWguAAoQH/XICp/g2o8ep0mMsMnFLqFwEpOLCg.0rYnPaB8ihSW', NULL, NULL, NULL, '2024-10-17 18:21:10', '2024-10-17 18:21:10'),
(2, 'Adrien Selle', 'albinosellee@gail.com', '$2y$12$srJiolOx8HB8c9NH5ytDw.l/vuoSKY4YOJlwDpgupoPlPRZUNKAHK', NULL, NULL, NULL, '2024-10-18 10:10:49', '2024-10-18 10:10:49');
--
-- Base de données : `gallery`
--
CREATE DATABASE IF NOT EXISTS `gallery` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `gallery`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E66F675F31B` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `created_at`, `author_id`) VALUES
(1, 'Molestiae sint dignissimos nobis fugiat.', 'Suscipit aut est exercitationem vero molestiae. Omnis adipisci iste molestiae enim debitis ipsa. Neque inventore voluptatem eligendi praesentium dignissimos ut corrupti. Eligendi eos alias asperiores earum. Saepe nemo aut laboriosam in itaque. Enim quia voluptas ea culpa voluptas. Minus temporibus aut ut similique qui. Possimus sed iure voluptas dolore minus et ea. Esse consequuntur et eum omnis voluptatem ipsum ut. Et distinctio accusamus fugit est ullam. Repellat id excepturi ipsa consequuntur. Itaque beatae libero possimus est hic. Mollitia aut vel quia dolor unde. Corporis molestias molestiae consequuntur saepe. Qui quasi esse sed minima et dolor. Omnis in alias delectus laboriosam molestiae. Incidunt possimus ut libero in quod illo ad. Explicabo dolores et error eaque fugit recusandae. Accusamus ut itaque et tempore sunt. Et deleniti sequi ut dolores culpa tenetur. Tempore labore accusantium est quia. Pariatur in libero aut optio. Velit quo aliquid exercitationem id et id id ut. Dicta labore eaque sed ipsam laboriosam ipsa. Eos asperiores tempora tempora voluptates ducimus ut assumenda. Sint enim quaerat nostrum non. Vitae tenetur libero et quibusdam voluptatem ipsum. Omnis minima qui vel quam dolor pariatur velit. Assumenda enim aut quisquam repellendus quia. Dolores iste aperiam maxime et quae nemo cupiditate vel. Ipsum eos reprehenderit quia ut ut nisi velit quis. Officiis vitae placeat deleniti dolorem nulla et. Accusamus non qui ducimus occaecati quibusdam et. Ut dolor magni exercitationem recusandae ea numquam facere. Dolorum quisquam neque officiis dignissimos. Quis eligendi dolorem veritatis accusamus rerum consequatur quo ipsam. Autem eaque fuga a officia enim nihil molestias impedit. Consequatur earum quia dolores perspiciatis doloribus. Consequuntur cupiditate vero delectus voluptatibus voluptatem. Dolorum voluptatem est nulla et labore debitis nam. Assumenda odit omnis sed dolorum temporibus ipsa adipisci officia. Quisquam saepe impedit quia aliquam. A sint molestias nam corrupti. In amet nisi alias explicabo occaecati repellendus quia delectus. Nulla velit repellendus cupiditate. Temporibus qui eos dolor sit et ducimus. Modi vel amet qui quibusdam temporibus. Est eius quaerat et deleniti illum eveniet. Cupiditate error eum repudiandae error exercitationem autem et. Modi aut repellendus quasi. Assumenda vero reiciendis totam deleniti reprehenderit voluptate. Ducimus accusamus iure voluptates. Est voluptatem impedit sint fuga nihil consequuntur ipsa. Dignissimos aut voluptatibus sed nemo. Labore suscipit assumenda ipsum qui minima id consequuntur. Voluptatem delectus asperiores quia qui cumque. Et aperiam eligendi et tenetur. Dolor vero a quia eius eum ut rerum. Molestias voluptas praesentium aliquid non iure. Non eaque non et totam aliquid. Enim vel qui ut. Rem molestias odit doloremque omnis consequatur numquam vero. At officia ut fugit non velit ratione fugiat. Harum ea hic aut pariatur ipsa. Corrupti sed officiis sequi quo. Ad rerum voluptas eius illo natus. Quidem quidem deserunt eum voluptatem. Rem nesciunt nostrum est ad voluptatibus. Qui aut culpa rerum dicta. Minus in tenetur est est eos asperiores. Perferendis voluptate iste cupiditate. Error veniam qui explicabo quis delectus aut ea. Voluptates ut facere et neque eum ut enim. Accusamus consequatur sequi nihil id. Assumenda et enim doloribus. Nostrum cupiditate laboriosam cumque quod qui quaerat. Velit aut qui rerum deleniti consequuntur recusandae. Maxime consectetur eos vero quia. Aspernatur aut qui nihil aut ullam illum esse neque. Facilis ducimus tenetur illo maiores quasi doloremque vitae sequi. Sit soluta et pariatur enim. Impedit architecto officiis dolor enim quam earum. Explicabo adipisci qui est deleniti eligendi architecto nihil. Sint omnis et officia et. Sit voluptatibus adipisci quas quas pariatur quia aut maxime. Repudiandae totam praesentium eius nihil. Rerum maiores laboriosam esse ipsa optio optio. Qui voluptates molestiae sunt enim quis. Quam ut consequatur sit et nemo maxime quibusdam ipsam. Dolorem voluptate sunt vel ipsa eius expedita et est. Quisquam incidunt doloribus nulla eos. Aperiam voluptatibus dolores enim aliquam pariatur explicabo. Quo quasi quia sit facilis blanditiis voluptates. Sit aut et explicabo laborum voluptatem. Saepe labore aspernatur molestiae magnam. Sunt velit aut non in aut perferendis iusto minima. Hic totam est dolore culpa. Qui qui adipisci nulla repudiandae assumenda similique. Impedit dicta aut temporibus repellendus quos nobis. Temporibus ratione corporis pariatur quidem hic et rerum. Sed consequatur ut impedit nisi qui ut qui consectetur. Voluptatum ipsum delectus quia sed delectus qui omnis. Dicta facere ducimus ad nihil quam iste id tenetur. Dolores qui culpa voluptates explicabo. Placeat aut mollitia illo omnis. Earum dolore inventore unde soluta laborum vel. Veniam quia omnis excepturi expedita sed ipsum omnis. Ea cumque natus ut. Quam mollitia in voluptatibus consectetur et. Accusamus est ut aut et ad dignissimos recusandae. Voluptatum magni recusandae et officiis. Explicabo eos debitis aliquid ab cumque. In numquam quia quis iusto qui. Veniam est et consequatur cum molestias voluptatem veniam. Iusto beatae odio ea pariatur ad eos et quis. Vel sapiente et commodi qui. Velit non aut voluptates corporis expedita. Repudiandae incidunt ut commodi. Ipsam fugiat non ea inventore itaque sed omnis. Non consequatur velit dolorum. Voluptas nemo eum harum nihil. Incidunt eius voluptatum accusamus ex debitis consequatur labore debitis. Dolorum expedita vel nemo eveniet cum labore. Quia et et id aut facere atque soluta. Non ex debitis autem labore. Nesciunt et qui veniam doloribus illo. Minima necessitatibus sint ducimus dolores cumque velit. Repudiandae temporibus itaque ducimus. Ea amet facilis ratione numquam omnis.', '1.jpg', '2021-11-14 16:02:32', 45),
(2, 'Vel omnis facilis adipisci.', 'Consequatur quis quidem et similique explicabo esse. Aut et quia cupiditate quasi explicabo. Non ullam ut ipsa et ut. Laudantium earum commodi voluptatum eum. Minima impedit est culpa voluptatem doloremque ut ea debitis. Nihil adipisci est molestiae quis est assumenda. Tempore et reprehenderit aliquam occaecati. Accusantium neque quisquam explicabo dolores labore. Illo error voluptas veniam ut laborum. In quas inventore reiciendis eius labore nostrum provident vitae. Laudantium ea at officia aut tempore et qui. Rerum ut nemo cumque optio. Ad nesciunt laborum ea illo minus veritatis dolores praesentium. Omnis ut autem voluptas accusantium unde. Et beatae officia quis. Pariatur et non dolor deleniti aut quisquam est fuga. Quod facilis nemo sed culpa. Eos cupiditate quod quaerat iure. Dolor saepe ipsa perspiciatis earum qui error magni. Optio id fugiat nihil commodi nemo aut similique. Culpa sunt qui consequatur. Distinctio officia accusantium et eos odio possimus sapiente. Illum hic sapiente magnam magni. Ratione ab quis qui quasi dolores aliquid illo dolor. Sapiente rerum quos quis et quia quam. Quasi cum impedit nisi ullam repellat. Veritatis impedit quaerat est eligendi. Officia dicta quam iure vitae iste. Suscipit odio libero alias ut ratione maiores dolorum. Perspiciatis recusandae consectetur ut maiores quia ex perferendis. Ullam qui molestiae perferendis ut at. Cumque praesentium error et consequatur. Voluptatum magni ex officia autem ut dolorum dolorem. Dolores assumenda numquam quo reprehenderit molestiae voluptas aut. Consequatur pariatur doloribus ut facere excepturi aut autem. Libero fugiat perferendis eaque ipsa necessitatibus quos. Eveniet sint voluptatem ducimus totam explicabo voluptas ipsam. Et dolorum ea necessitatibus veniam. Ea nobis voluptatum aut qui quas maxime exercitationem. Reprehenderit voluptate dolorem delectus voluptate nihil quia aut. Voluptatem qui voluptatibus nesciunt est. Quia est sed magnam modi ut et. Ut voluptate deleniti quidem corporis. Ratione repudiandae voluptas eaque asperiores. Est delectus libero ut corrupti et autem nostrum. Qui voluptates in ut est. Et omnis eos fuga possimus. Assumenda necessitatibus sed aut dolor. Eveniet voluptates quo autem dignissimos voluptatem beatae quo. Omnis veniam quod ipsum optio pariatur consequatur accusantium. Deleniti enim tempora et ut. Minima non dolor qui nobis est rerum beatae voluptatibus. Aliquid a repudiandae itaque quos qui. Perspiciatis consequatur earum tenetur placeat aut nobis. Voluptas quo quod quo veniam quisquam at. Dolorem nulla commodi non suscipit illo repudiandae possimus. Aut aut distinctio excepturi omnis est enim accusamus. Quia odit fugiat qui non officiis vel voluptas. Qui ipsam fugit consequatur ea sed est. Minima dolor ratione sed exercitationem amet minima. Odit voluptates eos qui iure. Ad consequatur praesentium consequuntur eum iusto eligendi. Odit eius eius odit accusantium neque est. Consequuntur aliquid et quis quisquam quo. Porro impedit ducimus nesciunt non qui aperiam excepturi. Dolor voluptatum earum animi rerum. Dolorem totam quia sed tempora aut quam laboriosam facere. Sunt et commodi harum et sit quis esse sit. Ut repudiandae eveniet ut libero ex corporis et. Distinctio dolores ut qui beatae dolorum cum. Et maxime alias voluptatibus eligendi est voluptate. Qui ad autem vitae. Sint tempora et hic rerum eaque saepe. Molestias omnis assumenda et dolor ipsa magni voluptas. Fugiat blanditiis est non quis. Et consequatur quae quibusdam dolores ipsa. Est voluptatem et distinctio fugiat. Ipsum non autem consequatur est ullam quibusdam quam. Porro dolores ut officiis hic sit animi vel blanditiis. Ut voluptatem sit et voluptatem nisi repellendus. Dolor quis officiis sequi aperiam voluptatem et modi. Ea sint pariatur voluptatibus et dolores. Ea natus assumenda quod aut esse. Occaecati omnis id et sit. Sint odit ea minima qui voluptas expedita et voluptatem. Omnis dolor eos magnam perferendis. Sit veniam quia incidunt voluptatem. Repudiandae saepe aspernatur est. Et esse aliquam perferendis culpa sit beatae qui. Sed nihil inventore temporibus officiis. Omnis fuga voluptatem error amet dicta. Pariatur voluptas molestias doloremque explicabo. Autem molestiae ea accusamus ducimus. Aut blanditiis nobis itaque et qui perferendis. Quos eum laborum minus fugiat quam. Fuga aspernatur totam voluptatum quis. Rerum quis sapiente quia nisi cupiditate illum. Est at sit omnis autem amet corporis. Sint autem ea quo nobis velit optio vel et. Saepe ipsam cupiditate voluptatibus blanditiis eum eos. Et nobis delectus facere commodi numquam. Nostrum nulla veniam suscipit nobis omnis sit autem. Culpa recusandae asperiores nesciunt necessitatibus. Repellendus ipsum error excepturi deserunt repellat. Non nihil aut et vel omnis voluptatem eius. Distinctio autem molestias similique harum sequi iusto. Recusandae voluptate aut pariatur et nam veritatis ratione. Ipsam ut libero pariatur dolor quia adipisci aut. Maxime aut ut aliquam deserunt. Dolor libero velit sit reprehenderit consequatur. Accusantium aut ut quod ullam sit autem. Dolores et nisi odio excepturi saepe animi. Sed aperiam molestiae non. Laboriosam sequi et molestias minus id. Qui sunt aut et sequi quo. Dolorum beatae earum ad. Vero ut nesciunt quo nihil nihil. Id voluptate velit sunt accusamus. Qui quia non corporis expedita culpa est dolor. Omnis illum est labore odit maiores dolores ab. Consequatur sed ullam ex sed autem sit molestiae. Ratione dolorem minus at temporibus eligendi doloremque numquam. Fugit temporibus quae libero quaerat et sequi et error. Culpa id est qui quam laborum laborum. Placeat cum non est provident. Natus ut sapiente voluptatem debitis nemo eum eius. Quaerat recusandae quidem dolorem eius inventore est. Ut fuga animi mollitia reiciendis fugiat voluptatibus. Sint aut molestiae nobis et esse debitis natus. Iure enim rerum aut. Tempora aliquid corrupti sint aut reprehenderit.', '2.jpg', '2021-11-14 16:02:32', 42),
(3, 'Dolor dolorem iusto voluptatem.', 'Nobis non quo et velit. Enim sit mollitia odit vel ab non ab. Mollitia mollitia ut minus tempore soluta facere. Et voluptas dolore omnis aut mollitia aut commodi. Porro odit eaque saepe rerum. Qui assumenda ex aliquam ea porro quos. Ut et id et dicta. Possimus omnis ratione nesciunt necessitatibus. Et natus ea velit porro magnam soluta fugiat quo. Velit qui nihil sit placeat. Eveniet qui a nemo quasi non. Veniam nobis ad est est fuga voluptatem tenetur. Reiciendis ut ipsam nam est possimus rerum. Sed quae nostrum qui provident at. Nostrum neque reprehenderit consectetur esse odit voluptatem provident. Odit sapiente sequi quo rem nesciunt eum. Rerum rem excepturi quo illum ea vero rerum. Est laudantium ut vitae necessitatibus aut nobis soluta. Ipsa adipisci sunt sapiente quasi dolorem totam. Est exercitationem voluptatem earum numquam sit beatae amet. Ut sequi a doloremque expedita odio doloribus repellendus eaque. Et et sed ratione quis reiciendis officiis. Quis blanditiis vel doloremque nam. Commodi mollitia sequi ab dolorum tempore natus quaerat. Et vitae harum et provident. Est tenetur itaque vel sed delectus illo ad dignissimos. Quidem ut dolorem eius ducimus aut blanditiis sed. Molestias deleniti modi dolorum et. Iusto minima voluptatum reprehenderit sint quo sed vel. Quisquam non quo sunt quibusdam expedita sed magni. Aut sequi ullam quaerat veniam ratione non. Hic eius et repellat et. Reprehenderit quia nisi eos numquam illo. Eos nihil quod aut assumenda ea et placeat. Est blanditiis enim ut velit eaque provident. Voluptatem voluptas explicabo sed minima sunt in inventore. Omnis minus vel rerum ratione porro rerum. Enim itaque blanditiis qui rerum quia autem. At alias perspiciatis cum aut qui. Dolores temporibus sit velit ea fugit velit. Dolorem alias a asperiores mollitia architecto laudantium voluptatibus. Deleniti omnis ut et sit et. Corporis repellendus quia voluptatum ea quod qui nihil tempore. Corporis ex nemo enim tenetur ad odit. Qui labore rerum beatae iste. Quia aut eos et. Qui provident perspiciatis qui voluptatem temporibus quo harum. Magni est delectus explicabo. Autem impedit ut et qui velit. Doloremque et deserunt quos unde natus ut ut ex. Blanditiis natus autem porro cumque. Recusandae ut tempore ea. Omnis ut qui ipsa aliquam sapiente architecto odio. Nihil sequi reiciendis laborum aliquam. Fuga possimus eos beatae enim ipsum non qui. Ut adipisci quasi eaque. Qui odit rerum consequatur nihil quis. Quia ut blanditiis sint laudantium debitis sequi. Voluptatibus reprehenderit est sunt voluptate delectus voluptatum. Voluptas ea nihil aspernatur inventore voluptatem officiis unde. Repellat explicabo adipisci doloribus vel delectus et sit. Et veniam architecto iusto explicabo. Ipsam officia fugit eius voluptatibus blanditiis dolor. Enim rerum asperiores numquam. Quibusdam aliquam dignissimos unde architecto inventore. Quia aperiam incidunt ipsam dolorem placeat. Est eos eos occaecati nihil assumenda. Vel possimus consectetur voluptate quod magnam molestias. Aliquam blanditiis maxime earum magni qui libero. Saepe rerum numquam a deserunt. Excepturi nesciunt atque harum possimus qui expedita. Nihil illo natus sapiente adipisci voluptatibus. Sint delectus qui non natus aut veritatis repellendus. Vero dolorum nisi qui optio sunt. Quibusdam cupiditate quia doloribus culpa eos natus qui qui. Dignissimos in quos facere. Dolor non ut qui pariatur maiores facilis repellendus. Saepe aut ipsam ut ut numquam quo dolores. Dolorum voluptatem corrupti sint aliquid doloribus. Asperiores deserunt quia ab ullam soluta temporibus itaque. Enim nisi unde nesciunt tempora iusto. Odit assumenda suscipit est mollitia sint alias. Eveniet est sint odio sit eum. Voluptatem similique numquam qui nam dolorem qui. Dicta cum dolorem odit amet et. Quos cum qui fugit omnis suscipit consequatur aut ut. Accusamus eum autem labore sint eius est et. Qui et reprehenderit culpa sed quo in. Atque hic sed non. Optio eaque facilis non dicta. Laborum facere voluptas maxime dolorem saepe velit. Nostrum velit aut velit ut dolore. Ut aut iusto modi iste. Sed quasi illum officia eius magnam veniam occaecati. Ut voluptas tenetur ad temporibus ea est. A quisquam repudiandae magni et excepturi et similique. Recusandae accusantium quae consequatur quia aut. Numquam doloribus vel laudantium nobis et aliquid necessitatibus. Optio aperiam necessitatibus adipisci ullam. Dolor illo est temporibus voluptatem aut et rem. Libero qui facilis ea est voluptas. Quis totam veniam ut et architecto. Veritatis minima sit quos officiis explicabo incidunt odio. Sequi nesciunt odio non accusamus non qui. Explicabo quam possimus maxime in. Vitae odio dolores quam et ex qui. Dolorem consequuntur nam vitae. Quibusdam in voluptas voluptatibus et. Nobis recusandae velit vitae et corporis excepturi est doloremque. Molestias sed ducimus in ut dolorum et dignissimos. Qui exercitationem laudantium nihil vero praesentium saepe. Ad consequatur minus officia velit sed velit. Sunt sed omnis cum excepturi et ducimus. Similique explicabo quia ipsum minus voluptatem eum alias. Sed dicta aspernatur autem accusantium sapiente natus distinctio. Ea illum qui dolor aut aut qui. Nihil consectetur ad officiis quia quibusdam molestiae. Commodi harum ipsa consequatur qui. Assumenda sit dolore in. Sed ea qui repudiandae laboriosam quibusdam a in. Dolorum quisquam explicabo maiores. Possimus voluptates vero neque similique praesentium. Beatae ullam ab consequatur mollitia. Iste deleniti ut nesciunt tempora ipsum asperiores. Voluptatibus corrupti repellat debitis non beatae assumenda. Ducimus in illum est nihil dolor. Voluptatibus sit voluptatum voluptas nemo qui. Officia animi perspiciatis sit culpa quo consequatur. Sed repellat voluptatibus neque fugit vitae libero provident. Aut deleniti laudantium ea qui voluptatem. Praesentium voluptatem adipisci fuga maiores. Et et qui omnis enim eveniet.', '3.jpg', '2021-11-14 16:02:32', 19),
(4, 'Sint corporis non magnam.', 'Eos repellat et quisquam magni et blanditiis et rem. Omnis repellendus vel nihil accusantium. Ipsa optio sint ea est perspiciatis voluptatem. Doloribus ducimus dicta et sit sint nihil. Non at quam id. Illum laborum iste sed. Dolores et sunt qui at blanditiis deserunt recusandae. Ea minus voluptatem esse minima quos sed enim. Sint temporibus animi nam iusto voluptates. Tempora quos quam consequatur magni. Sunt corrupti atque dignissimos sint ut tenetur aut. Sed sunt eos error doloremque ut minus vel. Quisquam sint perspiciatis praesentium est natus et eos. Inventore inventore earum commodi at. Et similique corporis eum voluptatem aut ea. Distinctio voluptatibus rem animi culpa ut ratione aperiam magni. Voluptatibus sit culpa vitae sint recusandae et. Dicta iure aliquam numquam et sint veniam laudantium. Nam ea aliquam explicabo rerum odio. Voluptatum corporis sequi minus dolorem architecto pariatur. Assumenda rerum quaerat magnam sed voluptas. Quos possimus suscipit esse rerum eum soluta dolorum esse. Harum illum ut repudiandae quos eaque. Similique necessitatibus suscipit laborum et modi corporis voluptas. Quam fuga tenetur voluptatum quia tempore porro quis. Quo voluptates nihil vel totam. Id labore placeat eos iusto. Sed deserunt non ad praesentium aut voluptatem incidunt. Ea dolore minima itaque blanditiis. Doloremque sed voluptas consectetur consequatur sit. Aut molestiae et dolore voluptatem. Aut aspernatur a est recusandae. Illo et perferendis eum sunt sunt hic sit sunt. Nam qui praesentium perspiciatis veniam laudantium et. Impedit doloribus nostrum qui architecto saepe. Corporis temporibus quaerat labore in voluptatum. Magni esse qui neque mollitia. Vitae in architecto mollitia consequatur rerum fugiat. Vel ipsum qui doloribus voluptatem perspiciatis ut soluta. Quam enim asperiores non ut vero. Tempore maxime nam enim impedit molestiae impedit. Aut ut sunt libero voluptatem. Sit ipsum ullam voluptate assumenda. Consequatur quibusdam cupiditate necessitatibus est. Et laborum a velit culpa aut iste. Ipsum dolore deleniti ut tempore quasi. Minima beatae eum reprehenderit inventore. Doloremque alias nam ea tempora minus. Placeat quia iure aliquam. Occaecati in repellendus voluptates accusamus atque possimus. Reiciendis minima ullam ratione ut maiores nam magnam corporis. Occaecati doloremque iure fuga et id ea. Fugiat occaecati corporis omnis vel qui. Non quod dolores in totam unde provident consectetur fugit. Est enim minima expedita et earum. Voluptatem dolore nobis qui. Amet quia tempora optio. Voluptas occaecati nobis porro recusandae sed. Quae et enim cumque sit ipsam magni. Qui ratione corrupti asperiores non. Asperiores dolore nihil sequi quasi quia. Praesentium repellendus autem atque quo aperiam quia. Repellendus aliquid vero ullam. Et molestias totam tempora quo aut. Debitis at voluptatem tempora impedit fuga corrupti impedit. Quia autem atque minima perferendis. Omnis maxime a maxime sed maiores nostrum dolorum. Doloremque numquam ab aut provident. Velit modi quis magnam exercitationem ut. Quidem cupiditate laborum cupiditate. Et assumenda aut dolores minima odio. Vero a repudiandae consequatur voluptatibus excepturi commodi iure. Est alias iure et accusantium explicabo at. Enim modi dolores blanditiis et officiis qui laudantium. Provident animi sint facere ipsum nobis temporibus. Maiores possimus occaecati consequatur asperiores quo atque. Consequatur sit totam sunt et voluptatem ad non. Voluptatem atque ratione pariatur suscipit omnis alias. Veritatis aliquam omnis vitae in aperiam est. Eaque quia aut nostrum. Minima id recusandae voluptatibus qui nobis vel. Repudiandae mollitia explicabo maiores placeat provident veritatis est. Dolore fugiat aut ab magni et voluptatem fugiat. Animi minima cum et corporis eius earum et. Unde voluptatibus placeat numquam quis maiores. Et sapiente iure autem. Tempore nostrum asperiores non sint. Quia deleniti ut in sequi sit ut iusto. Modi possimus amet dolorem ut ut consequatur aspernatur. Molestiae laborum ad ut incidunt enim eos ut. Natus reiciendis sint quia praesentium laborum incidunt est. Omnis expedita ut nisi ratione ab. Voluptas veniam sint eos ab. Blanditiis nesciunt unde in est. Dolor nobis veritatis recusandae nisi. Sapiente ut maiores eaque cum quas. Odio debitis accusantium recusandae rerum eos. Quam ratione impedit nemo nam dolore fugit sed. Temporibus eum sint porro architecto. Laborum eligendi voluptates doloremque esse adipisci voluptatibus odit. Sed non tempora et qui ex. Dolores explicabo quia esse vel occaecati nam sint dolores. Dolorum nam itaque distinctio commodi. Est consequatur sequi ex voluptate. Illum minus sapiente reiciendis fugit voluptates. Et minima excepturi suscipit maiores ipsam cum ad fugit. Quis aliquam qui qui aut dolor. Nostrum autem consequatur exercitationem unde sed. Qui in a aut ratione veritatis tenetur sint cum. Animi vitae exercitationem accusamus fugiat beatae quia dicta facere. Praesentium voluptas asperiores ipsa et hic eius qui. Aspernatur aut dolores dignissimos beatae et. Dolorem perferendis sit fugiat aut. Aliquid sit hic sint nihil facilis unde rerum. Et architecto non molestiae omnis consequatur. Et dignissimos vero illum est nostrum ut aut. Nisi repellat delectus quia fuga quae dolorem. Ipsam magnam quam dolorem consequatur atque. Cupiditate quo minima quo nihil facilis eligendi eveniet. Accusamus veritatis voluptates recusandae quo rerum omnis. Quam modi nihil molestiae et dolor. Magnam sunt voluptatum commodi eveniet quisquam perspiciatis. Est qui sit quod voluptas quo rem suscipit cumque. Fuga ullam velit iste culpa recusandae sit. Cumque vel libero quae qui quibusdam libero sed. Animi ut est quasi aspernatur itaque aut rerum. Neque fuga consequatur suscipit saepe eos ipsum. Dolor optio inventore quos dolore et. Deserunt velit ipsum enim repellat dolorem delectus asperiores deleniti. Sed esse tempore doloribus laudantium.', '4.jpg', '2021-11-14 16:02:32', 15),
(6, 'Quia et qui vel possimus sunt recusandae.', 'Sapiente quidem ut reiciendis et et nesciunt sint suscipit. Dolor nostrum dignissimos earum iure. Minus sit minima sed similique. Laboriosam consequatur optio optio veniam pariatur. Dolorum tenetur voluptatem labore ullam nihil. Soluta exercitationem animi dolorem neque eius. Assumenda ut velit modi eum voluptatem quo. Aut atque consectetur voluptatem ea. Quia aut inventore saepe suscipit dicta qui temporibus. In occaecati ut sunt. Eius minus qui debitis natus. Sed repellendus sunt dignissimos. Ea debitis unde fuga quo. Corrupti quae totam sint et ratione soluta. Similique facere temporibus corrupti quia. Voluptatem ab explicabo quos cumque. Unde reprehenderit temporibus dolore a voluptatem et est. Earum nulla dolores porro eos ut. Sapiente quis eaque assumenda aspernatur blanditiis. Illum repellat consectetur ut. Iste ipsam placeat voluptatem aut id nisi quia. Velit nesciunt est molestiae ut. Qui deleniti perspiciatis minus non ea. Aut ut non quasi reprehenderit quod. Dolores ea id maiores numquam molestiae. Nostrum quisquam ut voluptatum et dolorem voluptas voluptas. Quaerat ut deleniti ipsa eius. Ea ea laborum totam animi facilis unde vel at. Et consequatur ad voluptatem quod velit et. Aut non quia et est ipsa incidunt. Cum ipsa minima illo temporibus expedita voluptatum. Tempore aut dolores expedita maxime nesciunt voluptatum. Eum sunt illo officia quos. Asperiores doloribus quasi ullam perferendis expedita. Officia ratione ratione vel. Commodi voluptatum nostrum laboriosam beatae voluptatem quis. Modi eius exercitationem repellendus repellendus. Nostrum dolor tempore quos aut exercitationem. In sint deleniti dolor eum dolorem ea. Deserunt corrupti numquam adipisci voluptatem repellendus ut repellendus. Sunt quae laboriosam incidunt fuga voluptatem ab. Rerum quae est eius voluptatem perspiciatis. Qui deleniti nostrum id perspiciatis est nihil id. Qui aut perferendis quis eaque velit totam qui. Est quo qui officiis tempore omnis cupiditate repellendus. Quo ea autem laboriosam pariatur quo beatae quia. Voluptatum ullam minus et aut perferendis quos ut debitis. Eos eos reiciendis quaerat. Rerum veritatis vel vel ipsum repellendus quis vero excepturi. Ipsum et ut soluta consectetur aut qui voluptas. Dolore sed eum magni deserunt. Possimus minus aperiam consequatur voluptatem alias iure. Quasi veniam impedit sit fugit quisquam id. Et aliquam eaque ut nulla. Aut vitae similique ab pariatur est. Blanditiis et sed ut tempore porro qui repellat. Velit ex vero expedita quo. Rerum excepturi eveniet vitae sed voluptate sit dolor amet. Mollitia est ratione et qui. Saepe rerum voluptatem commodi expedita officia sed. Commodi voluptatem at harum. Qui totam voluptatem sequi natus qui expedita. Nostrum non reiciendis eum modi adipisci optio quo. Quam saepe autem voluptas quia. Et sit qui numquam. Eum labore incidunt corrupti ratione assumenda placeat et repellendus. Aut autem exercitationem laboriosam. Voluptatibus illo ut quaerat est accusamus voluptatem fugit natus. Aut quia error commodi adipisci distinctio. Voluptates culpa enim ea ad. Exercitationem accusantium sed sint repellat. Consequuntur in dolore numquam quaerat magnam ducimus enim explicabo. Esse corporis temporibus itaque sunt. Reprehenderit quidem ut veniam sint maxime enim quia. Ut voluptate quo omnis qui reprehenderit eos quo. Corrupti quo dolore consectetur eligendi voluptatem veritatis tempore. Quia ipsum esse rerum et. Voluptas distinctio ab iste necessitatibus voluptatem. Perferendis omnis magnam ea illo. Est similique qui eum. Excepturi neque saepe ad asperiores ut quasi aut. Ut cupiditate debitis incidunt quos expedita. Dignissimos ea nihil ut est voluptatum aliquam. Numquam qui et magnam. Vel beatae ut voluptatum est nihil. Non odit quo voluptatibus ut omnis praesentium. Explicabo ducimus provident qui est. Nihil libero dolores quisquam cum et quia ipsa debitis. Dolores ut cupiditate est impedit consequatur omnis et architecto. Culpa a explicabo nobis accusantium sed ut itaque. Aliquam consectetur excepturi magni impedit omnis quia saepe. Nesciunt consectetur quod sint repellat recusandae rerum. Saepe cumque quidem modi magnam. Fuga dolores ea sint sed id. Aut adipisci eveniet consequatur id. Voluptatem non est sapiente aut. Eos facere iure neque distinctio ratione placeat. Vel mollitia aliquam ea. Tempore atque atque quaerat et eligendi qui nobis. Accusamus magni dolores in provident. Deserunt sit qui ad consequuntur. Quia molestias voluptatem vel deserunt aspernatur aut praesentium. Aut doloremque et cumque. Consequatur rerum quod corporis ad. Sint error molestias officiis velit. Vitae error a omnis nostrum. Nesciunt dolores provident porro voluptates expedita. Officiis sed modi modi laborum quos et perferendis debitis. Vitae eaque dolor ipsam illo quo commodi excepturi. Earum rem autem cumque voluptatem eligendi aut. Ea quo mollitia qui expedita ut. Dicta quam laborum possimus unde quasi modi eum. Repellendus qui reprehenderit odit omnis in autem nostrum expedita. Velit sint quis incidunt nesciunt. Praesentium est aut dolore et. Nesciunt molestias totam velit. Eum earum mollitia incidunt velit. Debitis quo nihil voluptas dolores. Est ea ut eveniet necessitatibus. Voluptas vero beatae aut dolorem. Ea qui accusantium dolor molestiae. Ut maiores minus consectetur quae. Totam quam ut consequuntur in. Qui tenetur quam debitis ea modi. Rerum quibusdam dolor placeat nesciunt ipsum. Delectus laborum eum sapiente possimus fugiat et deleniti nesciunt. Atque qui asperiores magni pariatur voluptatum. Illo enim quidem illo reprehenderit eius. Temporibus provident quas porro ad possimus harum nobis nesciunt. Magnam culpa accusantium molestiae beatae cupiditate perferendis. Et rerum in voluptas. Et veniam excepturi quod quam eum et et. Non facilis qui perspiciatis quos suscipit eius velit libero. Quae eaque voluptatum dolorem eveniet rerum. Consectetur iusto aut ratione sed quo atque rerum. Qui facere et laboriosam id numquam.', '6.jpg', '2021-11-14 16:02:32', 34),
(7, 'Magni amet corrupti soluta saepe odio id.', 'Doloremque voluptates quo sequi ut cum aut pariatur. Delectus nihil molestiae nemo impedit a molestiae est. Praesentium non distinctio quia aut neque optio harum omnis. Fugit magni doloremque velit nihil facere incidunt ut ut. Dolore qui quis dolorem et mollitia tenetur. Voluptates inventore repellendus molestias cupiditate recusandae tempora esse. Delectus nemo veritatis aut sed. Assumenda illum ea tempora deserunt fugit. Ullam et molestiae accusamus recusandae recusandae. In ab placeat perferendis impedit cupiditate ipsa eum quae. Corporis vero optio ipsum tenetur. Temporibus deserunt officiis quas qui fuga facere qui. Assumenda atque accusamus molestias repellat. Aperiam in provident libero. Ea voluptas et adipisci et vitae rem molestias. Ex sed tempore est blanditiis. Voluptatem reprehenderit vero cumque impedit natus. Provident doloremque unde tenetur nesciunt magni voluptatum doloremque. Id tempora molestiae a reprehenderit et quo consequatur. Eius illum id aut sint commodi ratione. Debitis qui nihil et quia consequatur dicta ad. Delectus corrupti vitae quis autem aut animi maiores optio. Repellendus aliquam mollitia non beatae voluptatibus dolores veritatis. Pariatur placeat fugit architecto ut hic voluptatem tenetur. Odio sint aut provident nihil. Numquam eveniet porro omnis aut ducimus. Ea quis at excepturi delectus numquam eaque. Ut deserunt ab est et libero nisi veritatis illum. Quia aspernatur tempora qui qui. Reiciendis molestias officiis hic assumenda. Aut cumque iste veritatis sequi perspiciatis. Voluptatum quos voluptatem odio explicabo est ut ratione deserunt. Ipsa culpa et aliquid ad blanditiis sit. Dolorum earum repellendus consequuntur omnis aperiam ut quia. Explicabo quod sed officiis recusandae. Ipsum quisquam dolorum soluta error. In quos numquam a et dolorem accusamus. Vel iusto reprehenderit cum. Eaque voluptatem quas quas non. Esse tempore quasi delectus reprehenderit deleniti. Et quod velit perferendis accusamus itaque rerum pariatur. Non facere ut porro aut aliquam similique quia. Et quisquam quisquam porro recusandae. Numquam debitis molestiae eligendi tenetur et. Officia est nam voluptatem laudantium voluptas. Deserunt qui occaecati alias saepe. Ipsam voluptatum provident atque ratione omnis asperiores dolorum quaerat. Asperiores consectetur atque doloribus et quia quas voluptas. Reiciendis quo tempore excepturi quas. Incidunt ab dolorum itaque. Libero minus occaecati voluptatum. Officiis eaque minus reprehenderit libero commodi autem consectetur. Placeat perspiciatis autem aut porro debitis placeat aperiam. Sit laborum tenetur dolorum et. Eos sit repudiandae quos adipisci saepe doloremque. Est ullam distinctio vel neque dolorem autem quis. Aperiam voluptas officia ipsa. Blanditiis dolorem praesentium et laborum voluptatum et libero provident. Vel repudiandae nostrum error. Est qui consectetur quia nesciunt. Velit repudiandae quos in iusto laudantium. Sequi tempore similique amet unde distinctio autem molestias. Quae et pariatur non facere. Voluptas fuga id ipsa sapiente. Voluptate officia voluptatem voluptatum culpa nobis vel ratione. Atque mollitia molestiae rem aliquam nihil consequuntur. Sed sit consequatur provident unde optio et recusandae. Fugit fugiat eum similique dolorem. Atque unde aut excepturi omnis asperiores aut ut ut. Id aut quisquam illum rem ut. In ex necessitatibus sit fugiat soluta qui nemo. Recusandae voluptas delectus maiores qui sint. A non velit officiis blanditiis atque. Sequi aut fuga consequatur velit est quia accusantium. Qui assumenda aut eos veritatis doloribus repellendus amet. Sed autem aut placeat error corrupti qui minima non. Iste tempora provident architecto perspiciatis quia aut minima. Dolorem sunt minima non ex et. Doloremque et quam neque consectetur dolores sit voluptatibus dolores. Voluptas provident saepe neque iste placeat amet. Occaecati voluptas quo pariatur consequatur dolores laboriosam sed. Voluptate quod aperiam quod tempore deserunt minus provident. Cum doloremque nostrum asperiores dicta tenetur dolores. Blanditiis quia itaque maiores suscipit eum et quam. Omnis similique ipsa quaerat omnis incidunt dolor. Neque natus et velit voluptatem est odit. Deleniti dicta enim ipsam et perspiciatis voluptatibus ab. Neque rem illo quo ut quia molestiae. Alias nobis nihil omnis dolorem at eum voluptas expedita. Similique rem voluptates sit consequatur aut rerum voluptas nisi. Non explicabo ut blanditiis quidem veniam voluptatibus voluptas. Dolorum quaerat dolorem in eligendi veniam ut qui. Alias ut commodi quibusdam fugit voluptas ratione. Eaque ipsam earum a quia. Qui ex quas at aut aut consequatur temporibus et. Error sed nobis esse repudiandae ipsa. Exercitationem sed vitae vel odit adipisci eligendi. Minus esse est deserunt expedita quas autem. Nihil aperiam nihil placeat qui dolorem ut. Esse laborum vel quos. Suscipit nemo necessitatibus enim eius sit eos et. Est velit est molestiae quis enim ea. Maiores quia officia perferendis itaque. Dolor vel ab quas possimus est labore. Libero qui eligendi voluptates dolor maxime sed tenetur. Quisquam minima qui repellat minus. Odio iure impedit ab ut reiciendis omnis. Quae sint soluta rem deleniti facilis. Quod cupiditate porro cupiditate vel cum perspiciatis aut. Eum qui nulla repellat est vero. Rem consequatur officia sit quae incidunt. Fuga accusamus amet magni ratione. Quia dignissimos natus qui aut aut. Officia aut itaque explicabo odit. Qui quis nulla illum laboriosam voluptatem sed sequi aut. Voluptas quia neque blanditiis voluptate. Dicta aliquam eos perspiciatis suscipit nostrum vitae. Est odit veniam autem dolores. Aut exercitationem asperiores quos et tempore dolores ut. Porro omnis in nobis fugit quae inventore eum. Natus architecto molestias beatae rerum quo molestiae sapiente. Nemo veritatis dolor necessitatibus. Odio rem corporis facere facilis impedit itaque. Aut et itaque nesciunt doloribus iste excepturi a. Nisi enim vel et.', '7.jpg', '2021-11-14 16:02:32', 15),
(8, 'Doloremque quibusdam molestiae qui id.', 'Totam asperiores nihil tempora vero eum voluptas. Sunt voluptate voluptas repellat eaque. Deserunt velit deleniti voluptatem a eius. Sint error minima quod nihil eaque veritatis totam. Non sed asperiores temporibus quia autem corrupti ut. Omnis debitis rem nihil velit eveniet. Enim debitis voluptatum repellendus sunt est consequatur. Omnis maxime odit cupiditate et odio nisi. Velit nulla qui explicabo ducimus velit sed cum quis. Quia temporibus cum occaecati amet quia aut neque. A est qui et dolores. Necessitatibus dolores asperiores eum nihil quasi dolorem molestiae animi. Eum occaecati quo accusantium atque et eum. Corrupti et quo libero non qui voluptatum fuga sapiente. Ipsum distinctio sequi deleniti recusandae totam. Sapiente dolorum placeat reprehenderit. Est aut alias necessitatibus iure molestias a. Sunt fuga quod quo voluptas repellendus maiores fugit dolores. Vitae consequatur illo non voluptate et est nam. Dolore omnis provident ut dolorem numquam. Cum voluptas non impedit illum aut perferendis eos. Earum odit veniam voluptates consequatur. Dolores nisi voluptatum error voluptas in quos modi. Id voluptatem maxime reprehenderit ut. Et deleniti ipsum doloremque non dolor. Magnam assumenda ab eum id. Nihil aut consequatur rerum dolorem accusantium minima facere. Ut sint laboriosam est. Sequi qui sequi aut in quasi. In est qui quaerat numquam dolor voluptatem. Totam laborum error dolorem non molestiae aliquam et. Aperiam inventore voluptatem est est. Iure quasi voluptates quisquam quia. Dolore vitae voluptas est sit ipsum. Sed ab cum aut est minus in. Magnam vero facilis consequuntur odit eum. Occaecati reprehenderit est labore ad voluptas. Quidem aspernatur recusandae voluptatem. A quisquam sed et asperiores nihil at. Reprehenderit quia maiores quo atque non corrupti sit. Suscipit ut quod in. In ut est aut. Assumenda suscipit sit in ut omnis. Rerum est eaque voluptate fugit vitae voluptatem dolor. Quaerat culpa quam ad blanditiis. Qui nihil autem facere praesentium officiis. Ipsum est et animi molestiae. Iusto maiores architecto doloribus sed similique. Exercitationem qui perferendis ut sint aut repudiandae occaecati. Provident sapiente exercitationem aspernatur vero est commodi. Non magni autem voluptatem pariatur et itaque est et. Repellat sunt dolorem eos voluptatem. Nulla earum autem iusto quia odio qui. Ut et animi vero perferendis enim aut ipsam. Iusto laboriosam reprehenderit alias. Sed ut et voluptates tempore. Consequatur voluptatem quae sit nostrum doloremque. Accusamus incidunt rem voluptatem labore eum delectus tempore. Doloribus officia optio voluptas. Consequatur cumque assumenda illo aut. Expedita distinctio ipsum excepturi quia sint quia modi. Aliquid assumenda modi sapiente dolores. Quia aut animi aperiam harum. Repudiandae recusandae est provident exercitationem aliquid quidem in. Similique maiores iure in non rerum. Et incidunt assumenda in impedit aut ut. Quis sunt aut delectus pariatur. Mollitia consectetur maxime vel totam deserunt sed qui. Consequatur aut et labore pariatur qui rerum culpa. Cumque omnis facilis reprehenderit atque iste enim esse. Sequi eligendi voluptas quo recusandae quidem sit. Rerum occaecati commodi quae ullam nulla. Mollitia odit saepe ullam quibusdam at ratione consectetur. Ratione cumque atque quo id quis odit. Minima eum est possimus dolorum quaerat modi. Perferendis reiciendis aut nemo cum. Saepe repellat tempore dolores assumenda ut. Dolor iure nostrum magni occaecati vel illum. Maiores praesentium autem praesentium fugit quisquam assumenda. Dignissimos adipisci est quis quos qui quasi. Et tempore et et voluptas. Ab voluptatem dolor ut nemo et. Impedit est officiis fugiat et id. Voluptatem est voluptatibus aut sit. Et alias perferendis ad rem quasi ipsa. Rerum ut est quia qui aut perspiciatis dolorem. Mollitia quo nesciunt error quo aliquam est quia quia. Placeat voluptatem soluta cupiditate ea. Recusandae aliquam incidunt qui voluptatum qui voluptatem pariatur. Deleniti placeat ut cupiditate cum. Corporis non incidunt commodi eius voluptate fugiat. A laborum numquam officia aut porro corrupti assumenda voluptas. Natus aut et accusantium a nihil ea. Hic quia ut iure quaerat sequi aut. Vel ad quia aut ad et dignissimos. Velit harum suscipit asperiores minus enim vero nobis. Enim iste dolores libero praesentium voluptatibus reprehenderit. Dolore ad explicabo voluptas in. Reprehenderit placeat quibusdam quod quis dolores ut. Quia illo libero asperiores ad enim. Cupiditate cum modi repellat aut voluptatem. Asperiores eius hic est repudiandae dolorem cupiditate aut. Enim autem veniam consequuntur et. Placeat pariatur ad deleniti sit dicta consequatur. Aut quia non nemo velit veritatis quia. Tempore esse consectetur et qui. Labore perferendis corrupti iusto repellat dolores. Eos in reiciendis nostrum quis ut quia. Officia labore maiores itaque vitae quos eum adipisci. Hic omnis quia blanditiis nam similique. Quaerat reprehenderit sunt magni possimus sit. Expedita quod et dolorum enim modi rerum dolores. Ea et quia accusantium labore atque. Amet perspiciatis molestiae et quas nulla. Animi consequatur recusandae facere expedita aspernatur ratione. Consequatur modi possimus animi laborum. Iure similique possimus voluptatibus dolorem. Repellendus error necessitatibus voluptates sed at rem aut. Libero error veritatis nihil occaecati. Libero est deleniti soluta qui quia harum. Velit iusto necessitatibus reprehenderit eos. Qui exercitationem vitae quis expedita. Numquam maiores necessitatibus ab consequatur. Voluptates cum in quidem reprehenderit aliquam. Reprehenderit quia sequi sed omnis quia. Aperiam tenetur vel alias quaerat eum quia. Aliquam nam ab numquam sed. Ut ut dolorem et explicabo illum quos. Et modi sint eligendi consectetur expedita temporibus. Et dolor deserunt aliquid aperiam non aut. Enim sapiente suscipit sed incidunt quia tempora consequuntur. Minima consequatur quis tempora atque provident modi iure eos.', '8.jpg', '2021-11-14 16:02:32', 5),
(9, 'Nam et eum aliquam aut cum non molestiae ipsa.', 'Est fugit saepe accusamus rem magni. Provident enim sequi doloremque. Et repudiandae animi sed officia excepturi nobis sed maiores. Ut cumque facilis et. Reiciendis laborum itaque rerum. Facere maiores culpa veniam aut assumenda consequatur quia. Vel qui dignissimos repellat voluptatem autem voluptatem et corporis. Sapiente et est exercitationem quis. Eos blanditiis esse vitae sit qui asperiores dolorum voluptatem. Omnis fugiat perferendis saepe quae sint. Rerum nesciunt labore maxime dolorem. Quibusdam reiciendis enim reiciendis laboriosam. Quae porro non ut eum sunt ut. Suscipit debitis consequatur ut autem consequatur. Quis aspernatur quas quasi voluptatem natus sequi voluptatem. Mollitia tempore at praesentium saepe itaque. Ut rerum quibusdam est saepe. Non officia voluptas minus iste non repellendus dolorum. Sunt tempore aperiam odio. Est praesentium voluptatem laborum voluptas molestiae tempore nostrum adipisci. Quod sed amet nisi aut. Dolorum alias inventore debitis quibusdam praesentium consequuntur. Ad nesciunt eos officiis at. Explicabo fuga eligendi officia velit. Iste ut ut enim quaerat voluptatum harum. Enim eius et hic. Eos sunt et doloribus dolores voluptas placeat provident. Natus commodi provident aut. Dolorem ipsam in minima saepe rerum facere dolores impedit. Laudantium maxime dolorem beatae et. Tenetur ea enim ut maxime animi dolorum vel. Explicabo saepe sed dolores voluptates cumque est soluta. Omnis sed ullam dolores nam est accusantium. Aliquid eveniet possimus odio sit quidem odio tempora. Consequatur eligendi voluptate aut at ex. Libero adipisci esse maiores incidunt libero quis eius temporibus. Consectetur ducimus vitae ipsam et quos suscipit voluptatem enim. Quam aut vero ullam ut. Placeat dolor quo sunt inventore qui ex asperiores. Autem eaque magni inventore et. Pariatur eos tempore dicta quia natus rerum. Similique corrupti et rerum laudantium sunt distinctio quia. Tempore est sint nostrum et. Praesentium deserunt magni facere sit maiores maiores. Qui delectus magnam dicta. Delectus eos eum earum voluptatem autem nam. Sequi vitae qui est esse. Eligendi repellendus quo sed a magni. Dolorum facere quos veritatis omnis sunt ab et. Iusto repellendus in ea natus quia eos accusantium. Eos animi debitis voluptatem molestiae quia possimus. Omnis accusantium et reiciendis sit. Explicabo saepe eum aspernatur eveniet soluta id eligendi est. Culpa perspiciatis aut quia sunt quasi. Quos laboriosam omnis repellendus aut. Ducimus porro eveniet voluptate et. Eum facilis ducimus possimus ut aut alias ea. In asperiores molestiae sit facere. Repellat nobis quaerat neque ipsum. Sit laborum molestias corporis rem rerum mollitia. Et officia rerum et dolor dolor occaecati. Et delectus et laborum eos exercitationem dolorem ut. Quam nostrum ut aliquid velit magni. Perspiciatis optio fuga omnis corporis laboriosam cum dignissimos. Sapiente ut totam quas omnis odit. Velit in iusto itaque. Et earum voluptatem sit ut sunt vitae qui ratione. Eos deserunt neque ut aut expedita veritatis. Nam in veniam ut fugit voluptate voluptas qui. Nemo assumenda aut excepturi reprehenderit sunt dignissimos. Aspernatur quo et et et et tempore atque totam. Et reprehenderit totam deserunt explicabo nostrum reiciendis. Libero dolore repellendus itaque repellat sequi. Harum eveniet fugit accusamus eum amet. Accusantium in modi nobis facilis aut. Cumque porro distinctio est et quisquam voluptatem. Et non provident dolor et qui autem. Eius eos vel aut sed ut eum et. Distinctio aut possimus corporis ut. Eos quia facilis exercitationem eligendi dolor et fugiat et. Inventore est placeat ut delectus voluptatem corrupti. Labore ea quis corporis libero velit dolorem. Ut esse at dolorem debitis quo. Consequatur dolores neque ut est harum incidunt occaecati. Mollitia ut error maxime dolor. Ipsum non hic neque. Nihil quisquam ut molestias at quae fuga omnis. Adipisci ullam ea voluptatum qui vero placeat. Eum quaerat sunt illum optio atque et. Architecto nulla qui neque voluptatem iste. Non ut dolorum aut odit ut. Praesentium quia ut neque fuga iste ea. Et possimus tempora dolorum ad doloremque at. Incidunt qui laudantium itaque unde. Doloribus aut eaque impedit quis optio a dolorum. Est minus quo voluptatum dolores quis quia. Sit velit velit qui consectetur est. Non nihil architecto quos aliquid nesciunt. Ut voluptatem quis quibusdam quidem. Quisquam vel nobis perspiciatis officia officia velit in amet. Eos doloremque commodi ut et rerum est voluptas. Nesciunt in eveniet nisi itaque fuga ducimus sunt. Sint nesciunt aspernatur nostrum saepe. Non est ab ut dignissimos et. Provident ut voluptas dolor voluptas ea accusantium minima quis. Voluptas sunt consequatur ut. Eum eaque ad facilis voluptas asperiores ipsam dolore. Porro quisquam aliquam sit nesciunt tempore fugit. Voluptatem sequi veritatis aut autem. Est excepturi est explicabo molestiae asperiores debitis expedita. Et distinctio magnam rerum magni fuga non error. Nisi quaerat architecto dolorum non officia expedita reiciendis. Consequatur qui qui ipsum quo aliquam tempore maxime. Rem vero sapiente voluptas odio et placeat. Totam amet voluptas quasi minima explicabo totam. Quia dolorem quos fugiat accusamus exercitationem molestiae non. Dolorem omnis iusto explicabo et. Vitae delectus asperiores ut quisquam. Maiores eveniet eligendi et nostrum perspiciatis veritatis. Voluptatem itaque sed sapiente unde. Fugiat neque dignissimos quam voluptas ab est facilis repellendus. Laudantium eos suscipit labore architecto quos. Et vero sit tenetur enim itaque. Quod quos magnam voluptas hic rerum nihil sed et. Ut qui in animi et quod dolor. Corporis non impedit sapiente pariatur natus. Et architecto quaerat eum et ipsum aspernatur cupiditate. Ab aspernatur beatae debitis facilis nihil aut praesentium. Aperiam minima repellendus animi deserunt.', '9.jpg', '2021-11-14 16:02:32', 20);
INSERT INTO `article` (`id`, `title`, `content`, `image`, `created_at`, `author_id`) VALUES
(10, 'Impedit quia id unde occaecati et.', 'Dolor voluptatem aperiam ut dolor est at tempora. Amet est necessitatibus alias quia. Sit a nulla eaque soluta et molestiae. Tenetur necessitatibus iusto quas qui sint et possimus. Sapiente dolores itaque quasi architecto aliquid. Et est aut vel sint alias. Dolore eos dolores voluptates temporibus ut. Aut repellendus expedita voluptatem autem quasi aut quia. Sint quibusdam exercitationem dolor quis qui quae quis recusandae. Provident suscipit autem sit praesentium rerum fuga sit. Sit ut molestias et. Modi molestiae sequi nostrum minima consequuntur. Tempora provident ipsa tempore cupiditate illum ratione unde praesentium. Nemo dolor voluptatem delectus autem odit. In voluptatibus nobis ut doloremque voluptates quia. Nulla sunt soluta ut voluptatem. Aliquid similique consequatur soluta. Sequi nesciunt at ipsam soluta non. Minus optio facilis eum a enim numquam culpa. Hic occaecati nobis accusamus ducimus veritatis eos. Dolores repellat ut accusamus officia placeat eos sed. Maxime nisi numquam rem voluptatem sapiente. Delectus impedit aperiam et. Cumque possimus rem perspiciatis odit. Quis ipsam nihil placeat aperiam. Quia numquam expedita dolor excepturi quia. Eveniet qui praesentium ut doloremque. Pariatur perferendis dicta ab est ipsum aspernatur. Ducimus aut quidem corporis et. In sed natus ea a qui molestiae rerum ipsa. Qui culpa ut provident qui. Labore sapiente nemo optio. Atque sed quasi soluta esse et et nisi. Porro deserunt officia rem. Ut est ut repellendus eos. Illo corporis veniam ab in totam laboriosam hic. Ea qui veniam mollitia sit assumenda. Non non pariatur dolores consequatur alias. Rerum dolorem voluptas accusamus debitis. Aspernatur iusto dignissimos cupiditate in laboriosam. Et consequatur quo saepe maiores id. Eligendi omnis aut et eum natus occaecati. Repellendus omnis et ducimus sunt alias ea. Optio eveniet cupiditate itaque enim deserunt dolores. Est culpa blanditiis amet aut non illum. Voluptate rerum eligendi qui maiores et similique corporis facere. Doloribus quod et est molestiae. Deserunt quod earum esse quia deserunt molestiae. Eum est esse similique numquam dolore inventore. Sed officia maiores incidunt eius. Cumque sit eaque fuga optio. Cumque dolor magni ea perspiciatis quasi voluptatem. Sit est fuga facere nisi temporibus modi est. Blanditiis est voluptas qui expedita et dignissimos. Assumenda dolorum quibusdam qui quo distinctio tempora. Sed sequi qui voluptas debitis adipisci iusto animi aspernatur. Quisquam voluptas sint dicta vero nobis. Voluptatem aperiam provident velit fuga repudiandae minus consequatur. Officia magnam debitis debitis recusandae minus. Tenetur ad occaecati et omnis repellendus accusamus. Sit voluptas et laboriosam sunt doloremque. Distinctio dignissimos ea voluptatibus est id quia. Non numquam sit delectus. Enim aut aut et nostrum. Exercitationem id nam repellendus aut possimus qui. Eum voluptas molestias aliquam quis. Qui explicabo quia voluptas earum aspernatur. Laboriosam expedita earum deleniti et est dolorem. Quia dolores quia consectetur. Voluptates ut et esse molestiae et consequuntur rerum. Est facere fuga hic voluptatum rem sunt hic. Tempore maiores non in facere atque. Assumenda maxime eos deleniti sunt autem maxime. Nulla reprehenderit corrupti dolorem rem repellat. Sed impedit explicabo amet vel. Nihil exercitationem repellat fuga. Excepturi error distinctio eligendi et. Delectus ut doloribus enim sequi. Non nisi alias doloremque illum et. Qui nesciunt minus praesentium harum magnam saepe. Esse sit cumque qui et nesciunt nihil quam qui. Ex enim ipsa est. Porro sed qui culpa possimus necessitatibus. Illo ut dignissimos vero et vel quia est. Aut pariatur sequi ex velit quod voluptas amet. Aut cum quisquam nesciunt praesentium. Blanditiis animi aut aut. Esse eum ducimus consectetur iusto assumenda ut id. Eum sapiente omnis consequatur repudiandae officia ex ipsum. Et suscipit ducimus laboriosam autem. Eveniet blanditiis autem ex quo sit. Amet blanditiis est et. Vero aut veniam laborum. Voluptatum temporibus cum consequatur omnis. Nulla provident ipsa consectetur nemo consequatur. Quia soluta saepe quam quia. Officiis et qui facilis dicta animi. Voluptas quos dicta in dolorem est voluptas. Natus ratione consectetur et animi facere at. Consequuntur eius explicabo saepe quibusdam quidem. Rerum officiis rerum nesciunt natus qui et excepturi. Ad dolorem voluptate quibusdam omnis voluptas voluptatem sit corporis. Aut blanditiis in enim voluptatem. Cupiditate animi consequatur alias molestias rem. Commodi eaque qui corporis consequatur necessitatibus. Eum velit enim necessitatibus doloremque. Rerum et repudiandae quis iure est. Deleniti repellat animi repellat laudantium. Dolorem quaerat omnis numquam tempora error veritatis. Ipsam voluptas error occaecati et possimus nihil. Quo corporis id pariatur repellendus. Eos laborum consequuntur eius dolorem dolore. Error soluta velit iusto rerum qui id velit. Quo assumenda tempora dolores quia animi sequi maiores perspiciatis. Nam suscipit aut non beatae facere. Blanditiis est sed quasi unde delectus dolore laboriosam. Eaque est odit nihil impedit qui. Animi ut ut impedit unde. Est fugit expedita quis molestias. Cupiditate impedit aspernatur qui in id. Eos cum minus dolorem cum suscipit sed nobis. Omnis aliquam qui explicabo inventore eius. Quas incidunt quis dolores ut. Et ducimus repellendus quis recusandae fuga. Praesentium officiis id ab assumenda magnam. Dolores ut incidunt rem neque minima dolorem delectus. Dolorem consectetur temporibus omnis veritatis voluptas. Perferendis voluptatem blanditiis rerum at in. Ut molestiae et fuga sed nisi. Quia aliquam mollitia animi quo ut enim labore. Aliquid ratione enim architecto reprehenderit porro. Error cum voluptatum magnam provident. Expedita vel vel at officia dolores id nemo. Voluptates sed illum et at. Pariatur et fuga ea dolore et debitis.', '10.jpg', '2021-11-14 16:02:32', 47),
(11, 'Provident aut amet ratione unde dolores quos.', 'Est molestias ad omnis praesentium. Possimus reprehenderit dicta rerum expedita tempore sed. Cum eum nisi nihil quasi quod possimus. Sed dicta doloremque ullam veniam est ad. Provident qui quibusdam ad et enim voluptas. Rerum minima vel ut quidem sequi quo et. Autem adipisci qui eum rerum. Ducimus dolorum explicabo alias sed exercitationem doloremque. Sed saepe provident beatae ea eaque beatae. Odit eveniet iste quia qui cupiditate est et corrupti. Accusamus doloremque adipisci qui qui. Voluptas reiciendis quo quam maiores aut. Culpa voluptatibus labore delectus consequatur molestiae. Sit natus sed dolores facere. Voluptatem et ipsa tenetur in. Quos ut molestias labore temporibus enim et. Rem quod pariatur atque at iusto. Ipsum accusantium vitae sint autem. Impedit eaque perspiciatis deleniti consequatur praesentium unde. Voluptas cum ratione natus corrupti autem ut quis et. In voluptate ipsa exercitationem repellat. Eveniet quis quia porro. Sapiente et et consequatur aut. Adipisci et ut animi quis autem amet. Dolorum qui rerum numquam. Et nam suscipit sint. Quod quia itaque cumque inventore doloremque quia ut vel. Aut et suscipit quis facilis. Placeat qui totam aut pariatur sit nihil omnis. Harum perferendis suscipit veniam nobis. Similique velit fugiat dignissimos quo. Magnam tempora culpa cumque praesentium saepe ut non. Nobis in odio labore quasi corporis fuga. Iste eum et atque ducimus blanditiis sit. Accusantium repellendus enim et ut. Nulla dolorum sit ut et saepe sit dolor. Et omnis distinctio placeat ad. Qui aut ut ut dolor et sequi. Harum harum quaerat praesentium expedita ratione alias magni. Est sed magnam in alias aliquid quasi. Enim et magni nihil vel voluptatibus. Aliquid eius ducimus totam consequuntur. Ipsam incidunt unde vel nesciunt. Accusamus voluptate consequuntur natus nihil omnis. Magnam libero veritatis deleniti illo voluptatem cupiditate atque. Perferendis architecto vitae sed sit sit provident fugiat quia. Non sint dolorum sed similique. Distinctio corporis quas omnis consequuntur quo saepe quae. Enim eligendi distinctio dolorem corrupti quo ad. Est ex ea a asperiores. Quia assumenda reiciendis quo quasi vitae necessitatibus qui. Quam illum dolores magni eveniet non. Cum omnis ut harum aspernatur nulla vitae asperiores esse. Eveniet voluptatem unde voluptas. Et eveniet quaerat ut alias. Dolores asperiores sapiente vitae qui. Natus non consequatur veritatis non laboriosam. Nam dolor ducimus dolor quia nisi dolorem necessitatibus. Corrupti beatae optio in. Dolor omnis nulla ullam recusandae. Cupiditate aliquid dolorum commodi. Nulla possimus minima nobis recusandae aut reiciendis deleniti officia. Magnam velit facilis magnam omnis repudiandae. Quas tempora facilis odit et delectus. Eos sed voluptatem quia quia a sed tempore. Sit aliquid perferendis dolorem. Qui molestias corrupti porro nihil animi quae rerum. Dignissimos ex explicabo aperiam officiis. Esse iure eius aut delectus amet cupiditate. Quo blanditiis veniam adipisci expedita animi. Velit tenetur voluptatem aut minima. Consectetur et voluptatem pariatur reiciendis. Ut dolorem voluptates sunt recusandae dolores labore. Nihil ratione quo quas adipisci et delectus. Illo nostrum commodi asperiores dolor qui quia voluptatum. Similique non et sit deleniti. Ipsa dolorem qui dicta assumenda. Repudiandae ut ea assumenda earum praesentium. Officia voluptas qui qui quam ut autem et eos. Consectetur sunt ut pariatur et repellendus nostrum. Quod numquam omnis cumque accusamus. Consectetur ut natus quasi dolores dolores harum. Eveniet velit reiciendis ex voluptate iste at assumenda. Est id voluptatum ea excepturi sunt at. Unde ut voluptatem est maxime inventore tenetur. Voluptatem nemo ut voluptatem magnam provident quo. Mollitia amet nesciunt voluptate ullam nam. Delectus illum aut non. Dolorem vel ipsum numquam qui. Qui nostrum veritatis libero aut repudiandae. Repellat voluptatibus itaque ut dignissimos et voluptatem quis laudantium. Maiores occaecati placeat quis accusantium est nam. Voluptatum et nostrum nisi quia incidunt. Sed provident molestiae consectetur recusandae eaque. Sapiente rerum modi vitae aliquam tenetur aut. Quis eos quam enim ut laboriosam. Et placeat omnis amet minus veniam. Quo autem in laborum consequatur dolore earum repellat. Voluptatum numquam quia illo voluptatem quos vel doloremque qui. Unde culpa optio quis quis odio non quis. Ut sed et minima et fugiat optio aut rem. Sit expedita nemo tempore id cumque. Ut quod ad aliquam explicabo commodi. Nulla esse hic at fugit vitae numquam alias autem. Iure corporis ut rerum ea placeat occaecati qui perspiciatis. Est laboriosam et eius beatae sequi. Natus adipisci et eius tenetur. Occaecati voluptas saepe eum et porro. Quo in voluptatem inventore non. Vel perspiciatis et eaque architecto voluptatem aut et. Libero expedita vitae vero consequatur temporibus aut. Aspernatur aut nostrum quasi deleniti eum omnis neque necessitatibus. Ea dolores ad sit voluptatem. Natus iste eligendi quis aliquam sint optio. Molestiae cumque ab ut. Facilis est ut at vel mollitia. Non voluptatem facere sint suscipit architecto. Magni sit magni voluptas atque quo iusto repellendus. Nesciunt non et eligendi voluptate. Aut dignissimos temporibus eaque alias adipisci sint non. Nemo corporis dolor doloribus sint. Soluta dolorum architecto repudiandae totam repudiandae magni. Qui ex repellat tempore vel praesentium. Omnis harum doloribus quia quis similique minus consequuntur sit. Quis adipisci suscipit sit voluptate. Eligendi et minima et aut. Sit et aperiam dolores totam praesentium aliquam fuga. Quos dolor vel ex veniam vero amet est illum. Sunt quibusdam quia sed delectus. Magnam consectetur omnis rerum voluptatibus ipsa. Et voluptatum vero doloribus distinctio. Aut ducimus praesentium doloremque quasi quos qui natus. Voluptate minima dolor et. Iure fugiat qui repellendus veritatis itaque expedita omnis.', '11.jpg', '2021-11-14 16:02:32', 48),
(12, 'Magni aut vitae excepturi ut facere amet.', 'Quia cupiditate nemo illum repudiandae. Eos impedit dolores vel molestiae perspiciatis. Nulla placeat tempore qui voluptatibus incidunt enim modi ipsum. Voluptatem deleniti et totam veniam et eum. Maiores libero iure in et. Aut quo quam qui minima. Sapiente quo id veritatis aut. Libero esse quasi est eligendi inventore in nihil. Asperiores in atque dolorem nostrum quasi culpa nisi sed. Repudiandae nihil quos vero nesciunt qui nam magni deserunt. Et necessitatibus consectetur voluptatem. Similique quae cumque sint molestiae at. Aperiam nihil eligendi dignissimos. Inventore labore dolorem eum et. Facere fugit quibusdam doloremque maxime aut et ut. Sed distinctio dolorem consequuntur. Pariatur ut perspiciatis voluptatem voluptas. Beatae ad sint aliquam non ipsam voluptatem. Harum sunt iste nihil ut neque veritatis. Nam aut aut et sequi cupiditate. Assumenda aut placeat recusandae est neque aliquam nam. Facere et sit illum dolorem. Ea commodi ut consequatur voluptatum velit enim dolores. Recusandae eaque ut in eum rerum. Nemo veniam iure ratione voluptas corrupti. Explicabo sed nobis molestias et assumenda. Cumque necessitatibus consequatur molestiae. Veniam similique voluptas officiis ullam animi. Iusto architecto praesentium officia dolores labore qui omnis. Unde doloribus eos facere ad ab in. Aliquam ipsum ea aut quos mollitia et corporis. Error voluptate dolor ducimus molestias at. Est omnis sunt deserunt provident voluptas ipsam. Natus debitis mollitia quis. Sit qui illo tempora laborum deserunt et. Voluptatem libero commodi iste impedit. Sit error quasi nihil esse omnis blanditiis. Nemo praesentium sed quisquam. Assumenda quas nisi omnis placeat quia in unde. Corrupti consequuntur aut voluptas. Quasi consequatur aut quidem iusto architecto aut. Assumenda hic voluptatem et consequatur est fugiat magnam labore. Et et dolor necessitatibus non alias optio necessitatibus. Eaque et maxime qui voluptas. Et beatae officiis sint iure esse assumenda totam. Voluptas accusamus odit assumenda inventore. Qui sint modi quaerat molestiae. Et atque ut minus dolores iure tempore quam. Repellat voluptas mollitia eos velit. Quibusdam sequi nulla quos expedita. Ratione earum fugit non voluptates. Ea saepe voluptatem rem quasi. Quis dolorum est sint minima. Quas saepe nobis sunt. Reprehenderit eligendi quisquam et impedit porro. Magnam distinctio est laboriosam ad adipisci rerum dignissimos quia. Fugiat totam cumque nemo ab eligendi sit consequatur. Totam ullam recusandae fugit voluptates excepturi laborum. Et autem temporibus autem animi eum repudiandae. Architecto quisquam et quas quasi et impedit esse. Fuga vel accusamus nihil voluptatum ducimus accusantium. Maxime ea nihil cumque doloremque voluptatem officiis necessitatibus officiis. Nihil delectus illum dolor atque sequi voluptatibus cum ut. Tempora qui explicabo vel consequatur provident reprehenderit. Eum asperiores dolore id facere sint repellat. Nulla qui sed vel consequatur beatae. Eligendi voluptatem ipsam velit nesciunt. Quam nam totam fugit expedita rerum fugit pariatur. Voluptates reprehenderit animi illo expedita rerum quo occaecati architecto. Dignissimos repellendus pariatur unde laboriosam quod. Veniam et repudiandae delectus amet. Et natus id et quo ullam. Dolore vel ab deserunt laboriosam consequatur labore. Aliquid et quod id dolorum nemo blanditiis. Aliquam recusandae illum pariatur id dolore sed culpa rerum. Impedit distinctio sequi culpa corporis impedit ea laboriosam quaerat. Vel fuga quibusdam odit eaque eveniet qui. Et unde illo vel dolor in. In cum ab reiciendis porro est odit voluptatem. Aliquam dolorem tempora sint cumque in. Eaque sunt dicta perspiciatis hic occaecati ipsa est. Pariatur est architecto ipsam impedit accusamus fugit. Beatae non iste nostrum dignissimos rerum qui ea. Molestiae unde consequatur exercitationem repellat veritatis. Aliquid est dolorem nesciunt et. Et et cupiditate sapiente aliquid ut facere. Voluptatem culpa voluptas non maxime aut explicabo repellat. Minus soluta non doloremque quaerat rerum voluptatem inventore molestiae. Nobis sint ad occaecati tempora aut autem. Velit voluptatem voluptas molestiae sapiente iusto. Deleniti qui modi reprehenderit cupiditate modi non. Ex voluptatem consectetur quas ipsa vitae accusamus velit. Voluptatem dolor et temporibus tempora excepturi vero vitae. Error eveniet similique a architecto. Molestiae aliquam qui id modi repellendus esse inventore. Sit exercitationem natus ut enim. Praesentium sapiente culpa enim est. Quas nostrum commodi qui veniam. Placeat tenetur quia molestias assumenda porro velit numquam. Praesentium eveniet aspernatur vel voluptas voluptatum nihil. Voluptatem est corrupti quia et dolorem eaque aspernatur dolor. Repellendus inventore rem a consequuntur. Ut nulla magnam minima maiores dolore accusamus. Dignissimos sequi voluptas assumenda aut explicabo. Doloribus saepe repudiandae recusandae qui architecto. Aliquam soluta iure architecto unde nam commodi. Soluta perspiciatis facilis voluptatibus ex nostrum. Amet sunt omnis qui numquam ullam. Est aut et dolorem numquam deleniti sint vel. Quidem officiis voluptas voluptas. Ipsam cupiditate enim laboriosam quo sit. Et dicta voluptatem et eos delectus ut. Quia delectus quia quod architecto qui autem. Magni libero fugit eum hic labore. Repellat sit quia vitae et aliquid sit. Libero aspernatur beatae et illum. Dolore aut dolorum at eveniet. Aut sed mollitia ipsum quam tempora dolorem. Temporibus similique voluptatem est ullam quis aperiam. Laboriosam optio aut laudantium ad corrupti excepturi rerum. Ipsa repellat omnis et eveniet. Laborum enim ex et esse sapiente eum. Autem dolorem molestias laboriosam dolor minima amet sapiente ullam. Autem dolor aliquam qui ratione sunt. Dolores voluptas architecto sit delectus excepturi reiciendis aut pariatur.', '12.jpg', '2021-11-14 16:02:32', 31),
(13, 'Ut commodi molestiae sunt amet nobis.', 'Aut similique consequatur enim quam est. Et quis nisi repellat occaecati numquam veritatis. Eius modi vero assumenda est suscipit. Fugit possimus provident illo error quod omnis officia. Dignissimos eos voluptatem ab ad. Beatae atque quis quod esse unde ducimus consectetur. Quos aut aliquid in. Et est illo et rerum doloribus aut culpa. Optio est eos est ut dolore et eligendi. Nesciunt asperiores iure soluta ratione repudiandae quaerat accusantium. Iure et modi fuga sit perspiciatis eius ratione. Sit eos sapiente aut explicabo tempore perspiciatis. Et dolore at distinctio ullam velit. Alias quos unde eum blanditiis at. Quos officia nobis deserunt quo est. Et rerum laudantium dolorum nemo assumenda deleniti esse ut. Sed consequatur ullam cumque fugit tempora eos hic. Eum facere neque beatae pariatur. Odio voluptas esse ut rerum inventore vel illo. Doloribus ad corrupti qui nulla cupiditate voluptatibus magnam. Sunt dolor omnis consectetur nihil veniam. Eum ut nesciunt id sapiente est. Omnis suscipit velit dolores totam. Eos iste veritatis esse quam velit dolor. Voluptatum aut veniam vitae placeat nostrum possimus molestiae. Qui suscipit consequatur nam consequatur incidunt veritatis. Voluptatem commodi blanditiis sint rerum ea. Et consequatur amet sint rerum soluta culpa. Quae consequatur natus consequatur quasi nesciunt. Velit minus neque maiores voluptas sapiente maxime non. Iure est ab architecto sed architecto qui sunt. Id ut mollitia quam voluptatum rerum est non. Provident voluptatibus ea vero. Hic occaecati labore rerum quasi accusamus tenetur. Neque cum eligendi optio enim perferendis. Architecto sed et doloremque in quisquam vitae. Eos consectetur alias odio. Laudantium saepe in nihil nulla aut facere non. Et ducimus quia voluptas aut commodi. Rerum quia praesentium sunt vel esse distinctio velit sint. Voluptatem et excepturi eveniet consequatur ea. Amet eos ut facere a illo laudantium. Nemo vel sit consequuntur esse adipisci omnis minus. Perferendis est veniam vel in qui. Rem alias est qui. Natus quasi eos fugit saepe sed tempora provident. Iure sapiente autem sed praesentium fuga autem ab. Mollitia quae animi soluta iusto ipsum quia tempore. Aut quam provident odio enim. Sit sunt quos est placeat eveniet aspernatur. Neque velit rerum vel voluptatum. Molestias at deleniti perferendis dicta molestiae facere ut aut. Eum nemo est est explicabo ad voluptatem amet eveniet. Itaque similique pariatur exercitationem non et. Praesentium ut qui quo rerum voluptas dolorem molestiae. Aspernatur et eaque non atque nisi facere. Culpa recusandae consequatur praesentium ipsa at et. Ea nemo nulla error inventore. Reprehenderit fugiat molestiae totam perferendis est corrupti. Eligendi cupiditate ea laboriosam odit quidem. Odio odio non omnis enim saepe soluta molestias nulla. Laudantium harum explicabo nemo saepe. Et distinctio repudiandae recusandae aut voluptatem nobis aut. Sapiente vel occaecati et voluptas laudantium error tenetur dolore. Dignissimos sit quod est nam. Velit voluptatem sit illum commodi unde. Sint asperiores ex quia sint. Assumenda maxime neque aliquam in quae consectetur corrupti et. Debitis sunt praesentium facilis ducimus temporibus laudantium tenetur animi. Quia dolore sed cupiditate quia itaque. Vel possimus eum quia ipsum beatae nam qui sit. Nesciunt numquam esse tempore amet. Laboriosam aut non tempore voluptatem. Dolorum facilis voluptatem totam facere velit animi quis ipsum. Excepturi autem quia omnis itaque. Molestiae sunt et minus soluta sint illo illo. Quis beatae non alias ipsum quia quo iusto. Excepturi in facere mollitia iure. Eligendi quod accusamus a optio expedita. Enim et quas nobis aliquam et omnis. Excepturi placeat vel ut officiis assumenda adipisci hic. Aliquid voluptatem qui consequuntur occaecati. Voluptas harum voluptas dignissimos dolor. Et porro nihil commodi necessitatibus. Sit placeat consequuntur voluptatem et. Est et vitae nulla corporis illum nesciunt id. Facilis est optio dolorum est rerum harum. Et voluptatem aut velit quis qui dicta. Ullam excepturi modi libero est. Ut vitae dolorum rem nesciunt quia illo dolor. Illum sed ratione provident eos. Omnis molestiae in aut dolorem. Dolorum laborum veritatis ut illo error neque. Itaque explicabo dolores dolor dolor quaerat alias. Quas ut veniam rerum atque. Odio dolor ea nam quia sequi quaerat sit. Ipsum officiis molestiae vero adipisci et aliquid. Aut sit est vel asperiores iure eveniet in unde. Possimus ad assumenda omnis quibusdam eaque quia. Maxime id omnis impedit. Repellat dignissimos ipsam sint est quisquam rerum et. Voluptatem aut corporis illum ex. Sed explicabo sunt aliquid et earum omnis. In consequatur accusamus consectetur impedit quia incidunt corrupti. Totam excepturi veniam voluptatum veniam. Et provident doloribus earum enim rerum. Quia veritatis praesentium iure necessitatibus. Possimus est fugit rem beatae quis quo inventore. Ut sed molestiae distinctio iusto blanditiis sit adipisci. Eos maxime quibusdam voluptatem rerum. Cupiditate enim omnis sunt qui. Rerum eaque temporibus nisi officiis. Quia temporibus dolore dolorem reprehenderit. Quisquam quis qui modi quasi. Sequi esse laboriosam quam debitis voluptas. Cumque cumque dolor non voluptatum dolorem. Illum quibusdam aperiam atque sunt maiores possimus. Exercitationem voluptatem earum consequatur quia voluptatem nihil. Hic voluptatibus culpa qui quibusdam ut molestias. Accusamus harum distinctio quibusdam quasi qui quo beatae. Nostrum in sit adipisci ea adipisci praesentium corporis. Voluptas deleniti occaecati minus cum. Ipsa laudantium blanditiis exercitationem repudiandae perferendis. Quas expedita aut aliquid voluptatem eos id. Aspernatur mollitia veniam nostrum. Eum ex omnis voluptate. Dolor consequatur ea alias. Quibusdam ipsa voluptatem sit autem sapiente nihil. Error id laudantium odit et.', '13.jpg', '2021-11-14 16:02:32', 27),
(15, 'Quidem culpa deserunt eos temporibus et.', 'Ut aut quam nisi error. Quos voluptatum in ipsa voluptatum. Laudantium iste laudantium non eius recusandae. Qui minima ducimus repellendus aut repudiandae autem eum maiores. Qui et repellendus esse et corrupti qui ut. Quidem voluptas alias dolor et qui. Aut officia rerum corrupti recusandae. Eos quis veniam sequi impedit hic. Inventore culpa nesciunt non aspernatur qui odit. Iusto et molestias quis est. Exercitationem est deserunt velit dolor. Repellendus magnam optio quo sint quam. Mollitia est iste corrupti maiores ducimus enim ut. Magni quaerat laboriosam et non maiores beatae. Consequatur repellat qui quod quaerat corrupti illum. Ut rerum ut laboriosam nisi natus dolorum error. Quae voluptatem sit reiciendis. Nisi rerum earum doloremque molestiae. Quia dignissimos impedit aliquam velit laboriosam mollitia omnis. Recusandae quia omnis provident est quibusdam. Dolore non occaecati at accusamus rerum commodi laborum. Temporibus laborum at id molestiae aliquam error assumenda. Laboriosam et enim perferendis. Non perspiciatis quod earum adipisci qui quos. Et veritatis est ut. Voluptatem iusto libero incidunt qui nobis. Et quisquam cupiditate nisi mollitia rerum id. Omnis et officiis quae ut nulla. Dicta est eos omnis voluptatem. Omnis id unde dolorum aperiam velit. Quibusdam sint autem ut debitis ut ut qui. Aperiam vel ullam earum voluptatem quia voluptates quidem. Quia est suscipit mollitia eius quaerat architecto in. Nihil excepturi id fugiat repellat mollitia quas. Inventore tenetur sunt aspernatur ad. Cupiditate aliquid explicabo dolores alias quis temporibus. Eos delectus architecto asperiores dolores sit doloremque dicta. Rerum veritatis occaecati aliquam sit officia fugit illo. Atque quae et nulla et. Quia consequuntur hic animi enim. Dolore quia et veritatis vel. Nostrum rerum facilis velit nihil voluptas aperiam. Vitae iusto dignissimos earum dolores et. Molestiae praesentium rerum odio pariatur eos deserunt neque optio. Aperiam voluptate voluptas id nihil. Possimus pariatur dolorem perferendis incidunt inventore eum sed. Sit debitis adipisci commodi pariatur quidem quisquam. Excepturi optio veritatis cum nemo. Maiores voluptatibus ducimus sed. Porro harum voluptas quaerat. Fugiat asperiores sapiente eveniet nesciunt. Necessitatibus consequatur praesentium quas officia excepturi rem deleniti. Eum aut incidunt quia doloremque in aut animi. Et cupiditate reprehenderit qui ea. Eos suscipit dignissimos aut et mollitia dicta. Iure sit aut ipsam at deleniti. Et suscipit quo qui voluptatem dolore adipisci. Laboriosam ut ut iste quo. Quia vel facere molestiae dolores. Possimus dolorum omnis et molestiae nihil. Distinctio temporibus consequatur cupiditate omnis magni assumenda. Id eius nemo odit eum. Itaque doloribus eos quod vel nobis. Pariatur debitis recusandae et doloribus alias. Nemo blanditiis animi enim sint voluptatibus natus. Qui aliquam maxime error corporis occaecati cupiditate. Tempore cupiditate eum omnis quia ut est. Enim eum quo ut. Eum et consequatur facilis. Est dignissimos maiores iste. Enim eaque accusamus dolores minima. Perspiciatis et consequatur aperiam optio beatae dolorem sit. Et sunt non cumque nisi tempore sit dignissimos. Rerum modi provident voluptate repudiandae et sit qui fuga. Neque consectetur inventore recusandae voluptatem necessitatibus. Et in et deserunt commodi deleniti et fuga error. Distinctio enim culpa commodi soluta. Quis molestiae dolores eveniet facere. Impedit hic qui sequi quae quia nostrum atque. Dolor odit nulla distinctio voluptates sint. Porro consequatur ducimus sunt accusantium ipsa voluptas. Maxime repudiandae est sed. At iure rerum delectus quis veniam optio. Rem hic est quas corrupti. Itaque aliquam ea voluptatibus voluptatem quisquam. Porro qui expedita quidem eligendi asperiores ut est. Earum sed corporis voluptate quasi est. Consectetur tempora veritatis et rerum optio consequuntur laudantium. Distinctio nisi architecto ut accusantium et architecto. Consequatur asperiores corrupti architecto voluptatem sapiente est nobis. Eum natus suscipit impedit eos. Quas eos ullam impedit quia. Fugiat beatae et sapiente suscipit. Quo maxime animi repudiandae molestiae. Sed quia a ducimus excepturi et ut quia aut. Esse aut a itaque voluptatem. Minima reprehenderit facere temporibus sit. Nam quibusdam impedit ut neque architecto inventore ad quas. Aut rerum consectetur id animi unde. Voluptatem eum enim maxime ipsa molestiae. Sed facere et voluptas doloribus voluptates. Porro architecto et sit nisi. Laborum quisquam et eius aliquid maxime. Consequatur fugit accusamus corporis reiciendis. Et culpa nihil molestias autem repellat. Nesciunt quae incidunt quia maiores non. Quia aperiam quasi nihil quam. Dolorem consequuntur eos doloribus reprehenderit nobis adipisci enim. Et doloribus commodi dolore iusto saepe. Dolore magnam adipisci quas enim explicabo assumenda. Sunt dignissimos porro accusamus deleniti esse amet explicabo. Ea consequatur et aut qui voluptas illo. Quod quibusdam dolores itaque magni. Molestiae distinctio veritatis et recusandae ut. Commodi error tempore vel veniam tempora ut. Est est id totam quia. Eos voluptatem laborum fuga numquam velit dolorem. Ut architecto laudantium aliquam dicta. Ut itaque quo qui. Quos doloremque voluptatem explicabo veniam inventore impedit minima. Omnis quibusdam et ea fuga. Doloribus quo deserunt et ullam sint facilis provident perferendis. Odio doloremque quibusdam voluptas et ut. Est harum voluptatem dolorum nostrum labore deleniti iure. Illo doloribus nobis facere aut consequuntur. Aliquid voluptate est sit quisquam amet qui placeat. Sunt nesciunt voluptatem qui at in quia cumque. A dolores vel illo minima. Voluptas commodi ducimus ex exercitationem nobis exercitationem et. Rem ut ratione assumenda ut explicabo molestiae voluptate. Dolore aperiam dolorem quasi id cupiditate minima natus rerum. Quia expedita inventore sapiente vel aliquid cum adipisci. Et est quis voluptates.', '14.jpg', '2021-11-14 16:02:32', 44);

-- --------------------------------------------------------

--
-- Structure de la table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
CREATE TABLE IF NOT EXISTS `article_category` (
  `article_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`article_id`,`category_id`),
  KEY `IDX_53A4EDAA7294869C` (`article_id`),
  KEY `IDX_53A4EDAA12469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_category`
--

INSERT INTO `article_category` (`article_id`, `category_id`) VALUES
(1, 10),
(2, 15),
(3, 14),
(4, 3),
(6, 5),
(7, 7),
(8, 6),
(9, 3),
(10, 3),
(11, 12),
(12, 5),
(13, 10),
(15, 9);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `descrition`, `image`) VALUES
(1, 'Quae rerum facere autem enim molestiae.', 'Autem nesciunt eligendi tempora sequi sunt. Quod dolores delectus facilis dolor modi. Quaerat unde vero dicta quam. Deleniti placeat rerum vitae.', 'https://lorempixel.com/640/480/?53468'),
(2, 'Cum beatae atque est quaerat.', 'Quo rerum tempora necessitatibus. Quas sit facere ipsum officiis aut nesciunt. Assumenda voluptatem consequuntur et aut aut sint sunt.', 'https://lorempixel.com/640/480/?22241'),
(3, 'Odio in harum odit qui provident.', 'Dolorum officia explicabo qui veniam hic. Sed tempore corporis culpa sit. Omnis laudantium labore nihil quaerat deleniti. Enim vel autem assumenda in fugit.', 'https://lorempixel.com/640/480/?32805'),
(4, 'Consectetur sunt omnis quia.', 'Occaecati et cum qui quas sunt et consequatur et. Aut cupiditate velit repellat explicabo incidunt quibusdam. Quam optio dolore ut debitis explicabo sit illo. Sit recusandae placeat nam recusandae.', 'https://lorempixel.com/640/480/?56906'),
(5, 'Ut cum impedit velit unde.', 'Iste iusto omnis ex et ut eveniet. Nam rerum eius quo velit aut. Maxime numquam harum accusantium numquam fugiat quo. Tenetur suscipit recusandae est eum. Eligendi et eos sequi vitae. Et illum illo in. Deserunt ab beatae necessitatibus a.', 'https://lorempixel.com/640/480/?64955'),
(6, 'Amet est similique sunt ipsa corporis qui ad.', 'Aut maxime facilis nemo sed suscipit dolores perferendis. Consequatur adipisci ea est magnam tenetur distinctio sint. Pariatur maxime sed quisquam consequatur sed hic. Minus recusandae labore labore sit voluptatum.', 'https://lorempixel.com/640/480/?28870'),
(7, 'Et molestiae delectus veritatis architecto a qui.', 'Perspiciatis et nihil impedit a architecto maiores. Consequatur alias adipisci consectetur nemo et. Iste tempora sint soluta reiciendis. Velit non animi eius inventore quod.', 'https://lorempixel.com/640/480/?48908'),
(8, 'Quis dolorem molestiae ipsum odit.', 'Ut dolorem aspernatur nesciunt nesciunt. Architecto alias et consequatur ut ex. Omnis exercitationem harum nihil voluptatem id nemo.', 'https://lorempixel.com/640/480/?31654'),
(9, 'Vel esse cupiditate alias non odio.', 'Quasi praesentium est iste aut explicabo facilis. Dolores illo sed nihil facere assumenda quas. Quaerat officiis sed temporibus hic aliquid et.', 'https://lorempixel.com/640/480/?85244'),
(10, 'Molestiae ut et velit qui possimus animi.', 'Quia vel qui rerum ea. Quidem ex voluptas occaecati perferendis. Quos modi voluptates dolorem ex. Iure sequi sit qui velit earum cum sequi.', 'https://lorempixel.com/640/480/?47567'),
(11, 'Cupiditate ea ut aut in.', 'Et commodi dolores magnam ipsam fuga expedita. Unde qui numquam alias minima illo. Cumque harum eligendi deleniti ut ut quaerat eius. Magni et odit minus.', 'https://lorempixel.com/640/480/?22925'),
(12, 'Quos recusandae est dicta iure nobis qui.', 'Et laudantium sit et omnis sapiente fugit. Alias modi est iste unde voluptatem atque ex.', 'https://lorempixel.com/640/480/?67598'),
(13, 'Omnis fugiat facilis aut animi cumque ipsa iste.', 'Aperiam corrupti voluptatem delectus minima. Delectus et amet odio assumenda qui qui iusto. Qui accusantium odio molestiae aut qui corporis. Eum voluptatem consequatur rerum veniam.', 'https://lorempixel.com/640/480/?48162'),
(14, 'Recusandae modi illo quia molestiae velit odit.', 'Sit fugiat ullam et dignissimos. Necessitatibus sint deserunt aut quis rerum saepe accusantium. Id enim quo ea qui quos.', 'https://lorempixel.com/640/480/?71688'),
(15, 'Explicabo soluta rerum enim aut adipisci soluta.', 'Quia vero et quia eius nihil natus. Ipsa optio necessitatibus repellat possimus. Iste at delectus placeat excepturi dicta. Quisquam fuga velit nemo aut. Odio non sunt dolores iste.', 'https://lorempixel.com/640/480/?62101');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211114134536', '2021-11-14 13:47:03', 586),
('DoctrineMigrations\\Version20211114134939', '2021-11-14 13:50:57', 241),
('DoctrineMigrations\\Version20211126124741', '2021-11-26 12:47:47', 62);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `is_verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `created_at`, `is_verified`) VALUES
(1, 'Arden Leannon', 'Viola', 'Johnston', 'lowe.estrella@gmail.com', '.E#SX<}pRNu90v?*', '2021-11-14 16:02:32', 0),
(2, 'Dr. Darien Weissnat I', 'Pink', 'Torp', 'jacobson.millie@abshire.com', 'C${%#;\\k:S+`K97', '2021-11-14 16:02:32', 0),
(3, 'Chanelle Hudson', 'Jade', 'Macejkovic', 'raul77@hotmail.com', 'o0\\b\'tttfi\\_Vcd&', '2021-11-14 16:02:32', 0),
(4, 'Ofelia Rodriguez', 'Felipe', 'Jenkins', 'yreichel@schmeler.com', 'WKt0F$S$~OV/', '2021-11-14 16:02:32', 0),
(5, 'Tyreek Crooks', 'Brenna', 'Nitzsche', 'reva67@kautzer.net', '{fP9q%uLg`m88', '2021-11-14 16:02:32', 0),
(6, 'Miss Elouise Labadie III', 'Elenora', 'Bode', 'donavon.kovacek@wilderman.com', '}#H0\\l_P)*Jg', '2021-11-14 16:02:32', 0),
(7, 'Romaine Grady', 'Andreane', 'Nienow', 'lue.swaniawski@hotmail.com', 'tQb()5jbIRywMD:>7wQq', '2021-11-14 16:02:32', 0),
(8, 'Forest Goyette', 'Shanna', 'Lindgren', 'darren08@gmail.com', '/jx`He=+O>!\'&cwfX', '2021-11-14 16:02:32', 0),
(9, 'Keely O\'Keefe DDS', 'Will', 'Murray', 'haag.lorna@yahoo.com', 'Y<!!=<', '2021-11-14 16:02:32', 0),
(10, 'Dr. Elian Boyle I', 'Jayson', 'Murazik', 'wiza.amir@goldner.info', '<3R#!}zA>Nu:(yVzW&', '2021-11-14 16:02:32', 0),
(11, 'Prof. Georgette Casper', 'Adah', 'Orn', 'bogisich.mabel@gmail.com', 'Wv9yB-9\'s\"Z', '2021-11-14 16:02:32', 0),
(12, 'Mr. Jon Reynolds', 'Malachi', 'Sauer', 'rlemke@towne.com', '*o%~*gAm`uj>$\"FQ>M\\9', '2021-11-14 16:02:32', 0),
(13, 'Nia Jenkins', 'Leilani', 'Leuschke', 'armstrong.ewald@kihn.com', ']sq!;UJRr\\', '2021-11-14 16:02:32', 0),
(14, 'Bernardo Hackett DVM', 'Novella', 'Franecki', 'hessel.katelyn@gutmann.org', 'D]2SJW`]\'', '2021-11-14 16:02:32', 0),
(15, 'Dr. Liliana Little', 'Dameon', 'Jaskolski', 'gabriel40@hotmail.com', 'JM|.h0#jy;0U', '2021-11-14 16:02:32', 0),
(16, 'Dr. Werner O\'Hara', 'Colleen', 'Howe', 'lmoen@dietrich.info', 'M7tEWe5#1^xr(T(U8`7', '2021-11-14 16:02:32', 0),
(17, 'Dr. Joanny Langosh', 'Cielo', 'Schuppe', 'ewald.emmerich@hotmail.com', 'DC4\'h0o(', '2021-11-14 16:02:32', 0),
(18, 'Anne Dicki', 'Thalia', 'Upton', 'conroy.valerie@kub.com', 'wZoDP)L+z', '2021-11-14 16:02:32', 0),
(19, 'Prince Jones', 'Libby', 'Watsica', 'kbreitenberg@gmail.com', 'RRY]-lYTl`', '2021-11-14 16:02:32', 0),
(20, 'Imani Wuckert', 'Celestino', 'Howell', 'diego.oconnell@gmail.com', 'qmZP\'3`X<+A8', '2021-11-14 16:02:32', 0),
(21, 'Prof. Theodora Nitzsche V', 'Delaney', 'Beatty', 'douglas.crooks@hotmail.com', '%;czi)WMm/ai0a1', '2021-11-14 16:02:32', 0),
(22, 'Delphia Fisher I', 'Arielle', 'Hills', 'acrist@hotmail.com', '\'HNV4#!b\\?', '2021-11-14 16:02:32', 0),
(23, 'Aletha Farrell', 'Zoey', 'Kohler', 'ryder14@lehner.biz', 'N-.0DK*Z1v', '2021-11-14 16:02:32', 0),
(24, 'Miss Magnolia Ziemann II', 'Helen', 'Schaefer', 'arden01@hotmail.com', '=Zgr!VEv8', '2021-11-14 16:02:32', 0),
(25, 'Mr. Johnpaul Wintheiser MD', 'Austyn', 'Effertz', 'elena48@morar.info', '8o{#Oz', '2021-11-14 16:02:32', 0),
(26, 'Rhianna Beier II', 'Jenifer', 'Daniel', 'martine.koss@dare.net', 'v#z)NIej(@8q', '2021-11-14 16:02:32', 0),
(27, 'Myah Orn', 'Marcelle', 'Littel', 'quinten86@hotmail.com', '4)vVh3IA/|', '2021-11-14 16:02:32', 0),
(28, 'Ms. Erika Douglas III', 'Joshua', 'Barton', 'watson98@hotmail.com', '`3[o~.5un15J', '2021-11-14 16:02:32', 0),
(29, 'Prof. Kieran Schinner', 'Annabelle', 'Heller', 'phyatt@yahoo.com', '!j\"61t1dO', '2021-11-14 16:02:32', 0),
(30, 'Alvah Douglas', 'Carleton', 'Kunde', 'valentine.mills@yahoo.com', 'lY:y7Vtm7/P\\r7gENhc', '2021-11-14 16:02:32', 0),
(31, 'Reginald Cartwright', 'Jackson', 'Witting', 'nbailey@pollich.com', '{3u#$dl\'VG:qlz', '2021-11-14 16:02:32', 0),
(32, 'Miss Adaline Pollich Jr.', 'Nash', 'Kessler', 'pfunk@yahoo.com', '?Kj#S0^;_u%sbZ0rV4oJ', '2021-11-14 16:02:32', 0),
(33, 'Dr. Alf Shanahan DDS', 'Kiera', 'Kuphal', 'emmanuel.collins@yahoo.com', '@A7R1H!O3:%M_R', '2021-11-14 16:02:32', 0),
(34, 'Bernice Jenkins', 'Antonio', 'Jacobi', 'alia74@hotmail.com', '>o+n%YOfGt\'f', '2021-11-14 16:02:32', 0),
(35, 'Margarett Borer', 'Donny', 'Keebler', 'legros.asha@dietrich.com', 'baB8$0WC', '2021-11-14 16:02:32', 0),
(36, 'Mr. Dallin Blick', 'Marisol', 'Flatley', 'inicolas@yahoo.com', '{=!)h\\bvX,', '2021-11-14 16:02:32', 0),
(37, 'Gillian Vandervort', 'Haylee', 'Mohr', 'zmraz@kassulke.com', 'SK`^we9pB-&17aus', '2021-11-14 16:02:32', 0),
(38, 'Dagmar Tillman', 'Josefina', 'Dickinson', 'nbotsford@roob.org', 'b.T/CRZzPw=:z~MQ;(_', '2021-11-14 16:02:32', 0),
(39, 'Rylan Dickens', 'Kariane', 'Goldner', 'ward.litzy@yahoo.com', 'vvsh_I&Kam[d;]', '2021-11-14 16:02:32', 0),
(40, 'Alayna Hegmann', 'Cielo', 'Hand', 'meda40@cassin.com', 'KNOwGODuAI(eBvP\">)@', '2021-11-14 16:02:32', 0),
(41, 'Mr. Brendon Schuppe', 'Spencer', 'Greenholt', 'dtoy@hotmail.com', '}jv22?_dlC3qI', '2021-11-14 16:02:32', 0),
(42, 'Mr. Herbert Quitzon PhD', 'Vito', 'Reilly', 'hunter22@mosciski.net', ';+)4U*roo', '2021-11-14 16:02:32', 0),
(43, 'Sterling Waelchi', 'Janice', 'Murray', 'eulah00@hotmail.com', 'Y~n]%P]u.]$53]99(Ufy', '2021-11-14 16:02:32', 0),
(44, 'Augusta Fadel', 'Marquise', 'Gerlach', 'zkonopelski@friesen.net', ',LplHK', '2021-11-14 16:02:32', 0),
(45, 'Miss Ollie Conroy', 'Devante', 'Gerlach', 'lklocko@berge.biz', ',Q$T*G6;}[.Fpfvd!', '2021-11-14 16:02:32', 0),
(46, 'Hassan Lubowitz', 'Erika', 'O\'Reilly', 'orin.bayer@yahoo.com', 'KW5<D.\"w=Mz5^]u0', '2021-11-14 16:02:32', 0),
(47, 'Dr. Guy Ledner', 'Valentine', 'O\'Keefe', 'collins.freddie@hotmail.com', 'tVl\"1z{Ar:*]@', '2021-11-14 16:02:32', 0),
(48, 'Rudy Farrell', 'Delpha', 'Okuneva', 'tressa.spencer@yahoo.com', ':+?LN1%cN,oSFvYY', '2021-11-14 16:02:32', 0),
(49, 'Prof. Caleigh Osinski Sr.', 'Vincent', 'Deckow', 'hildegard48@hotmail.com', 'RH9,+_yDQ}?', '2021-11-14 16:02:32', 0),
(50, 'Milo Fahey', 'Hayley', 'Rolfson', 'oreilly.kasey@gmail.com', '7}bF?9_H<A', '2021-11-14 16:02:32', 0),
(51, 'didier07', 'didier', 'legrand', 'didierlegrand@gmail.com', 'diderlegrand0705', '2021-12-22 16:02:52', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `FK_53A4EDAA12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_53A4EDAA7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;
--
-- Base de données : `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `catname` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `catname`, `created_at`, `updated_at`) VALUES
(1, 'drink', NULL, NULL),
(2, 'cake', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) NOT NULL,
  `prenom` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `two_factor_secret` text,
  `two_factor_recovery_codes` text,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `type`, `email_verified_at`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Selle', 'Adrien', 'selleadrien@gmail.com', '$2y$12$K1Cp/btDAYC34RZWZDd4beeggys7g2YrQnu9DF3phivVR/snHXveG', 'eyJpdiI6Im0xaXhLbXFMRmFOZGZkYjdNUExONWc9PSIsInZhbHVlIjoiYjMwd2k0WGx4b3lySDhtdkVuMnduNm9NSERpQWJHM3MrZ3NEdlA2LzM0QT0iLCJtYWMiOiI2YmU1OGZjOGNiNmM2MDI3OTgxZjg1MjMzZGVhY2QyYjZmNDdkNDBiNDRiODkyNTNmNzgyODMzMTM2ZTAwYTZhIiwidGFnIjoiIn0=', 'eyJpdiI6IjE0WXplbndwR2ZvQVA2MnQvUDlzZHc9PSIsInZhbHVlIjoibEpnNlZzRS9CdE5NSFo4M2tvNEFVYTRRVTJTL1hPQzRaSE03Vks4cys3UTB3L25rOTFZL3dQOU90ZWFCUG5uYnQ3aDRScHNhRlZjTG1HTVd3OExSOUF3L2NRYzVWaHpxVnJjS1lqa09JTVViZFg5WEFGYzNScjBlOVJUWlFFMzdQbFQrclNCellDM0U1ZjZjWkRoUk0xRHAwelRYZWV2Y2hQY3hnTmZxUzJNMFMrNXliMjZybkZxQVFLS0hTMHpRUmZUN3VkdDdCbE1ldXRYcmcwTEdKODZyZ21qYksxeVpmM042eTlXRzVUZlNDazJSVGxXTmFHbWsrZ3lIcFVmc3VvTVppRUpwK3RMbHpUNjZqUjJYcGc9PSIsIm1hYyI6IjM5OWY1NDlhM2VkZWRhYTZlMmVlZGJhNjQ5ZWViOGYyZTE3MjBhNmI5NDA5MDFhMTFhMjg0NDNjMzJkMzg0YTYiLCJ0YWciOiIifQ==', NULL, NULL, '2024-12-03 15:01:13', '2024-12-03 14:57:34', '2025-02-25 14:46:47', 'MWXCDldIgKFhxMTVZDVBo0LT8huK5pNe6mVjbFtYREpUo20ukrD1e5P3E4gg'),
(2, 'john', 'doe', 'johndoe@gmail.com', '$2y$12$V.I/bwomlppvsNB2gCnNi..JJEbZ4DlzzRpb3aEl.rUgsauI/x75C', 'eyJpdiI6Ikt3QjdFaUx2dlFLNVNIZVl0RVVYekE9PSIsInZhbHVlIjoibXROQkF2UTZoTzFuSkpia3NvVGtDSEM4ZzkrZWtKQ09Bb1QyNWhzbWNIRT0iLCJtYWMiOiI1YWNjOTk0YjkwZTIxYWFlODBmYjFjNTU1MTI4M2IxMTkzYWVhYjU2NjFhZDM1ZGIwYjMyOGU3MjNiMWZhYmNjIiwidGFnIjoiIn0=', 'eyJpdiI6ImFLb2tlWGdIdDIwaVZhVk96cFNUNFE9PSIsInZhbHVlIjoidHVLclVGZkxrTG1EcVFMTm5sZHlISUtqK01CUy8zNnhaVHl1S3JEcStWUnY2MGJSeDg2SzM3NUtjL2NINTdzQ2ovUElPVjAwSDJNcTg5Tmk0VDNjVlhMNmdtR3JvSmlEQy9OTXRLRWtqbllRYUVORy93TnVVNzJYVmQvNENPeSs2Wnp1V0Zya0xMcHBoeENQYi8yNjlva3l0MEE4aE9LYkxVdFlwQnA4OU9IL0Fra3Jic0tSRVZmOXFwT1dZVWNRdlA4Snl1VzRLdWx1eHVxa0Q5VDB4KzdqSkZhclJRWnpFTC9DclFmbzlSREQxaElFQzBMOGc4cWlNYkN3N1ZLaVVVcW1tRmVzOWRCcVBiZ1VWdkdhNmc9PSIsIm1hYyI6ImI2YmEwMDgzYjk5NjEyNmE3ZjhlOGM5NmFmNjU5NzIxYTM3OGZiOTRiZjZmYjg4ZmZhMTg0ZmUyNzcxZWVjZGEiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2025-02-23 11:41:38', '2025-02-23 14:12:52', NULL),
(3, 'delyia', 'forme', 'delyiaforme@gmail.com', '$2y$12$9xNExnIToG8Q5DCsZcgJ7.we2LUn6Fag1pFpycgQpypGaw3F3Dl7.', 'eyJpdiI6InoyT2poOCtoZlRQMDhhV09CWFByblE9PSIsInZhbHVlIjoiN3hOcGI4SXJ5S2dqSTBXUyt1M1YrZmFTVEFMOFU4cjA3ek5qWG43WmpoUT0iLCJtYWMiOiJkZjFkOGI4OTlmNjk5NjhlNDAxMWVjZTk4ODI5ZDdlMzEwOTIzMjRlZmE3ZDZkOTg0MjA4N2RkYjg5M2U5MTQzIiwidGFnIjoiIn0=', 'eyJpdiI6Ikh5bFBmL3ZueHI4MTlPV05vaDI2THc9PSIsInZhbHVlIjoiV1NvN3ZGc3NlSE53bXRJbDdzdzlNY3FERm1nQWpaNnlmc1dLWEswUUdCVHdmcVdzYXNHNGltL2tqcVlOMHB0TmdrenlqdW1qSTFSNHNrR0xMVnBOb1VaanFMRjNmUFFaOHVQU1BHRGFaemxHT2ZBSFhveGpOaFFyalc0bVR2c1JPdmM2aUJER2VyNlY2MjV4Qkg5ak8rTndVa3k4WXh6WEpsUmd6aVRHdU40bHMzbzRmNEpNVFNQYnRSTVZQbWptTUJuZ0Y4elFXZzBNRitOazV5UFlHSEJyVk5rc3YwaEQrQkdzZjNWeEFHMWsxYlk2K09kdnZnR1AyR2xwbGw4SGRDb0t2enVVZGgzTGE3OVoxaTJidXc9PSIsIm1hYyI6IjljZTA5MGZmMjZlNmI4OTYwZjU1ODUwOGU5NjViNDk4YmU5YTNjZTc1NWIwZWEzOGIyMTkwNWRhOWRmOTZhZTgiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2025-02-23 14:08:09', '2025-02-23 14:10:50', NULL),
(4, 'alicia', 'top', 'aliciatop@gmail.com', '$2y$12$Ljxctz/EOraUoF3JNEgUROoPx7NdQeL.l//AM8l.gmI98uB.DGUoq', 'eyJpdiI6IjB2bllJTjJTVXVrWDhtUzdMZXVBVGc9PSIsInZhbHVlIjoiYmd4c1pLTWNrU2RNOGNTV2xFaTFlYW5HNzBqNW1hQnFXS1pqczY3ZDU2Zz0iLCJtYWMiOiIzNTEwNDFjYWQyNDU0ZTcwNDk3Yjg3NTVjMmM1Y2ZkYjEyYWYyZjU5NmQyZjkwNmU0OTJhYTM3MzhjYWJkNGJhIiwidGFnIjoiIn0=', 'eyJpdiI6IlBjWXcyc0hPSitQMGJSeVlwaW9qbEE9PSIsInZhbHVlIjoiS3VwajRaY3oxWkRYWk0vV2JVYzMzaTV2aEdSV2lZN2VWQ1Z1enljUHdCY093M1RMR2orWWt5MEhva2pUQ3ducXFVa0pWeXczU0RrKzF0T3NMYlFCcjlBN1B0SXQ1U3IxRWEremt3d01uYkhUaXV4SXE2bXA0VTRnRHE2Y25ZQjhhS0hSalN3V2xTcC9RUlozWVBmVTl6UXh1VW96Q1lQSFF3NzRoZnVUNTE4bUFORWZ4RXV0SC9NRFM5R0RxcFlLeWU5blI4RTF5YmFVTVNGdlE3cGk3SWJtTjZvaFV4YTBsaTN6d1dmTWNWRmc4MnVpbXBWVEZ1R2dNVEt2elY1U2EzY3VQMEZRS2c0bHo3MUg4cFVRK0E9PSIsIm1hYyI6ImMxOGQxMjU2ZTU3ZmM5ZmRiNzVjZjczZGEzMTRmZDVlODAxYWFhMDQ4MGQxMjBlZTA3NWQ2Y2Y0NzY0YjIyMTEiLCJ0YWciOiIifQ==', NULL, NULL, '2025-02-23 14:16:13', '2025-02-23 14:15:46', '2025-02-23 14:17:33', NULL),
(5, 'mathieu', 'Adrien', 'mathieu@belva.tv', '$2y$12$jaUkEYRTAr6MLTit3kqs0uSTB514WGibpRCNHM6BGrO79UWBrzixu', NULL, NULL, NULL, NULL, '2025-03-26 12:58:27', '2025-03-26 12:57:30', '2025-03-26 13:00:00', 'a3Pb17RBVjH2lhMr2wYocD74sd3sN6Vf0sstd7alGovUgxXbxfkRFkgUCh8N');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'azaz', '2025-01-12 12:55:40', '2025-01-12 12:55:40'),
(2, 1, 1, 'test', '2025-01-12 13:31:08', '2025-01-12 13:31:08');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_29_150323_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_04_16_205829_create_blog_articles_table', 1),
(4, '2024_04_17_095947_create_posts_table', 1),
(5, '2024_04_25_104016_create_password_resets_table', 1),
(6, '2024_04_25_104613_create_failed_jobs_table', 1),
(7, '2024_04_29_130556_create_client_table', 1),
(8, '2024_04_29_130600_add_two_factor_columns_to_clients_table', 1),
(9, '2024_08_05_130913_create_permission_tables', 1),
(10, '2024_08_05_181730_create_roles_table', 1),
(11, '2024_10_16_144747_create_password_reset_tokens_table', 1),
(12, '2024_10_17_144520_create_model_has_roles_table', 1),
(13, '2024_10_17_144924_create_model_has_permissions_table', 1),
(14, '2024_11_10_134624_add_remember_token_to_client_table', 1),
(15, '2024_11_17_102324_add_email_verified_at_to_client_table', 2),
(16, '2024_12_23_183845_create_categories_table', 2),
(17, 'create_comments_table', 2),
(18, '2024_12_28_132259_add_category_id_to_posts_table', 3),
(21, '2024_12_31_144915_create_comments_table', 5),
(20, '2025_01_12_121112_add_post_id_to_comments_table', 4),
(22, '2025_02_20_160333_create_role_has_permissions_table', 6),
(23, '2025_02_27_141651_create_post_like_table', 7),
(24, '2025_04_23_155945_create_wishes_table', 8),
(25, '2025_04_27_113319_create_wishables_table', 9),
(26, '2025_05_05_202623_create_ordres_table', 10),
(27, '2025_05_06_195910_create_order_items_table', 10);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Client', 1);

-- --------------------------------------------------------

--
-- Structure de la table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` text NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` text,
  `price` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `created_at`, `updated_at`, `quantity`, `price`) VALUES
(1, '4', 1, '2025-05-09 12:35:47', '2025-05-09 12:35:47', '1', NULL),
(2, '5', 1, '2025-05-09 12:35:52', '2025-05-09 12:35:52', '1', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ordres`
--

DROP TABLE IF EXISTS `ordres`;
CREATE TABLE IF NOT EXISTS `ordres` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int DEFAULT NULL,
  `status` text,
  `adress` text,
  `fullname` text,
  `phone` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `ordres`
--

INSERT INTO `ordres` (`id`, `client_id`, `status`, `adress`, `fullname`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-09 12:32:21', '2025-05-09 12:32:21'),
(2, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-09 12:34:45', '2025-05-09 12:34:45'),
(3, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-09 12:35:20', '2025-05-09 12:35:20'),
(4, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-09 12:35:47', '2025-05-09 12:35:47'),
(5, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-09 12:35:52', '2025-05-09 12:35:52');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_reset_tokens_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `guard_name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'see hello', 'client', '2025-02-20 14:51:15', '2025-02-20 14:51:15'),
(2, 'view_hello_world', 'client', '2025-02-20 15:05:15', '2025-02-20 15:05:15'),
(3, 'see goodbye', 'client', '2025-02-20 15:05:15', '2025-02-20 15:05:15');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `stock` text,
  `price` text,
  `img` varchar(255) DEFAULT NULL,
  `poids` varchar(255) DEFAULT NULL,
  `montant_tva` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`, `category_id`, `stock`, `price`, `img`, `poids`, `montant_tva`) VALUES
(1, 'as', '14', 'as', '2024-12-27 14:09:47', '2025-03-27 14:28:28', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'pumcake', '2', 'pumcake', '2024-12-27 14:10:13', '2024-12-27 14:10:13', 2, NULL, NULL, NULL, NULL, NULL),
(4, '21', '2111', '21', '2025-03-19 15:43:04', '2025-03-19 15:43:04', 2, NULL, NULL, NULL, NULL, NULL),
(6, 'tata', '1547', 'tata', '2025-03-19 17:00:53', '2025-03-19 17:00:53', 2, '14528', NULL, NULL, NULL, NULL),
(7, 'ludo', '157', 'ludo', '2025-03-24 18:02:01', '2025-03-24 18:02:01', 1, '14528', NULL, NULL, NULL, NULL),
(9, 'adrien', '20', 'adrien', '2025-03-24 18:04:30', '2025-03-24 18:04:30', 1, '20', NULL, NULL, NULL, NULL),
(10, 'albino', '50', 'albino', '2025-03-24 18:06:07', '2025-03-24 18:06:07', 1, '50', NULL, NULL, NULL, NULL),
(13, 'kevin', '63', 'kevin', '2025-03-24 18:13:30', '2025-03-24 18:13:30', 1, '63', '63', NULL, NULL, NULL),
(16, 'mmm', '42', 'ezeeze', '2025-04-20 18:18:56', '2025-04-20 18:18:56', 1, '4545454', '45', 'mmmm', NULL, NULL),
(17, 'test', '15474556', 'ezeze', '2025-04-20 18:27:10', '2025-04-20 18:27:10', 1, 'zeze', 'zeze', 'zeze', NULL, NULL),
(19, 'gtgt', 'gtgtg', 'gtgtgt', '2025-04-21 09:44:13', '2025-04-21 09:44:13', 1, 'gtgtg', 'gtgtg', '4567894656', NULL, NULL),
(20, 'gtgt', '43', 'gtgtgt', '2025-04-21 09:47:44', '2025-04-21 09:47:44', 1, 'gtgtg', 'gtgtg', 'tgtgtg', 'rrrrrr', NULL),
(21, 'rerrer', '478', 'ererer', '2025-04-23 19:03:26', '2025-04-23 19:03:26', 1, '478', '4478', '47474', '47474', '474747'),
(22, 'Thé Vert Bio', 'the-vert-bio', 'Un délicieux thé vert aux notes fleuries.', '2025-05-09 12:20:30', '2025-05-09 12:20:30', 1, '50', '9.99', 'the-vert.jpg', '100g', '1.99');

-- --------------------------------------------------------

--
-- Structure de la table `post_likes`
--

DROP TABLE IF EXISTS `post_likes`;
CREATE TABLE IF NOT EXISTS `post_likes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `1` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `post_likes`
--

INSERT INTO `post_likes` (`id`, `client_id`, `post_id`, `created_at`, `updated_at`) VALUES
(6, 1, 1, '2025-04-27 10:10:01', '2025-04-27 10:10:01'),
(7, 1, 2, '2025-04-27 10:10:03', '2025-04-27 10:10:03');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `guard_name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'client', '2025-02-20 13:10:17', '2025-02-20 13:10:17'),
(2, 'user', 'client', '2025-02-20 13:10:17', '2025-02-20 13:10:17');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `role_id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `role_has_permissions_permission_id_foreign` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `wishes`
--

DROP TABLE IF EXISTS `wishes`;
CREATE TABLE IF NOT EXISTS `wishes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `wishable_type` varchar(191) NOT NULL,
  `wishable_id` bigint UNSIGNED NOT NULL,
  `scope` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wishes_uuid_unique` (`uuid`),
  KEY `wishes_user_id_foreign` (`user_id`),
  KEY `wishes_wishable_type_wishable_id_index` (`wishable_type`,`wishable_id`),
  KEY `wishes_scope_index` (`scope`),
  KEY `fk_client_id` (`client_id`),
  KEY `fk_post_id` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `wishes`
--

INSERT INTO `wishes` (`id`, `uuid`, `user_id`, `wishable_type`, `wishable_id`, `scope`, `deleted_at`, `created_at`, `updated_at`, `client_id`, `post_id`) VALUES
(13, 'add479f4-2d41-429f-bbb1-a6fae7e75bdb', 1, 'App\\Models\\Post', 2, 'default', NULL, NULL, NULL, 1, 2),
(12, '9940dd15-ef01-4186-a058-59955d56e24c', 1, 'App\\Models\\Post', 1, 'default', NULL, NULL, NULL, 1, 1);
--
-- Base de données : `laravel_breeze`
--
CREATE DATABASE IF NOT EXISTS `laravel_breeze` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel_breeze`;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adrien Selle', 'selleadrien@gmail.com', NULL, '$2y$12$9igcV06Vx82QKHJWbFsXu.8hOq202CZH7TpKoRmevr4fAp5LcsM2e', NULL, '2024-10-10 17:19:45', '2024-10-10 17:19:45');
--
-- Base de données : `laravel_v2`
--
CREATE DATABASE IF NOT EXISTS `laravel_v2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel_v2`;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_10_24_200629_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('anneeloy166@gmail.com', '$2y$12$aG3BcHTBhk.3tVqgL73T8e.dX.h4xyBdnNWFvd7T80oVUqJck3I8S', '2024-10-24 18:34:20');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('anneeloy166@gmail.com', '$2y$12$HXamzR2SkBdEZEbSqhNldutUpZSC11fzQptxasQwXyMwsuA.rYgZO', '2024-10-24 18:04:36'),
('selleadrien@gmail.com', '$2y$12$AGbIpRdrGqBxYC.AqPIiFe8oG.sug6TDFMYHH6nrDnXaus52deBVu', '2024-10-24 18:04:56');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'adrien selle', 'selleadrien@gmail.com', NULL, '$2y$12$yAplywVmJvMcHYT2qcKD.OxwKJP7QzLeHzxxE6FfuEazMi88VcMAi', NULL, NULL, NULL, NULL, '2024-10-20 09:17:45', '2024-10-20 09:17:45'),
(2, 'sell', 'selleopop@gmail.com', NULL, '$2y$12$cYadO5hXmNkUv0WBqzHyAO8zx7MH0/MBVAXeZSCUzgvOPeipooxLS', NULL, NULL, NULL, NULL, '2024-10-20 09:38:58', '2024-10-20 09:38:58'),
(3, 'eloy', 'anneeloy166@gmail.com', NULL, '$2y$12$An9JwxLfHL5AzOqBR6ZBRu/8qNfgp0oJd3KqeB.3NRhSuPtcR1Zh.', NULL, NULL, NULL, NULL, '2024-10-20 09:42:45', '2024-10-20 09:42:45'),
(4, 'courses', 'courses@gmail.com', NULL, '$2y$12$9tb0ReaM0/yksPhKjJUUhuArAP86Qa0IhnG1PTM88IU8.Ojn9SxLy', NULL, NULL, NULL, NULL, '2024-10-20 10:08:21', '2024-10-20 10:08:21'),
(5, 'courses1989', 'courses1989@gmail.com', NULL, '$2y$12$6PJqH3OVNBUBDYXgC0t3wesJUEIV6Ci5RPK52H0e/Oulbsm7KF94O', NULL, NULL, NULL, NULL, '2024-10-20 10:10:30', '2024-10-20 10:10:30'),
(6, 'courses1989', 'courses1982@gmail.com', NULL, '$2y$12$jhFYu3ymfsmd8Bczuylo9Of2nJo0RylY7d6zz19jGprqOCtGHo3nq', NULL, NULL, NULL, NULL, '2024-10-20 10:19:04', '2024-10-20 10:19:04'),
(7, 'user', 'user@gmail.com', NULL, '$2y$12$H3C4d2iY7X/0GdaCeVwOZe2RgncMu9EgMC1l3SitMjGs1WNNd53Bm', NULL, NULL, NULL, NULL, '2024-10-20 12:18:11', '2024-10-20 12:18:11'),
(8, 'alessia', 'albinoselleeeez@gail.com', NULL, '$2y$12$E6YMGW9eH7bbDLwybj7dfefv4YQtNP0vt6htRMQZOWp7jtzvk6qNG', NULL, NULL, NULL, NULL, '2024-10-24 18:15:12', '2024-10-24 18:15:12');
--
-- Base de données : `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `mail` varchar(120) NOT NULL,
  `login` varchar(60) NOT NULL,
  `password` varchar(256) NOT NULL,
  `level` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `author`
--

INSERT INTO `author` (`id`, `firstName`, `lastName`, `mail`, `login`, `password`, `level`) VALUES
(1, 'Maxime', 'Chattam', 'max-chattam@gmail.com', 'chattam', '$2y$10$G0eKGl5gbPnhRgNLPbOXFe7mEjwdp1A8IlGoy69f9snDtciyhlZK2', 'User'),
(2, 'Jérôme', 'Dumont', 'dumont@gmail.com', 'dumont', '$2y$10$nVfytmUHtIB.hpDeYf1dT.ZqvhKbKgV5xZyYQWhwdkpcP92TwY87u', 'User'),
(3, 'Michael', 'Connely', 'connely@gamil.com', 'connely', '$2y$10$P8wUrpzRiJquITnk28xfCuSrUD9EukKm9bhrhXZtcncfMCP1.pCOK', 'User'),
(4, 'Jean-Christophe', 'Buisson', 'buisson@gmail.com', 'buisson', '$2y$10$TxLglHNTlwjgL8LRvJcDHuzwB3Mzr.qB4bKPV8GqCb4KuXOhXrEpm', 'User'),
(5, 'Joanne Kathleen', 'Rowling', 'rowling@gmail.com', 'rowling', '$2y$10$rwwXWn2T6KcdH7WfhcmB9OnO2.myM8KKzJfhJk7zGtMYh3kDt9Ose', 'User'),
(6, 'Maloria', 'Cassis', 'cassis@gmail.com', 'cassis', '$2y$10$1KUXyFooCbshTKQTFMO2VexX/1ektwM6xi.PosoYYI5ztMqq//GQO', 'User'),
(7, 'Stefan', 'Swaig', 'sweig@gmail.com', 'swaig', '$2y$10$OjWGtkAA91l/Lv6VsK2ZSOw46Ko2ZaU1Pu0ahsUayqKxSe.s0xg8u', 'User'),
(9, 'Patrick', 'Marthus', 'patrick@gmail.com', 'pat', '$2y$10$G515R2F7IZbsZZ7FZKSH2.PKCPlJmpeezOz5ZVjzF8giCQJRexep2', 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `datePub` date NOT NULL,
  `pages` smallint NOT NULL,
  `resume` text NOT NULL,
  `img` varchar(60) NOT NULL,
  `category` int NOT NULL,
  `author` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `author` (`author`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `book`
--

INSERT INTO `book` (`id`, `name`, `datePub`, `pages`, `resume`, `img`, `category`, `author`) VALUES
(1, 'La Conjuration primitive', '2013-05-01', 15, 'Et si seul le Mal pouvait combattre le Mal ?\r\nUne véritable épidémie de meurtres ravage la France.\r\nD\'un endroit à l\'autre, les scènes de crime semblent se répondre. Comme un langage ou un jeu.\r\nPlusieurs tueurs sont-ils à l\'oeuvre ? Se connaissent-ils ?', 'conjuration.jpg', 1, 1),
(2, 'Sacrifiées', '2017-11-12', 327, 'Ex-enquêtrice aux crimes majeurs de Boston, Lizzie Petrell, quelque peu désabusée, décide de poursuivre sa carrière de flic à Bar Harbor, sa ville natale dans l’état du Maine. Elle espère ainsi faire la paix avec ses vieux démons et retrouver un semblant de sérénité. Mais ce jour d’automne où elle découvre, en faisant son jogging, le cadavre atrocement mutilé d’une jeune femme, toutes ses bonnes résolutions volent en éclats. ', 'sacrifiees.jpg', 1, 2),
(3, 'Ceux qui tombent', '2016-10-18', 574, 'Bosch vient de décrocher un sursis de trois ans avant d’être mis à la retraite d’office lorsqu’il se voit confier un cold case datant de 1989. Viol suivi de meurtre, ADN, antécédents judiciaires et profil psychologique, tout incrimine un certain Clayton Pell. Un suspect… qui n’aurait eu que huit ans au moment des faits. Erreur du labo ou faute impardonnable de deux inspecteurs ? Les conséquences de ce cafouillage s’annonçant monumentales, Bosch se met immédiatement au travail lorsqu’il est appelé sur une scène de crime. ', 'connelly01.jpg', 1, 3),
(4, 'Les grands vaincus de l\'histoire', '2018-01-16', 390, 'Selon l\'adage napoléonien : \" Du triomphe à la chute, il n\'est qu\'un pas. \" Mais la réciproque est tout aussi vraie tant la déchéance, la défaite et la mort des hommes et des femmes illustres peuvent être porteuses d\'inspiration et hanter l\'imaginaire. Qu\'ils soient empereurs ou princes, guerriers ou chefs d\'Etat, conservateurs ou révolutionnaires', 'vaincus.jpg', 3, 4),
(5, 'Harry Potter à l\'école des sorciers', '2006-05-12', 654, 'Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l\'emmener à Poudlard, une école de sorcellerie ! Voler en balai, jeter des sorts, combattre les trolls : Harry se révèle un sorcier doué. Mais un mystère entoure sa naissance et l\'effroyable V., le mage dont personne n\'ose prononcer le nom.', 'ecole.jpg', 2, 5),
(6, 'Harry Potter et la Chambre des Secrets', '2007-09-01', 602, 'Une rentrée fracassante en voiture volante, une étrange malédiction quis\'abat sur les élèves, cette deuxième année à l\'école des sorciers ne s\'annonce pas de tout repos ! Entre les cours de potions magiques, les matchs de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets ?', 'chambre.jpg', 2, 5),
(7, 'Harry Potter et le prisonnier d\'Azkaban', '2008-05-28', 594, 'Sirius Black, le dangereux criminel qui s\'est échappé de la forteresse d\'Azkaban, recherche Harry Potter. C\'est donc sous bonne garde que l\'apprenti sorcier fait sa troisième rentrée. Au programme : des cours de divination, la fabrication d\'une potion de Ratatinage, le dressage des hippogriffes... Mais Harry est-il vraiment à l\'abri du danger qui le menace ?', 'prisonnier.jpg', 2, 5),
(8, 'Cooper Training Julian', '2018-05-22', 294, 'Entre haine et amour, il n\'y a qu\'un pas... Sauront-ils le franchir ?\r\n\r\nAmy est une forte tête qui refuse de se laisser marcher sur les pieds. Face au comportement plus que douteux de l\'un de ses collègues, ses convictions lui ont valu de perdre son dernier travail.', 'cooper.jpg', 5, 6),
(9, 'L\'Appel du néant', '2016-03-21', 450, 'Il faut reconnaître que l auteur semble avoir fait un énorme travail de documentation sur les différents aspects du terrorisme et les multiples acronymes qui le surveillent . Le problème est que trop d infos nuit à la fluidité du roman. Ensuite, il faut aussi reconnaître qu\' il a pris soin de ne pas faire de son roman un\r\noutil de propagande raciste et il a su montrer les aspects modérés de l islam.', 'neant.jpg', 1, 1),
(10, 'Le sang du temps', '2007-05-21', 580, 'Paris, 2005. Détentrice d\'un secret d\'État, menacée de mort, Marion doit fuir au plus vite. Elle est conduite en secret, par la DST, au Mont-Saint-Michel.\r\nLe Caire, 1928. Le détective Matheson consigne dans son journal les détails d\'une enquête particulièrement sordide : des cadavres d\'enfants atrocement mutilés sont retrouvés dans les faubourgs du Caire. Rapidement, la rumeur se propage : une goule serait à l\'origine de ces meurtres.', 'sang.jpg', 1, 1),
(11, 'Magellan', '2017-07-12', 405, 'En 1518, un Portugais exilé du nom de Magellan convainc le roi d’Espagne, Charles Quint, d’un projet fou : « Il existe un passage conduisant de l’océan Atlantique à l’océan Indien. Donnez-moi une flotte et je vous le montrerai et je ferai le tour de la terre en allant de l’est à l’ouest. » Partie en 1519, l’expédition reviendra trois ans plus tard, disloquée, victorieuse. Malgré les fausses cartes et les mutineries, le froid, la faim et les maladies.', 'magellan.jpg', 3, 7),
(12, 'Marie-Antoinette', '1999-05-12', 420, 'Le mérite en revient-il à Zweig, ou à son traducteur? Probablement aux deux. Superbement écrit, merveilleusement documenté, on n\'a certainement pas, fait mieux, même si bien sûr de nouvelles biographies de la Reine-martyre ont été écrites depuis la parution de cet ouvrage. Il reste cependant à coup sûr une biographie de référence, nullement tendancieuse, ce qui est rare et louable; tout au plus peut-on reprocher à l\'auteur sa tendance à la caricature.', 'marie.jpg', 3, 7),
(13, 'Marie-Stuart', '2001-12-18', 450, 'Reine d\'Écosse à l\'âge de six jours, en 1542, puis reine de France à dix-sept ans par son mariage avec François II, Marie Stuart est veuve en 1560. Elle rentre alors en Écosse et épouse lord Darnley, avant de devenir la maîtresse du comte Bothwell. Lorsque ce dernier assassine Darnley, Marie doit se réfugier auprès de sa rivale, Élisabeth Ire, reine d\'Angleterre.', 'stuart.jpg', 3, 7);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Thriller'),
(2, 'Fantastique'),
(3, 'Historique'),
(4, 'Science-fiction'),
(5, 'Romance'),
(6, 'Junior');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`author`) REFERENCES `author` (`id`);
--
-- Base de données : `sf6techwall`
--
CREATE DATABASE IF NOT EXISTS `sf6techwall` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `sf6techwall`;

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `user_id` int NOT NULL,
  `personne_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526CF675F31B` (`author_id`),
  KEY `IDX_9474526CA76ED395` (`user_id`),
  KEY `IDX_9474526CA21BD112` (`personne_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230509140310', '2023-05-09 14:41:48', 214),
('DoctrineMigrations\\Version20230511112819', '2023-05-11 11:29:25', 1125),
('DoctrineMigrations\\Version20230512094413', '2023-05-12 09:44:37', 104),
('DoctrineMigrations\\Version20230514120042', '2023-05-14 12:03:07', 201),
('DoctrineMigrations\\Version20230626140418', '2023-06-26 14:04:45', 482),
('DoctrineMigrations\\Version20230705184542', '2023-07-05 18:46:43', 1750),
('DoctrineMigrations\\Version20230816151058', '2023-08-18 14:22:48', 973),
('DoctrineMigrations\\Version20230818141854', '2023-09-07 17:54:19', 441),
('DoctrineMigrations\\Version20230907155652', '2023-09-07 17:54:19', 962);

-- --------------------------------------------------------

--
-- Structure de la table `hobby`
--

DROP TABLE IF EXISTS `hobby`;
CREATE TABLE IF NOT EXISTS `hobby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` smallint NOT NULL,
  `profile_id` int DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_FCEC9EFCCFA12B8` (`profile_id`),
  KEY `IDX_FCEC9EFBE04EA9` (`job_id`),
  KEY `IDX_FCEC9EF9E085865` (`create_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `firstname`, `name`, `age`, `profile_id`, `job_id`, `image`, `create_by_id`) VALUES
(1, 'Selleaouti', 'Selleaouti', 39, NULL, NULL, 'C:\\wamp64\\tmp\\phpAEB8.tmp', NULL),
(2, 'Marine', 'Benoît Lejeune', 55, NULL, NULL, 'C:\\wamp64\\tmp\\phpFB14.tmp', NULL),
(3, 'Agnès', 'Emmanuelle de Guerin', 39, NULL, NULL, '', NULL),
(4, 'Émile', 'David leman', 36, NULL, NULL, 'C:\\wamp64\\tmp\\phpB83E.tmp', NULL),
(5, 'Lorraine', 'Xavier Pichon', 22, NULL, NULL, '', NULL),
(6, 'Arnaude', 'Victor Grondin', 52, NULL, NULL, '', NULL),
(7, 'Louis', 'Anastasie Benoit', 60, NULL, NULL, '', NULL),
(8, 'Olivie', 'Bernard-Tristan Lebreton', 63, NULL, NULL, '', NULL),
(9, 'Aimé', 'Suzanne Sauvage', 26, NULL, NULL, '', NULL),
(10, 'Yves', 'Margaux Fleury', 19, NULL, NULL, '', NULL),
(11, 'Josette', 'David Bourdon-Tanguy', 42, NULL, NULL, '', NULL),
(12, 'Odette', 'Astrid-Susan Bigot', 34, NULL, NULL, '', NULL),
(13, 'Auguste', 'Théophile-Matthieu Dupuis', 39, NULL, NULL, '', NULL),
(14, 'Aimé', 'François Bigot', 24, NULL, NULL, '', NULL),
(15, 'Dominique', 'Pierre Lecoq', 60, NULL, NULL, '', NULL),
(16, 'Alice', 'Michèle Pichon', 21, NULL, NULL, '', NULL),
(17, 'Isabelle', 'Bertrand Denis-Bouvet', 24, NULL, NULL, '', NULL),
(18, 'Colette', 'Édouard Le Guichard', 43, NULL, NULL, '', NULL),
(19, 'Maurice', 'Lucas Blanchard', 33, NULL, NULL, '', NULL),
(20, 'Virginie', 'Élodie du Legrand', 54, NULL, NULL, '', NULL),
(21, 'Jérôme', 'Jacqueline Allain-Delannoy', 20, NULL, NULL, '', NULL),
(22, 'Marianne', 'Luc Ruiz', 37, NULL, NULL, '', NULL),
(23, 'Rémy', 'Xavier Guyon', 44, NULL, NULL, '', NULL),
(24, 'Agathe', 'Frédéric de la Berger', 47, NULL, NULL, '', NULL),
(25, 'Éric', 'Gilles-Lucas Ollivier', 54, NULL, NULL, '', NULL),
(26, 'Raymond', 'Sophie Hernandez', 40, NULL, NULL, '', NULL),
(27, 'Victor', 'Océane Le Guibert', 58, NULL, NULL, '', NULL),
(28, 'Corinne', 'Élisabeth-Alex Potier', 58, NULL, NULL, '', NULL),
(29, 'Françoise', 'Théophile Allard', 36, NULL, NULL, '', NULL),
(30, 'Jérôme', 'Léon Foucher', 28, NULL, NULL, '', NULL),
(31, 'Thierry', 'Claude Martin', 63, NULL, NULL, '', NULL),
(32, 'Océane', 'Anaïs-Caroline Grenier', 44, NULL, NULL, '', NULL),
(33, 'Jacques', 'Michelle de la Schmitt', 18, NULL, NULL, '', NULL),
(34, 'Gilles', 'Théophile Vincent-Daniel', 45, NULL, NULL, '', NULL),
(35, 'Éric', 'Dorothée Rousset', 44, NULL, NULL, '', NULL),
(36, 'Lucie', 'Philippine Thomas', 59, NULL, NULL, '', NULL),
(37, 'Théophile', 'Guillaume Bernier', 22, NULL, NULL, '', NULL),
(38, 'Danielle', 'Gérard Philippe', 59, NULL, NULL, '', NULL),
(39, 'Grégoire', 'Théophile Jacquet', 35, NULL, NULL, '', NULL),
(40, 'Rémy', 'Michel Georges', 62, NULL, NULL, '', NULL),
(41, 'Marthe', 'Hortense de Etienne', 43, NULL, NULL, '', NULL),
(42, 'Élisabeth', 'Agnès de la Blanchet', 22, NULL, NULL, '', NULL),
(43, 'Gérard', 'Daniel Le Goff', 52, NULL, NULL, '', NULL),
(44, 'Aimée', 'Émile Vaillant', 59, NULL, NULL, '', NULL),
(45, 'Sébastien', 'Agnès du Sanchez', 43, NULL, NULL, '', NULL),
(46, 'Thibaut', 'Nathalie Leveque', 51, NULL, NULL, '', NULL),
(47, 'Édith', 'Luce Ramos', 33, NULL, NULL, '', NULL),
(48, 'Benjamin', 'Franck Torres', 18, NULL, NULL, '', NULL),
(49, 'Thierry', 'Gérard Adam', 65, NULL, NULL, '', NULL),
(50, 'Stéphane', 'Théodore Mercier', 65, NULL, NULL, '', NULL),
(51, 'Frédéric', 'Daniel Chevalier', 31, NULL, NULL, '', NULL),
(52, 'Lucas', 'Charles Pruvost', 48, NULL, NULL, '', NULL),
(53, 'Inès', 'Maurice Perez', 27, NULL, NULL, '', NULL),
(54, 'Aurélie', 'Dominique Leger', 58, NULL, NULL, '', NULL),
(55, 'Susanne', 'Richard Germain', 33, NULL, NULL, '', NULL),
(56, 'Thibaut', 'Claudine Daniel-Paul', 44, NULL, NULL, '', NULL),
(57, 'Grégoire', 'Chantal Le Pons', 53, NULL, NULL, '', NULL),
(58, 'Olivie', 'Marthe de Turpin', 33, NULL, NULL, '', NULL),
(59, 'Cécile', 'Yves Lemaitre', 47, NULL, NULL, '', NULL),
(60, 'Émilie', 'Dominique-Théophile Guichard', 28, NULL, NULL, '', NULL),
(61, 'Luce', 'Emmanuelle Thibault', 26, NULL, NULL, '', NULL),
(62, 'Françoise', 'Aimée du Dijoux', 55, NULL, NULL, '', NULL),
(63, 'Marcel', 'Élisabeth Vallet', 46, NULL, NULL, '', NULL),
(64, 'Bernard', 'Charlotte de la Marin', 20, NULL, NULL, '', NULL),
(65, 'Hélène', 'Josette-Audrey Barthelemy', 38, NULL, NULL, '', NULL),
(66, 'Susan', 'Anouk Raynaud', 65, NULL, NULL, '', NULL),
(67, 'Frédéric', 'Éléonore Marin', 57, NULL, NULL, '', NULL),
(68, 'Antoinette', 'Martine-Alexandria Olivier', 37, NULL, NULL, '', NULL),
(69, 'Édith', 'Céline du Moulin', 25, NULL, NULL, '', NULL),
(70, 'Étienne', 'Stéphanie de la Petit', 27, NULL, NULL, '', NULL),
(71, 'Auguste', 'Louis Chauveau', 37, NULL, NULL, '', NULL),
(72, 'Benoît', 'Marcel Perez', 18, NULL, NULL, '', NULL),
(73, 'Marcel', 'Patrick Vaillant', 32, NULL, NULL, '', NULL),
(74, 'Adèle', 'Dominique-Marc Humbert', 56, NULL, NULL, '', NULL),
(75, 'Honoré', 'Olivie Le Barbe', 18, NULL, NULL, '', NULL),
(76, 'Suzanne', 'Thérèse Moreno', 39, NULL, NULL, '', NULL),
(77, 'Gabriel', 'Nicolas Laporte', 60, NULL, NULL, '', NULL),
(78, 'Emmanuel', 'Honoré Le Gimenez', 29, NULL, NULL, '', NULL),
(79, 'Maurice', 'Adèle Dias', 35, NULL, NULL, '', NULL),
(80, 'Maurice', 'Laurent Maury', 54, NULL, NULL, '', NULL),
(81, 'Claudine', 'Laurent de Morel', 22, NULL, NULL, '', NULL),
(82, 'Thierry', 'Maurice Leveque', 60, NULL, NULL, '', NULL),
(83, 'Alice', 'Augustin Le Lemonnier', 62, NULL, NULL, '', NULL),
(84, 'Gabriel', 'Sylvie Fleury', 19, NULL, NULL, '', NULL),
(85, 'David', 'Alphonse Pottier', 19, NULL, NULL, '', NULL),
(86, 'Paul', 'Joséphine Lefevre', 35, NULL, NULL, '', NULL),
(87, 'Marcel', 'Christelle Lebreton', 23, NULL, NULL, '', NULL),
(88, 'Alexandrie', 'Christine Morvan-Bouvier', 34, NULL, NULL, '', NULL),
(89, 'Constance', 'René Breton', 28, NULL, NULL, '', NULL),
(90, 'Joseph', 'Frédéric de la Prevost', 46, NULL, NULL, '', NULL),
(91, 'Hugues', 'Julie Pichon-Durand', 60, NULL, NULL, '', NULL),
(92, 'Michèle', 'Nathalie Fischer-Dufour', 19, NULL, NULL, '', NULL),
(93, 'Célina', 'Virginie Gomes-Lenoir', 48, NULL, NULL, '', NULL),
(94, 'Tristan', 'Olivier-Édouard Aubry', 58, NULL, NULL, '', NULL),
(95, 'Louis', 'Tristan Baron', 47, NULL, NULL, '', NULL),
(96, 'Alice', 'Marthe Le Merle', 26, NULL, NULL, '', NULL),
(97, 'Pierre', 'Nathalie-Anaïs Bousquet', 59, NULL, NULL, '', NULL),
(98, 'Geneviève', 'Laurent Vincent', 59, NULL, NULL, '', NULL),
(99, 'Camille', 'Lucy du Renault', 60, NULL, NULL, '', NULL),
(100, 'Olivier', 'Célina Dijoux', 61, NULL, NULL, '', NULL),
(102, 'ludoby1940', 'a', 38, NULL, NULL, 'C:\\wamp64\\tmp\\php3086.tmp', NULL),
(103, 'a', 'a', 26, NULL, NULL, 'C:\\wamp64\\tmp\\php4FB8.tmp', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personne_hobby`
--

DROP TABLE IF EXISTS `personne_hobby`;
CREATE TABLE IF NOT EXISTS `personne_hobby` (
  `personne_id` int NOT NULL,
  `hobby_id` int NOT NULL,
  PRIMARY KEY (`personne_id`,`hobby_id`),
  KEY `IDX_2D85E25EA21BD112` (`personne_id`),
  KEY `IDX_2D85E25E322B2123` (`hobby_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rs` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`, `likes`) VALUES
(1, 'adrienselle', '[]', '$2y$13$2Uc7SvT/EiGuSBX09nL7EO3imKqTldo6t7n7aVaUyr0In6GNz.emi', 'selleadrien@gmail.com', NULL),
(12, 'byadrienby', '[\"ROLE_ADMIN\"]', '$2y$13$GBLVBworwwL34RSqLNThCeI77rona5eGzmgNStidFmfMW0nC0fwdK', 'admin@gmail.com', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526CA21BD112` FOREIGN KEY (`personne_id`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `FK_FCEC9EF9E085865` FOREIGN KEY (`create_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_FCEC9EFBE04EA9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `FK_FCEC9EFCCFA12B8` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`);

--
-- Contraintes pour la table `personne_hobby`
--
ALTER TABLE `personne_hobby`
  ADD CONSTRAINT `FK_2D85E25E322B2123` FOREIGN KEY (`hobby_id`) REFERENCES `hobby` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2D85E25EA21BD112` FOREIGN KEY (`personne_id`) REFERENCES `personne` (`id`) ON DELETE CASCADE;
--
-- Base de données : `stack`
--
CREATE DATABASE IF NOT EXISTS `stack` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `stack`;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `flights`
--

DROP TABLE IF EXISTS `flights`;
CREATE TABLE IF NOT EXISTS `flights` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_14_155955_create_post_table', 1),
(6, '2023_09_15_160355_create_flights_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Mon premier article', 'mon-premier-article', 'Mon contenu', '2023-09-15 15:27:23', '2023-09-15 15:27:23'),
(2, 'Mon second article', 'mon-second-article', 'Mon contenu', '2023-09-16 11:35:14', '2023-09-16 11:35:14');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
--
-- Base de données : `symrecipe`
--
CREATE DATABASE IF NOT EXISTS `symrecipe` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `symrecipe`;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230506110657', '2023-05-08 14:57:03', 326),
('DoctrineMigrations\\Version20230508150303', '2023-05-08 15:28:46', 509);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
CREATE TABLE IF NOT EXISTS `recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int NOT NULL,
  `nb_people` int NOT NULL,
  `difficulty` int NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_favorite` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `recipe_ingredient`
--

DROP TABLE IF EXISTS `recipe_ingredient`;
CREATE TABLE IF NOT EXISTS `recipe_ingredient` (
  `recipe_id` int NOT NULL,
  `ingredient_id` int NOT NULL,
  PRIMARY KEY (`recipe_id`,`ingredient_id`),
  KEY `IDX_22D1FE1359D8A214` (`recipe_id`),
  KEY `IDX_22D1FE13933FE08C` (`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD CONSTRAINT `FK_22D1FE1359D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_22D1FE13933FE08C` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`) ON DELETE CASCADE;
--
-- Base de données : `travaux2019`
--
CREATE DATABASE IF NOT EXISTS `travaux2019` DEFAULT CHARACTER SET ucs2 COLLATE ucs2_general_ci;
USE `travaux2019`;

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

DROP TABLE IF EXISTS `personnes`;
CREATE TABLE IF NOT EXISTS `personnes` (
  `idP` int NOT NULL AUTO_INCREMENT,
  `nomP` varchar(250) NOT NULL,
  `prenomP` varchar(250) NOT NULL,
  `villeP` varchar(250) NOT NULL,
  PRIMARY KEY (`idP`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=ucs2;

--
-- Déchargement des données de la table `personnes`
--

INSERT INTO `personnes` (`idP`, `nomP`, `prenomP`, `villeP`) VALUES
(1, 'Adrien', 'Selle', 'Acoz'),
(2, 'Adrien', 'Selle', 'Acoz'),
(3, 'mhicels', 'margot', 'thuin'),
(4, 'rommes', 'thea', 'waremme'),
(8, 'thomas', 'Selle', 'Acoz'),
(10, 'jackie', 'pet', 'groeland'),
(12, 'pue ', 'astrid', 'gand'),
(13, 'Adrien', 'Selle', 'Acoz'),
(14, 'Adrien', 'Selle', 'Acoz'),
(15, 'Adrien', 'Selle', 'Acoz');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idP` int NOT NULL AUTO_INCREMENT,
  `mailP` varchar(250) NOT NULL,
  `mdpP` varchar(250) NOT NULL,
  PRIMARY KEY (`idP`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=ucs2;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idP`, `mailP`, `mdpP`) VALUES
(1, 'selleadrien@gmail.com', '$2y$10$RPQC0YkoZymX8tiZp1/G3uRcksk071KPZd9h9a/cDprJRrV1MjwIm'),
(2, 'Adrien', '$2y$10$qA0ep.pC/vGjYG5JLU6fM.EyiSAhA59/IeR..8M9aVnypl5b7yJJm'),
(3, 'selleadrien@gmail.com', '$2y$10$leIzoc6d.nkFdF.xE36wkOUp13G9kyePTWbRxKRvPYYmjQ.8svKEW'),
(4, 'selleadrien@gmail.com', '$2y$10$Kw3VXdGyyNFK4zNGlwk/ou8iVpXeAlQsUVXenV1u0usvHyhx5sDXS'),
(5, 'ta guyuyu', '$2y$10$fNSH0L3Pc0K1/gG.qwSyAOMF6PeToVEBMxJK0CVR3uNZFlNgKjnwm');
--
-- Base de données : `tutorial`
--
CREATE DATABASE IF NOT EXISTS `tutorial` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `tutorial`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'PHP'),
(2, 'HTML'),
(3, 'Git'),
(4, 'JQuery'),
(5, 'Bootstrap'),
(6, 'Symfony');

-- --------------------------------------------------------

--
-- Structure de la table `tutorials`
--

DROP TABLE IF EXISTS `tutorials`;
CREATE TABLE IF NOT EXISTS `tutorials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `created_at` date NOT NULL,
  `eval` tinyint NOT NULL,
  `content` text NOT NULL,
  `category` int NOT NULL,
  `duration` smallint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`category`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tutorials`
--

INSERT INTO `tutorials` (`id`, `name`, `created_at`, `eval`, `content`, `category`, `duration`) VALUES
(1, 'Twig - templating', '2019-05-23', 4, 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.', 6, 30),
(2, 'Security', '2019-05-24', 3, 'The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen.', 1, 40),
(3, 'Webpack Technology 3', '2019-05-24', 4, 'When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.', 3, 200),
(4, 'PHP 7.1', '2019-05-22', 5, 'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 30),
(5, 'JQuery Introduction', '2019-05-25', 3, 'And if she hasn’t been rewritten, then they are still using her. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', 4, 15),
(6, 'PDO - PHP', '2019-05-26', 5, 'She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline\r\n\r\n', 1, 45),
(7, 'TypeScript & Jquery', '2019-05-28', 4, 'Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.', 4, 60),
(8, 'Git Worflow', '2019-05-29', 3, 'But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their', 3, 45),
(9, 'Laragon PHP Server', '2019-05-29', 4, 'The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind ', 1, 30),
(10, 'Plugins HTML', '2019-06-01', 3, 'Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their', 2, 40),
(11, 'PHP - Sessions', '2019-06-03', 5, 'A small river named Duden flows by their place and supplies it with the necessary regelialia.\r\n\r\nIt is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 40),
(12, 'GitLab', '2019-06-03', 3, 'That where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country.', 3, 30),
(13, 'HTML - Creating Emails', '2019-06-04', 2, 'This handy tool helps you create dummy text for all your layout needs.\r\n\r\nWe are gradually adding new functionality and we welcome your suggestions and feedback.', 2, 25),
(28, 'HTML - CSS', '2020-06-02', 4, 'Could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their.', 2, 50),
(29, 'Semantic HTML', '2020-04-08', 3, 'Curabitur sit amet metus at libero tincidunt laoreet. Sed accumsan lorem nec leo euismod vulputate. Aenean a nisi eu quam sagittis tristique quis non erat. Maecenas vitae molestie arcu. Aliquam commodo diam arcu, finibus volutpat dolor euismod ac.', 2, 20),
(30, 'PHP - MVC', '2020-02-12', 4, 'Duis commodo augue a sem accumsan, eu blandit neque hendrerit. Donec id velit eget neque suscipit pretium. Aliquam ut lacus ante. Donec ac metus quis eros cursus mattis eu vitae lorem. Morbi eros sem, faucibus et facilisis eget, cursus ac nulla. Phasellus euismod, libero in tempus tincidunt, dui leo sodales augue, ac pulvinar est ante sed neque.', 1, 60),
(35, 'Bing Bang', '0000-00-00', 3, '', 5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `mail` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `mail`, `password`) VALUES
(2, 'John', 'Doe', 'doe@gmail.com', '$2y$10$8l2wIbNcsi5IaiBICiahJ.I2F9zX1GmK/oHT1iomfTWWP7RJALs/C'),
(3, 'Vincent', 'Vega', 'vega@gmail.com', '$2y$10$0xwz3613uBtz8PMxgvr3UeJp.QIO7Bg2wCP6nJBOULfz5VdvmQVwS'),
(4, 'Korben', 'Dallas', 'dallas@gmail.com', '$2y$10$twmFumJlpc4hPqgH8kPUhu2xg8Ka.jUjrTEJQHaIGhgWl00MgOPzO'),
(5, '', '', 'selleadrien@gmail.com', '$2y$10$2bJfbGvcp9Q3L1vb/A2G3u/qRVElr5DVaImykX5vCJ8VGx741p8fS'),
(6, '', '', 'glafla@gmail.com', '$2y$10$Hc/EzcKDi/Xncg79m/7.IOsWcmKWO/in.dL2sffj/wwH36MwgMKk2'),
(7, '', '', 'galgeg@gmail.Com', '$2y$10$2EL29JImR8WxkwKloKm9xOL8u8cW9DScIM8KOhjVJaL8YIPtF3Kra'),
(8, '', '', 'dada@gmail.com', '$2y$10$Njp5idltzVgA0fsHmunYzuiLVbMxoQ8aHpqkHGn4rXMXGlUxsO4eq');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tutorials`
--
ALTER TABLE `tutorials`
  ADD CONSTRAINT `tutorials_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);
--
-- Base de données : `vehicules2020`
--
CREATE DATABASE IF NOT EXISTS `vehicules2020` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `vehicules2020`;

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `idV` int NOT NULL AUTO_INCREMENT,
  `nomV` varchar(250) NOT NULL,
  `prenomV` varchar(250) NOT NULL,
  PRIMARY KEY (`idV`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`idV`, `nomV`, `prenomV`) VALUES
(1, 'tais toi ! ', 'penis');
--
-- Base de données : `websites`
--
CREATE DATABASE IF NOT EXISTS `websites` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `websites`;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Moteurs de recherche'),
(2, 'Tools'),
(3, 'Media'),
(4, 'Coding'),
(5, 'Social Network'),
(6, 'E-business'),
(7, 'Frameworks');

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `url` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `note` tinyint NOT NULL,
  `cat_id` int NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`id`, `name`, `url`, `description`, `note`, `cat_id`, `logo`) VALUES
(1, 'Google', 'https://www.google.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget sodales leo. Duis malesuada fringilla aliquet. Donec malesuada scelerisque odio, sed consequat tellus tincidunt vitae. Suspendisse sit amet nisl ante. Nullam aliquet venenatis aliquet. Curabitur nec lacus leo. Aliquam a eros sit amet neque rutrum porttitor. Nunc finibus nisl non ipsum elementum auctor. Nullam feugiat sed augue at hendrerit. Maecenas lobortis risus erat, ut fringilla nibh dictum ut. Quisque tincidunt imperdiet arcu, quis iaculis urna porta condimentum. Curabitur vel nisl leo. Aliquam vel lectus non nunc dapibus suscipit. Etiam lobortis nunc sit amet nibh molestie mattis. Aenean eget magna vitae tortor efficitur vulputate.', 4, 1, 'google.jpg'),
(2, 'Php.net', 'https://www.php.net', 'Phasellus auctor sem mauris, et vehicula risus bibendum in. Nam ut justo nulla. Duis lacus nunc, rutrum vel tortor non, congue fermentum arcu. Curabitur ullamcorper venenatis nibh id vulputate. In hac habitasse platea dictumst. Nam in bibendum est. Phasellus vel arcu velit. Nam eget luctus risus. Nulla iaculis eros at iaculis efficitur. Integer consectetur ipsum vitae sodales sollicitudin.', 5, 4, 'php.jpg'),
(3, 'Facebook', 'https://fr-fr.facebook.com', 'Aliquam et turpis libero. Nam fringilla ligula sit amet est faucibus consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin condimentum sapien et feugiat. In hac habitasse platea dictumst. Nullam sed orci vitae purus feugiat tempus mollis eget leo. Pellentesque lobortis nisl dolor, ac sagittis nibh molestie nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin finibus dolor quis mattis rhoncus. Cras congue odio vitae arcu vestibulum congue.', 2, 5, 'facebook.jpg'),
(4, 'Amazon', 'https://www.amazon.fr', 'Etiam faucibus sollicitudin mi, id bibendum metus tincidunt a. Suspendisse faucibus sollicitudin tempus. Nam elementum augue eget lorem fringilla accumsan. Sed posuere nisi non lorem rhoncus, et sodales nibh convallis. Nulla facilisi. Donec at feugiat ligula, sed malesuada orci. Nunc ultricies, magna eu mattis molestie, elit nisl tincidunt lectus, ac volutpat nulla nunc at neque. Aenean consectetur ligula eu fringilla euismod. Aenean ut lectus et eros malesuada placerat eget id massa. Vestibulum eget faucibus libero. Nam at elit suscipit massa bibendum dignissim. Vivamus nec scelerisque nibh. Quisque molestie sed leo eget tempor. Integer sem ex, fermentum et iaculis a, accumsan non enim. Donec ornare augue nec dui finibus hendrerit. Nulla auctor turpis eu accumsan porttitor.', 3, 6, 'amazon.png'),
(5, 'W3Schools', 'https://www.w3schools.com', 'Sed sed sem sit amet diam tristique scelerisque. Mauris in tortor pretium nunc cursus ullamcorper. Vivamus id sem viverra, viverra urna a, ullamcorper massa. Curabitur efficitur odio quis tellus euismod, vel tincidunt sapien volutpat. Aliquam pellentesque sed magna eu condimentum. Ut aliquet a nulla nec cursus. Phasellus congue et tortor sit amet gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus et felis nec tellus sodales commodo non lobortis felis. Nam sollicitudin turpis felis. Vestibulum vitae turpis scelerisque, vehicula purus id, ornare ligula. Cras sed lorem risus.', 4, 4, 'w3schools.png'),
(6, 'Bootstrap', 'https://getbootstrap.com', 'Nulla placerat nisl ac est varius facilisis. Suspendisse at consectetur urna. Aliquam hendrerit nisl nec tellus vulputate, placerat pharetra mi semper. Aliquam erat volutpat. In sapien ante, aliquam vitae hendrerit ut, accumsan porta purus. Mauris vel enim hendrerit, semper magna eget, dictum odio. Maecenas placerat pretium eros, ut viverra tortor tempor non. Morbi sed metus finibus, pharetra dolor non, luctus leo. Nunc justo eros, volutpat et justo vel, interdum sagittis velit. Mauris at felis quam. Nullam suscipit sodales suscipit. Etiam hendrerit magna fermentum tortor porta, a imperdiet magna ullamcorper. Cras ac leo sit amet ex blandit pulvinar vel nec est. Donec sodales, lacus eu pulvinar posuere, justo orci tristique libero, a porttitor enim velit at massa. Praesent consectetur urna ac imperdiet ornare.', 4, 7, 'bootstrap.png'),
(7, 'Twitter', 'https://twitter.com', 'Vivamus nec ultricies est, vel dignissim ante. Nam non ultricies eros, ac sollicitudin libero. Duis ultricies lectus sit amet lectus elementum, auctor egestas nisi cursus. Suspendisse ac fermentum velit, ac varius diam. Maecenas vestibulum vitae tellus eget lobortis. Donec id tortor quis orci varius feugiat egestas ut quam. Nulla sollicitudin eu neque non sollicitudin. Vivamus quis congue odio, vel congue eros. Nullam cursus dui quis risus tincidunt, at fermentum odio condimentum.', 3, 5, 'twitter.png'),
(8, 'Bing', 'https://www.bing.com', 'Donec fringilla, neque in molestie lacinia, risus lorem suscipit nibh, a viverra leo tortor at elit. Donec ligula felis, consequat commodo mauris nec, pharetra faucibus dui. Integer fermentum ex eu rutrum blandit. Aliquam at arcu sed leo consequat ornare. Ut quis velit diam. Morbi faucibus ex vel facilisis cursus. Pellentesque egestas dolor id enim porta finibus. Pellentesque tortor ante, semper non lacus nec, sollicitudin aliquam ex.', 1, 1, 'bing.jpg'),
(9, 'Linkedin', 'https://www.linkedin.com', 'Donec feugiat risus ac lacus tincidunt faucibus. Nulla fringilla rutrum massa, nec convallis ipsum aliquam eu. Nunc sed lorem sit amet massa luctus consectetur sit amet eget arcu. Sed varius turpis tortor, at volutpat neque consequat a. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas ante mi, aliquet eu eros id, consequat interdum velit. Fusce eget massa nec est egestas porttitor. Fusce congue pretium tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi aliquet leo eget elit tempus tempor. Praesent tempus dolor vel laoreet mattis. Sed et maximus augue. Duis cursus nisi sit amet interdum hendrerit. Etiam eu neque et justo vehicula blandit. Sed nec enim lacinia sem interdum accumsan.', 3, 5, 'linkedin.jpg'),
(10, 'Bulma', 'https://bulma.io', 'Donec congue nulla mauris, eu pretium sapien pulvinar at. Vivamus ac iaculis ex. Integer tellus lorem, eleifend at efficitur ac, ullamcorper eget lectus. Vivamus ac dui sit amet nisi consectetur condimentum. Quisque ut neque condimentum, cursus dolor et, dignissim velit. Fusce aliquet et velit vitae ullamcorper. Nulla placerat semper risus id ornare. Duis dictum id mi non mollis. Nunc quis justo eget metus rhoncus lobortis at vitae quam. Pellentesque feugiat facilisis est id ullamcorper. Sed et condimentum tellus. Etiam laoreet sem sit amet libero eleifend vehicula. Pellentesque tincidunt enim nunc, sit amet convallis turpis porta ac. Suspendisse rutrum ipsum vel eros dapibus, in faucibus dolor condimentum. Fusce facilisis ligula dignissim elit venenatis suscipit. Suspendisse aliquet aliquam auctor.', 5, 7, 'bulma.png'),
(11, 'Mozilla', 'https://developer.mozilla.org', 'Suspendisse id enim accumsan, aliquet neque sed, vehicula lectus. Ut rhoncus velit mi, sit amet sodales nisl fermentum in. Etiam urna sapien, venenatis vel viverra et, gravida sed sapien. Curabitur aliquet lorem sit amet mattis laoreet. Suspendisse sed orci sit amet sem interdum ultrices. Fusce vulputate aliquam fringilla. Vestibulum ultrices, lacus vel vehicula ullamcorper, sem nulla tristique arcu, vel hendrerit arcu nunc ullamcorper dui. Vivamus scelerisque lobortis sem, sed commodo velit viverra et. Duis ac facilisis tortor. Ut ac dapibus sem. Vestibulum non sapien vitae turpis pharetra egestas quis ac elit. Fusce ultricies malesuada sem eu blandit.', 3, 2, 'mozilla.jpg'),
(12, 'Foundation', 'https://foundation.zurb.com', 'Mauris in ipsum consequat, cursus leo eget, volutpat tortor. Ut in nibh laoreet, accumsan mi non, dignissim nisi. Suspendisse potenti. Ut a scelerisque augue. Vestibulum mi tortor, luctus eu nibh vitae, posuere vulputate tortor. Nam faucibus, nunc et mattis laoreet, velit mi dignissim velit, id varius quam velit commodo massa. Quisque eget gravida metus. Suspendisse laoreet quis metus sed molestie. Proin sodales eros id felis ullamcorper, ut congue felis pretium. Maecenas id nunc ut orci ornare imperdiet. In dictum, arcu a vehicula tincidunt, lacus augue tempus massa, eget gravida diam nulla sed dolor. Aliquam a diam sit amet lectus tempus rhoncus et ut felis.', 4, 7, 'foundation.jpg'),
(13, 'Instagram', 'https://www.instagram.com', 'Donec sollicitudin efficitur malesuada. Nunc volutpat felis id viverra fermentum. Maecenas ac tortor at sem ultrices gravida. Sed volutpat tempor cursus. Quisque risus neque, volutpat nec risus sodales, placerat aliquet augue. Nunc lacus arcu, finibus eget cursus sed, aliquet sodales velit. Morbi malesuada dui id gravida venenatis. Vivamus dictum metus et placerat convallis. Aliquam erat volutpat. Curabitur eget dignissim massa. Nunc pharetra diam id mi fringilla efficitur. Aliquam in nisi finibus sapien vestibulum venenatis vel a turpis. Pellentesque eu ligula lectus.', 2, 5, 'instagram.jpg'),
(14, 'Enjoy css', 'https://enjoycss.com', 'Donec ornare arcu non viverra venenatis. Nulla ultricies porta quam vel dapibus. Nulla magna nulla, interdum at enim vitae, commodo tincidunt lorem. Donec ullamcorper leo ut leo ullamcorper posuere. Nullam vel vehicula quam, nec pharetra purus. Sed et venenatis risus. Duis luctus dignissim consectetur. Sed mattis est eget nulla placerat, sodales varius enim lacinia. Sed pharetra nisi id tortor lacinia, ac hendrerit lorem rhoncus. Quisque porttitor metus sit amet dapibus vehicula.', 3, 2, 'default.jpg'),
(15, 'Materialize', 'https://materializecss.com', 'Praesent erat augue, sodales at tincidunt eu, tempus sit amet enim. Etiam vel molestie nisi. Morbi non dictum risus. Fusce sit amet dui eget enim euismod semper. Maecenas laoreet dolor vel nulla mollis consequat. Nulla mauris nulla, volutpat a mi accumsan, placerat sagittis nisl. Ut ut ante tincidunt, suscipit felis a, suscipit massa. Mauris vestibulum ex sed gravida porttitor. In eget magna dapibus, luctus tortor ac, tempus diam. Vestibulum odio justo, maximus vel luctus vel, dictum sit amet justo. Vivamus nibh risus, lobortis ultricies turpis eu, efficitur mattis turpis. Maecenas facilisis odio et libero lobortis pulvinar.', 4, 7, 'materialize.jpeg'),
(16, 'W3C', 'https://www.w3.org', 'Proin sodales dignissim turpis, a auctor nibh. Ut at semper dolor. Donec efficitur, ante sit amet porta molestie, nulla justo imperdiet sapien, eu ultricies massa magna et ipsum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus iaculis scelerisque arcu eu porta. Phasellus tempor nunc at enim porta egestas. Fusce id posuere purus, vel lacinia arcu. Sed vulputate lectus magna, et mattis risus faucibus at. Pellentesque id purus sed nisi blandit vehicula sit amet a tellus. Mauris vel facilisis neque. Suspendisse lacus massa, posuere varius est eu, blandit luctus augue.', 4, 4, 'w3c.png'),
(17, 'UIKit', 'https://getuikit.com', 'Suspendisse id enim accumsan, aliquet neque sed, vehicula lectus. Ut rhoncus velit mi, sit amet sodales nisl fermentum in. Etiam urna sapien, venenatis vel viverra et, gravida sed sapien. Curabitur aliquet lorem sit amet mattis laoreet. Suspendisse sed orci sit amet sem interdum ultrices. Fusce vulputate aliquam fringilla. Vestibulum ultrices, lacus vel vehicula ullamcorper, sem nulla tristique arcu, vel hendrerit arcu nunc ullamcorper dui. Vivamus scelerisque lobortis sem, sed commodo velit viverra et. Duis ac facilisis tortor. Ut ac dapibus sem. Vestibulum non sapien vitae turpis pharetra egestas quis ac elit. Fusce ultricies malesuada sem eu blandit.', 4, 7, 'uikit.png'),
(37, 'Git', 'http://www.iepscf-namur.com', 'versionning', 4, 4, 'git.png'),
(38, 'test', 'http://www.band.be', 'test', 1, 3, 'default.jpg');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `sites_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`);
--
-- Base de données : `websites_crud`
--
CREATE DATABASE IF NOT EXISTS `websites_crud` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `websites_crud`;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Moteurs de recherche'),
(2, 'Tools'),
(3, 'Media'),
(4, 'Coding'),
(5, 'Social Network'),
(6, 'E-business'),
(7, 'Frameworks');

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `url` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `note` tinyint NOT NULL,
  `cat_id` int NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`id`, `name`, `url`, `description`, `note`, `cat_id`, `logo`) VALUES
(1, 'Google', 'https://www.google.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget sodales leo. Duis malesuada fringilla aliquet. Donec malesuada scelerisque odio, sed consequat tellus tincidunt vitae. Suspendisse sit amet nisl ante. Nullam aliquet venenatis aliquet. Curabitur nec lacus leo. Aliquam a eros sit amet neque rutrum porttitor. Nunc finibus nisl non ipsum elementum auctor. Nullam feugiat sed augue at hendrerit. Maecenas lobortis risus erat, ut fringilla nibh dictum ut. Quisque tincidunt imperdiet arcu, quis iaculis urna porta condimentum. Curabitur vel nisl leo. Aliquam vel lectus non nunc dapibus suscipit. Etiam lobortis nunc sit amet nibh molestie mattis. Aenean eget magna vitae tortor efficitur vulputate.', 4, 1, 'google.jpg'),
(2, 'Php.net', 'https://www.php.net', 'Phasellus auctor sem mauris, et vehicula risus bibendum in. Nam ut justo nulla. Duis lacus nunc, rutrum vel tortor non, congue fermentum arcu. Curabitur ullamcorper venenatis nibh id vulputate. In hac habitasse platea dictumst. Nam in bibendum est. Phasellus vel arcu velit. Nam eget luctus risus. Nulla iaculis eros at iaculis efficitur. Integer consectetur ipsum vitae sodales sollicitudin.', 5, 4, 'php.jpg'),
(3, 'Facebook', 'https://fr-fr.facebook.com', 'Aliquam et turpis libero. Nam fringilla ligula sit amet est faucibus consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin condimentum sapien et feugiat. In hac habitasse platea dictumst. Nullam sed orci vitae purus feugiat tempus mollis eget leo. Pellentesque lobortis nisl dolor, ac sagittis nibh molestie nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin finibus dolor quis mattis rhoncus. Cras congue odio vitae arcu vestibulum congue.', 2, 5, 'facebook.jpg'),
(4, 'Amazon', 'https://www.amazon.fr', 'Etiam faucibus sollicitudin mi, id bibendum metus tincidunt a. Suspendisse faucibus sollicitudin tempus. Nam elementum augue eget lorem fringilla accumsan. Sed posuere nisi non lorem rhoncus, et sodales nibh convallis. Nulla facilisi. Donec at feugiat ligula, sed malesuada orci. Nunc ultricies, magna eu mattis molestie, elit nisl tincidunt lectus, ac volutpat nulla nunc at neque. Aenean consectetur ligula eu fringilla euismod. Aenean ut lectus et eros malesuada placerat eget id massa. Vestibulum eget faucibus libero. Nam at elit suscipit massa bibendum dignissim. Vivamus nec scelerisque nibh. Quisque molestie sed leo eget tempor. Integer sem ex, fermentum et iaculis a, accumsan non enim. Donec ornare augue nec dui finibus hendrerit. Nulla auctor turpis eu accumsan porttitor.', 3, 6, 'amazon.png'),
(5, 'W3Schools', 'https://www.w3schools.com', 'Sed sed sem sit amet diam tristique scelerisque. Mauris in tortor pretium nunc cursus ullamcorper. Vivamus id sem viverra, viverra urna a, ullamcorper massa. Curabitur efficitur odio quis tellus euismod, vel tincidunt sapien volutpat. Aliquam pellentesque sed magna eu condimentum. Ut aliquet a nulla nec cursus. Phasellus congue et tortor sit amet gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus et felis nec tellus sodales commodo non lobortis felis. Nam sollicitudin turpis felis. Vestibulum vitae turpis scelerisque, vehicula purus id, ornare ligula. Cras sed lorem risus.', 4, 4, 'w3schools.png'),
(6, 'Bootstrap', 'https://getbootstrap.com', 'Nulla placerat nisl ac est varius facilisis. Suspendisse at consectetur urna. Aliquam hendrerit nisl nec tellus vulputate, placerat pharetra mi semper. Aliquam erat volutpat. In sapien ante, aliquam vitae hendrerit ut, accumsan porta purus. Mauris vel enim hendrerit, semper magna eget, dictum odio. Maecenas placerat pretium eros, ut viverra tortor tempor non. Morbi sed metus finibus, pharetra dolor non, luctus leo. Nunc justo eros, volutpat et justo vel, interdum sagittis velit. Mauris at felis quam. Nullam suscipit sodales suscipit. Etiam hendrerit magna fermentum tortor porta, a imperdiet magna ullamcorper. Cras ac leo sit amet ex blandit pulvinar vel nec est. Donec sodales, lacus eu pulvinar posuere, justo orci tristique libero, a porttitor enim velit at massa. Praesent consectetur urna ac imperdiet ornare.', 4, 7, 'bootstrap.png'),
(7, 'Twitter', 'https://twitter.com', 'Vivamus nec ultricies est, vel dignissim ante. Nam non ultricies eros, ac sollicitudin libero. Duis ultricies lectus sit amet lectus elementum, auctor egestas nisi cursus. Suspendisse ac fermentum velit, ac varius diam. Maecenas vestibulum vitae tellus eget lobortis. Donec id tortor quis orci varius feugiat egestas ut quam. Nulla sollicitudin eu neque non sollicitudin. Vivamus quis congue odio, vel congue eros. Nullam cursus dui quis risus tincidunt, at fermentum odio condimentum.', 3, 5, 'twitter.png'),
(8, 'Bing', 'https://www.bing.com', 'Donec fringilla, neque in molestie lacinia, risus lorem suscipit nibh, a viverra leo tortor at elit. Donec ligula felis, consequat commodo mauris nec, pharetra faucibus dui. Integer fermentum ex eu rutrum blandit. Aliquam at arcu sed leo consequat ornare. Ut quis velit diam. Morbi faucibus ex vel facilisis cursus. Pellentesque egestas dolor id enim porta finibus. Pellentesque tortor ante, semper non lacus nec, sollicitudin aliquam ex.', 1, 1, 'bing.jpg'),
(9, 'Linkedin', 'https://www.linkedin.com', 'Donec feugiat risus ac lacus tincidunt faucibus. Nulla fringilla rutrum massa, nec convallis ipsum aliquam eu. Nunc sed lorem sit amet massa luctus consectetur sit amet eget arcu. Sed varius turpis tortor, at volutpat neque consequat a. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas ante mi, aliquet eu eros id, consequat interdum velit. Fusce eget massa nec est egestas porttitor. Fusce congue pretium tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi aliquet leo eget elit tempus tempor. Praesent tempus dolor vel laoreet mattis. Sed et maximus augue. Duis cursus nisi sit amet interdum hendrerit. Etiam eu neque et justo vehicula blandit. Sed nec enim lacinia sem interdum accumsan.', 3, 5, 'linkedin.jpg'),
(10, 'Bulma', 'https://bulma.io', 'Donec congue nulla mauris, eu pretium sapien pulvinar at. Vivamus ac iaculis ex. Integer tellus lorem, eleifend at efficitur ac, ullamcorper eget lectus. Vivamus ac dui sit amet nisi consectetur condimentum. Quisque ut neque condimentum, cursus dolor et, dignissim velit. Fusce aliquet et velit vitae ullamcorper. Nulla placerat semper risus id ornare. Duis dictum id mi non mollis. Nunc quis justo eget metus rhoncus lobortis at vitae quam. Pellentesque feugiat facilisis est id ullamcorper. Sed et condimentum tellus. Etiam laoreet sem sit amet libero eleifend vehicula. Pellentesque tincidunt enim nunc, sit amet convallis turpis porta ac. Suspendisse rutrum ipsum vel eros dapibus, in faucibus dolor condimentum. Fusce facilisis ligula dignissim elit venenatis suscipit. Suspendisse aliquet aliquam auctor.', 5, 7, 'bulma.png'),
(11, 'Mozilla', 'https://developer.mozilla.org', 'Suspendisse id enim accumsan, aliquet neque sed, vehicula lectus. Ut rhoncus velit mi, sit amet sodales nisl fermentum in. Etiam urna sapien, venenatis vel viverra et, gravida sed sapien. Curabitur aliquet lorem sit amet mattis laoreet. Suspendisse sed orci sit amet sem interdum ultrices. Fusce vulputate aliquam fringilla. Vestibulum ultrices, lacus vel vehicula ullamcorper, sem nulla tristique arcu, vel hendrerit arcu nunc ullamcorper dui. Vivamus scelerisque lobortis sem, sed commodo velit viverra et. Duis ac facilisis tortor. Ut ac dapibus sem. Vestibulum non sapien vitae turpis pharetra egestas quis ac elit. Fusce ultricies malesuada sem eu blandit.', 3, 2, 'mozilla.jpg'),
(12, 'Foundation', 'https://foundation.zurb.com', 'Mauris in ipsum consequat, cursus leo eget, volutpat tortor. Ut in nibh laoreet, accumsan mi non, dignissim nisi. Suspendisse potenti. Ut a scelerisque augue. Vestibulum mi tortor, luctus eu nibh vitae, posuere vulputate tortor. Nam faucibus, nunc et mattis laoreet, velit mi dignissim velit, id varius quam velit commodo massa. Quisque eget gravida metus. Suspendisse laoreet quis metus sed molestie. Proin sodales eros id felis ullamcorper, ut congue felis pretium. Maecenas id nunc ut orci ornare imperdiet. In dictum, arcu a vehicula tincidunt, lacus augue tempus massa, eget gravida diam nulla sed dolor. Aliquam a diam sit amet lectus tempus rhoncus et ut felis.', 4, 7, 'foundation.jpg'),
(13, 'Instagram', 'https://www.instagram.com', 'Donec sollicitudin efficitur malesuada. Nunc volutpat felis id viverra fermentum. Maecenas ac tortor at sem ultrices gravida. Sed volutpat tempor cursus. Quisque risus neque, volutpat nec risus sodales, placerat aliquet augue. Nunc lacus arcu, finibus eget cursus sed, aliquet sodales velit. Morbi malesuada dui id gravida venenatis. Vivamus dictum metus et placerat convallis. Aliquam erat volutpat. Curabitur eget dignissim massa. Nunc pharetra diam id mi fringilla efficitur. Aliquam in nisi finibus sapien vestibulum venenatis vel a turpis. Pellentesque eu ligula lectus.', 2, 5, 'instagram.jpg'),
(14, 'Enjoy css', 'https://enjoycss.com', 'Donec ornare arcu non viverra venenatis. Nulla ultricies porta quam vel dapibus. Nulla magna nulla, interdum at enim vitae, commodo tincidunt lorem. Donec ullamcorper leo ut leo ullamcorper posuere. Nullam vel vehicula quam, nec pharetra purus. Sed et venenatis risus. Duis luctus dignissim consectetur. Sed mattis est eget nulla placerat, sodales varius enim lacinia. Sed pharetra nisi id tortor lacinia, ac hendrerit lorem rhoncus. Quisque porttitor metus sit amet dapibus vehicula.', 3, 2, 'default.jpg'),
(15, 'Materialize', 'https://materializecss.com', 'Praesent erat augue, sodales at tincidunt eu, tempus sit amet enim. Etiam vel molestie nisi. Morbi non dictum risus. Fusce sit amet dui eget enim euismod semper. Maecenas laoreet dolor vel nulla mollis consequat. Nulla mauris nulla, volutpat a mi accumsan, placerat sagittis nisl. Ut ut ante tincidunt, suscipit felis a, suscipit massa. Mauris vestibulum ex sed gravida porttitor. In eget magna dapibus, luctus tortor ac, tempus diam. Vestibulum odio justo, maximus vel luctus vel, dictum sit amet justo. Vivamus nibh risus, lobortis ultricies turpis eu, efficitur mattis turpis. Maecenas facilisis odio et libero lobortis pulvinar.', 4, 7, 'materialize.jpeg'),
(16, 'W3C', 'https://www.w3.org', 'Proin sodales dignissim turpis, a auctor nibh. Ut at semper dolor. Donec efficitur, ante sit amet porta molestie, nulla justo imperdiet sapien, eu ultricies massa magna et ipsum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus iaculis scelerisque arcu eu porta. Phasellus tempor nunc at enim porta egestas. Fusce id posuere purus, vel lacinia arcu. Sed vulputate lectus magna, et mattis risus faucibus at. Pellentesque id purus sed nisi blandit vehicula sit amet a tellus. Mauris vel facilisis neque. Suspendisse lacus massa, posuere varius est eu, blandit luctus augue.', 4, 4, 'w3c.png'),
(17, 'UIKit', 'https://getuikit.com', 'Suspendisse id enim accumsan, aliquet neque sed, vehicula lectus. Ut rhoncus velit mi, sit amet sodales nisl fermentum in. Etiam urna sapien, venenatis vel viverra et, gravida sed sapien. Curabitur aliquet lorem sit amet mattis laoreet. Suspendisse sed orci sit amet sem interdum ultrices. Fusce vulputate aliquam fringilla. Vestibulum ultrices, lacus vel vehicula ullamcorper, sem nulla tristique arcu, vel hendrerit arcu nunc ullamcorper dui. Vivamus scelerisque lobortis sem, sed commodo velit viverra et. Duis ac facilisis tortor. Ut ac dapibus sem. Vestibulum non sapien vitae turpis pharetra egestas quis ac elit. Fusce ultricies malesuada sem eu blandit.', 4, 7, 'uikit.png'),
(37, 'Git', 'http://www.iepscf-namur.com', 'versionning', 4, 4, 'git.png'),
(40, 'iespcf', 'http://ww.iespcf.com', 'lorem lipsum', 1, 1, 'defaul.jpg'),
(43, 'Adrien Selle', 'https://www.youtube.com/watch?v=MDbtLY5Jj_E', 'blabla', 1, 4, 'default.png');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `login` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `login`, `password`, `level`) VALUES
(6, 'john', 'doe', 'doe', '$2y$10$tlJuEvGfRB918Vverg0bE.sTXVTwAupb1I3fgDWc1J15kDpsDIpk6', NULL),
(7, 'patrick', 'pat', 'pat', '$2y$10$tlJuEvGfRB918Vverg0bE.sTXVTwAupb1I3fgDWc1J15kDpsDIpk6', NULL),
(8, 'Adrien', 'Selle', 'Adrien', '$2y$10$MDUbwlFQ/1pNmXT6xp6n0O6Mm/U5RGkC1BPQkRQrITaR9zQvW3ORm', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `sites_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
