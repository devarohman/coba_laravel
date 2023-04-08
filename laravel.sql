-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Apr 2023 pada 18.47
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(2, 'Web Design', 'web-design', '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(3, 'Personal', 'personal', '2023-02-02 10:05:57', '2023-02-02 10:05:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_16_022453_create_posts_table', 1),
(6, '2022_09_19_071723_create_categories_table', 1),
(7, '2022_09_26_090634_create_students_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Mollitia eius rem quo qui.', 'adipisci-aut-odit-nam', NULL, 'Est ut consectetur nostrum magnam id. Eos velit atque ipsam et voluptatibus quasi. Ut ea ab similique quia.', '<p>Labore libero odio accusamus sint iste doloribus rerum. Quas fuga dolorem ut praesentium numquam. Qui commodi quidem facere nisi dolor. Ut et reiciendis unde.</p><p>Voluptates ullam consequatur et nulla est. Dolor voluptatum deserunt veritatis rerum consequatur ut quaerat. Ea dolorum quasi eaque labore nam et expedita sed.</p><p>Quae velit illum id at. Ut optio eveniet sint ad voluptatibus nemo. Quas nobis odio voluptatem qui sit expedita. Expedita explicabo quia voluptatem et.</p><p>Est iste doloribus numquam ipsum. Nisi quos sequi inventore sed. Temporibus molestias qui ut aut et ipsum. Voluptates et similique quibusdam quam consequatur est enim.</p><p>Eveniet quis quaerat delectus et. Tenetur mollitia blanditiis explicabo distinctio commodi aliquam qui.</p><p>Voluptatem autem aspernatur ullam consectetur libero et. Illum a ut harum. Enim vitae perferendis consequatur enim iusto laboriosam consequatur. Et magni quidem debitis provident. Exercitationem soluta autem sequi in odio sunt exercitationem.</p><p>Odit quam magni doloremque sed. Quia quo quod voluptas sapiente sit. Assumenda molestias explicabo et ducimus fuga ipsa sit. Adipisci minus veniam vel autem nihil explicabo.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(2, 2, 2, 'Voluptatem nihil et maxime.', 'consequatur-a-numquam-ducimus-quia', NULL, 'Consequuntur officiis modi neque autem nobis quaerat dolor. Sit cum vitae error sit sint consequatur incidunt. Nostrum dolor et adipisci.', '<p>Voluptatum vel perferendis at neque at. Quidem ipsa adipisci odit ullam assumenda dolore error. Qui praesentium modi qui sit sed.</p><p>Soluta repudiandae neque inventore. Et cumque deserunt non eius rerum. Cum maxime quos placeat blanditiis provident.</p><p>Voluptas nihil quia sint aliquid perferendis dolorem. Quod voluptatem tempora illo culpa.</p><p>Eum est deleniti sequi soluta animi earum recusandae non. Eos et eligendi et qui ut atque. Mollitia officiis est aut et tempore. Sed ad voluptatem nulla iste facere sed. Fugit occaecati eaque aperiam et quae perspiciatis.</p><p>Est sapiente numquam dolore enim aut. Aperiam fugit omnis culpa amet labore velit. Tenetur voluptatum fugit distinctio magnam.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(3, 3, 3, 'Dignissimos vero impedit cupiditate qui nihil occaecati nulla nesciunt quia.', 'dolorum-reiciendis-ab-molestias-enim-nihil-quisquam', NULL, 'Id ea exercitationem magni quia praesentium at. Voluptate ut cumque omnis. Aut consequatur fugiat ipsam rerum. Sed et facere maxime corporis ullam fuga et.', '<p>Ullam soluta quo excepturi. Est aut cum dicta et nemo. Tempore omnis rerum modi ex. Ut dolore neque commodi earum dolores doloribus.</p><p>Commodi dolorem consequuntur perspiciatis. Repudiandae reiciendis sequi magnam iure tenetur natus repellat. Voluptates esse eum hic dolor. Voluptatem id consequuntur iure nulla voluptas.</p><p>Assumenda architecto dolorem aut aperiam. Sed id culpa dolorum et enim voluptatem. Est earum sit totam aut sint saepe amet totam.</p><p>Voluptatum sed a quia corrupti vero vero. Iste dicta nihil exercitationem delectus. Mollitia rem quibusdam quia quisquam. Labore omnis impedit sit id excepturi.</p><p>Aperiam doloremque sint sunt. Quibusdam sit est perferendis aut. Quibusdam et accusamus soluta ut cupiditate incidunt.</p><p>Magnam harum minima dolores assumenda. Dolorem minus voluptatem hic qui temporibus. Reprehenderit esse sunt explicabo occaecati a voluptatibus id. Sint facilis sequi magnam nulla perspiciatis nobis.</p><p>Facilis excepturi fugit perspiciatis nam. Repellendus quam ipsam fuga debitis. Enim itaque et impedit quia non. Nisi praesentium impedit placeat dolorum. Soluta consequuntur in dolorum.</p><p>Placeat quisquam reiciendis est omnis omnis molestiae. Qui est necessitatibus natus dolores dolore. Officia sint illo aut nostrum et.</p><p>Corporis aperiam voluptatem autem magnam recusandae maxime dolor. Reiciendis sit laudantium amet et architecto. Ut quo in in eaque maxime nobis.</p><p>Quo odio eum beatae alias at provident. Aspernatur quaerat distinctio voluptatem doloremque. Assumenda doloribus omnis voluptatibus nam placeat enim. Voluptas sunt facere suscipit maxime modi.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(4, 1, 1, 'Perspiciatis quam iusto similique earum.', 'provident-ipsa-aut-est-laudantium-ipsam-fugiat-magni', NULL, 'Earum dolorem cupiditate mollitia accusantium. Qui totam a ut nihil eligendi aut autem libero. Nihil quam vel sit laboriosam suscipit. Fugit consequatur quod cumque ut.', '<p>Ipsa esse et sapiente sit quisquam. Quam autem officia vel harum officia quam. Error est iste quis laboriosam enim.</p><p>Laudantium deserunt rerum quos et. Nam aliquid nesciunt voluptate ex. Sit adipisci aut porro enim labore asperiores nam. Id consectetur dolores qui qui.</p><p>Itaque assumenda perferendis ut voluptatem et et molestiae eaque. Vitae nobis alias sed voluptatem aut.</p><p>Aut dolorem aut ut id voluptatum minima ut. Et minus praesentium dolores nam fugiat itaque repellendus ad.</p><p>Beatae tempore corporis molestiae accusamus consequuntur enim. Rerum possimus repellat doloremque quibusdam. Cumque quos id molestiae libero voluptas explicabo accusamus.</p><p>Eveniet qui et quia voluptatem quibusdam. Perferendis nihil voluptatibus suscipit ipsa aut saepe temporibus. Harum labore vel nemo vitae non.</p><p>Eum ea dolorum recusandae. Deleniti non eos qui beatae quia. Ab consequatur magnam quia temporibus cum. Numquam est harum necessitatibus corporis.</p><p>Accusamus eum est nisi aut quia animi officia et. Provident corrupti totam quos harum quos voluptas reiciendis. Animi quia ut occaecati in sequi et omnis. Incidunt reprehenderit maiores enim animi.</p><p>Est voluptatem id velit autem. Non suscipit nisi perspiciatis dolores doloremque laboriosam consequuntur. Aut doloremque exercitationem quidem quia.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(5, 3, 1, 'Veniam qui maxime dolor dolore voluptatem.', 'sequi-unde-nihil-quia-quaerat-voluptatum-consequatur', NULL, 'Architecto quia unde officia sit aut perferendis incidunt. Odio consequatur numquam quod nemo. Similique dolores debitis nihil ad fuga.', '<p>Officia velit praesentium quia consequatur aut placeat. Eos sunt et ut nihil et nam pariatur et. Perferendis nostrum fuga et eaque nesciunt reprehenderit.</p><p>Quia rerum sit et ea quam beatae quos. Et sit fugit voluptatem ratione incidunt eaque reprehenderit dolor. Corporis cumque asperiores ad.</p><p>Temporibus et aut sed omnis. Eaque nobis deserunt ut est blanditiis ad ipsum repellat. Ut excepturi optio enim consectetur. Aut quo nam est omnis.</p><p>Blanditiis consequatur non praesentium repudiandae alias earum. Occaecati et eos nisi eaque. Eligendi voluptas quasi porro explicabo at aut. Voluptatem eveniet ea facilis suscipit provident velit.</p><p>Sint molestiae aut voluptas sit. Aliquid consequuntur cumque cum nulla voluptas deserunt. Ut beatae id ipsa temporibus voluptatem quis distinctio. Inventore sint recusandae voluptatibus eveniet.</p><p>Non sint doloribus recusandae alias. Et est distinctio et ex voluptatem quo a. Quia laboriosam et vel ut voluptatum perspiciatis nam.</p><p>Deserunt totam et vel in vel hic neque. Saepe et voluptate iure ipsam facilis molestias.</p><p>Consequatur quia tempore nihil similique minima deserunt nihil. Nisi ea est itaque sit. In assumenda corporis reprehenderit sapiente. Odio dolorem voluptatem aspernatur est tenetur dignissimos mollitia labore. Saepe sunt quaerat aut accusantium.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(6, 2, 3, 'Ut eius.', 'ut-eos-ex-quam-est-sit', NULL, 'Soluta cum laborum sunt nihil quas debitis omnis aliquam. Enim minima voluptas aut non id ad placeat. Molestias iusto quis explicabo placeat consequatur consequatur et vel.', '<p>Est voluptas est perspiciatis animi est. A asperiores voluptatum ab. Officia laboriosam expedita aut sed rem similique perferendis vel.</p><p>Recusandae esse suscipit sed ratione. Sint amet suscipit qui. Odio non non vel voluptate cupiditate dolor.</p><p>Perspiciatis cupiditate rerum eos et. Et maxime eos laudantium et nostrum voluptate voluptatibus consequatur. Hic ut laudantium autem voluptatum recusandae illo. Quam voluptatum molestias ducimus rem non aut.</p><p>Nobis nihil et suscipit quo repellendus. Et voluptas assumenda dignissimos voluptates laboriosam quisquam rerum. Nihil voluptatem voluptatem quidem sed.</p><p>Sit necessitatibus ut et quis sit quis. Ipsam quidem rerum et velit corrupti. Molestias voluptatem non occaecati possimus qui fugit.</p><p>Occaecati esse rerum suscipit aliquid qui modi. Totam incidunt tempore nisi dignissimos. Hic nostrum exercitationem ea quisquam.</p><p>Et soluta corporis enim aut odit pariatur. Eum architecto et exercitationem officia corrupti eveniet. Dicta qui qui laborum pariatur et. Veritatis saepe et totam dolores modi corporis et.</p><p>Est atque aut eos doloribus minus amet. Quia debitis omnis ipsam sint. Earum voluptas non aut doloremque et. Fuga quo nam deserunt nesciunt modi.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(7, 1, 3, 'Dolorum ut enim non reprehenderit.', 'dolore-non-architecto-nostrum-vitae', NULL, 'Rerum corporis quae et facilis dolores praesentium. Eum ea alias exercitationem quia. Minus nemo perspiciatis voluptatem odit et sunt saepe.', '<p>Unde provident sit labore perferendis quos voluptatem. Veritatis deserunt magni eligendi ipsam id.</p><p>Et voluptas sapiente sequi delectus dolores et nobis. Expedita tempora numquam earum quibusdam sed. Fugit ipsa adipisci magnam odit quibusdam iste. Nihil consequatur rerum nam sit.</p><p>Doloribus voluptatibus corrupti natus perspiciatis explicabo commodi. Facere voluptatem est culpa qui eum facilis voluptate. Aliquid similique quas ratione doloremque est nisi.</p><p>Quia adipisci ut et. Et inventore neque voluptatem. Distinctio nisi aspernatur eos minima corporis velit.</p><p>Voluptates aut quam ea numquam. Commodi vel non illum libero exercitationem. Ad sint ducimus rerum. Tempore quia facilis facilis repudiandae. Deserunt pariatur dolor occaecati consequatur aliquam qui.</p><p>Possimus iure qui veniam ea ut molestiae. Voluptatem quia ipsum cum tenetur.</p><p>Exercitationem rerum ut ullam quam. Quidem deleniti nostrum nemo et illo. Maiores dolore dolorum ut tempore qui quia.</p><p>Id et et rerum nisi magni ad eum. Et ut placeat quisquam sed harum est laudantium. Est nostrum illum ut maiores enim deserunt. Asperiores nostrum voluptas nihil ipsum laudantium a dolor.</p><p>Maxime repellendus sit repudiandae officia perferendis est. Aut maiores mollitia necessitatibus quo quia quo. Facere nihil doloremque quidem similique. Assumenda facere asperiores necessitatibus.</p><p>Et numquam asperiores ex. Fugiat quia quasi architecto voluptas maxime culpa ipsa. Dolorum repellat impedit earum facilis.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(8, 2, 3, 'Laudantium occaecati soluta sit minus rem doloribus quis tenetur.', 'ut-quae-laborum-repellendus-ad-tempore', NULL, 'Et molestias id dolorem et. Itaque occaecati occaecati odio quis velit quisquam modi. Repellendus ratione et aut molestiae. Maxime hic perferendis dolor corrupti.', '<p>Tempora minus temporibus delectus nam. Mollitia quibusdam id consequatur facere molestiae rerum iusto et. Rerum incidunt consequatur natus nemo neque nihil laudantium voluptatem.</p><p>Est quia qui consequuntur vel aut dicta laboriosam. Exercitationem doloribus nam qui qui. Ut aut et possimus veniam autem. Consequatur et assumenda eum nihil corporis.</p><p>Aliquam accusamus qui aperiam fuga voluptates tenetur dignissimos. Tempore consequatur sunt accusamus autem in.</p><p>Nobis ea necessitatibus aut hic animi corrupti voluptatem. Suscipit aut culpa ullam ex hic alias. Qui id modi ut doloribus assumenda.</p><p>Labore enim quia voluptatibus necessitatibus eum molestias quia voluptatem. Porro et reiciendis aut qui qui. Qui quo ut nisi.</p><p>Omnis omnis consequatur tenetur placeat voluptatem qui. Sunt totam enim repellendus nesciunt aut autem facere. Nobis delectus deleniti officiis sapiente consequatur non.</p><p>Sint excepturi officiis repudiandae odit neque est. Dolor quia sed qui sunt atque. Consequatur a asperiores accusamus id. Rem sunt minus et velit quis omnis quo quo.</p><p>Minima sapiente facilis dolorum maiores. Et dolorem molestias sit est qui dolor veritatis id. Repudiandae earum voluptatem expedita aut consectetur deserunt.</p><p>Fugit sunt ipsum aut. Nesciunt minima aliquid iste maiores voluptate enim earum labore. Quod maiores ullam est.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(9, 2, 3, 'Et quibusdam rerum voluptatem incidunt vel.', 'eum-consequatur-in-quibusdam-voluptatem-esse-placeat-laboriosam', NULL, 'Rerum atque quos sint minima non nostrum. Asperiores doloremque vel totam debitis omnis laudantium. Qui ipsa aut est quam et ut exercitationem vero. Officiis ipsam maiores voluptatem.', '<p>Ut assumenda ipsum repellendus sint illo. Dicta consectetur quo voluptate eligendi nesciunt consequatur natus architecto. Officia modi alias quo asperiores. Sed non nihil illum omnis aut enim.</p><p>Est laboriosam necessitatibus necessitatibus. Quia et maxime odio nobis ut iste. Laborum ab et qui odio dolorem.</p><p>Totam atque provident tempora qui sunt. Doloribus ut a non ut nulla. Aliquid recusandae cum tenetur sed praesentium consequatur est. Quod vel et in pariatur vel.</p><p>Et error illo ullam velit eum fuga quisquam ea. Blanditiis ab voluptas optio autem.</p><p>Sint magnam at aliquid sed animi eius repellendus. Asperiores illum inventore tenetur quam corporis. Ipsam ut numquam consequatur. Placeat placeat quisquam est accusantium debitis quia.</p><p>Sequi culpa consequatur quia debitis esse nemo deleniti nihil. Doloribus qui accusantium molestiae. In eaque ut ipsam tempore molestiae quasi facere. Accusamus magnam sed porro rerum deserunt ipsa ab odio. Sit et voluptatibus deserunt iste temporibus.</p><p>Et inventore ut libero excepturi et. Autem pariatur pariatur voluptas quis dolor hic vero. Eos praesentium quo aut consequatur omnis minus ad.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(10, 1, 1, 'Id molestias quaerat aperiam qui provident eveniet debitis tempore voluptatibus ab.', 'et-voluptatem-velit-et-facere-molestiae-provident', NULL, 'Voluptatem voluptatem laboriosam autem voluptas ut nobis. Eum rerum labore occaecati repellat. Reprehenderit quo doloremque esse quam suscipit laboriosam consequatur eligendi. Quae laudantium soluta dicta assumenda maiores dolorem.', '<p>Iure voluptatem atque optio voluptatibus. Corrupti tenetur corporis voluptate. Perferendis reiciendis nemo atque est hic. Illo ut ut ab.</p><p>Et optio ipsam omnis aut quasi. Tempore vel officiis eveniet. Tempore vero accusamus ea qui quidem impedit.</p><p>Dignissimos illum autem ullam distinctio quia iste doloribus. Sit labore non omnis atque hic itaque est. Distinctio modi deserunt incidunt eligendi quo doloribus. Sit ut vel blanditiis adipisci vitae.</p><p>Quibusdam itaque temporibus non et enim sunt sit. Quia suscipit pariatur placeat voluptatem facere. Perspiciatis in qui ut aperiam doloremque ea.</p><p>Voluptatem aut harum quia libero dolor illum sed. Necessitatibus adipisci odit ut rerum alias incidunt. Laborum quisquam nisi consequatur saepe numquam et. Voluptatem omnis mollitia quae ad.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(11, 2, 1, 'Ut aliquam et amet non voluptatem enim.', 'sed-praesentium-et-quia-quis-dolor', NULL, 'Provident fugiat impedit voluptas commodi nulla eveniet. Voluptatem rerum nesciunt ex sapiente. Doloremque sapiente inventore beatae odio autem totam consequatur id. Distinctio voluptatem sapiente quis maiores nihil sint reiciendis.', '<p>Temporibus et praesentium quo possimus odio. Assumenda vel ut incidunt molestiae iste soluta perferendis. Qui a excepturi totam maxime assumenda nam.</p><p>A corrupti voluptatem consequatur dolores ut. Voluptatem fugit eum non similique alias cumque. Modi sequi quo aut doloribus nobis est.</p><p>Quia sit ut fugit perferendis ipsa beatae ad. Et blanditiis recusandae non aliquam porro debitis. Omnis consequatur fugit explicabo illo. Adipisci ipsam dolorum totam veritatis.</p><p>In delectus id quia rerum. Inventore et repellat eos aut molestias inventore. Veritatis assumenda dignissimos dolores cum. Modi consequatur beatae architecto provident recusandae nihil voluptate.</p><p>Consectetur quasi sint eos ipsum repudiandae laborum. Aut eos veniam iste fugiat. Quia labore debitis itaque sequi hic aut.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(12, 3, 3, 'Harum ducimus id corrupti architecto repellat sunt impedit aut rem.', 'voluptatem-odio-sapiente-animi-ratione-recusandae', NULL, 'Et nobis doloremque quas. Perspiciatis architecto minima magni ipsum deleniti quis. Aliquid voluptas at inventore velit aut. Veritatis animi dignissimos eos sit commodi.', '<p>Esse nam est nulla officia. Reprehenderit aut voluptatem at dicta autem ratione alias quam.</p><p>Non soluta minus quidem ut consequatur ut. Reprehenderit ut sunt omnis alias nam excepturi nobis. Facilis fugit neque est eius odio voluptatibus tenetur inventore.</p><p>Non harum beatae sint quis. Dolore veniam itaque exercitationem commodi voluptas. Ea eum possimus voluptate.</p><p>Perferendis rem et inventore atque est aspernatur quia. Eveniet inventore unde sed officiis. Dicta debitis ut fugiat asperiores recusandae molestiae enim.</p><p>Quo culpa eveniet vero id. Quam consequatur cupiditate labore vel nesciunt fugiat doloribus voluptatibus. Commodi rerum corrupti molestias eaque eaque sint fugit.</p><p>Harum eaque quia qui non aut accusamus et. Quaerat iste et ea est veritatis inventore delectus. Et asperiores recusandae alias quo minus ut temporibus sunt. Quidem adipisci labore nihil unde harum.</p><p>Doloremque ipsa rerum repudiandae non exercitationem consequatur voluptatem. Quia ab unde culpa voluptas dolor necessitatibus. Molestiae quia enim maiores vitae maxime.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(13, 1, 2, 'Atque ipsam libero.', 'odit-autem-officiis-eum-et-dolores-ut', NULL, 'Sint autem explicabo fuga ab qui. Harum qui reiciendis blanditiis quos dolorem dicta. Sed corrupti dolorem quidem corporis aliquid neque. Beatae sed voluptates enim earum nesciunt. Accusantium reprehenderit ullam voluptate magnam consequatur consequuntur.', '<p>Hic exercitationem molestiae nam harum tenetur dicta ratione ad. Et laboriosam ipsum ab est aliquid. Et enim ea earum aliquid architecto odio sed. Itaque sit iste est sed et vitae neque.</p><p>Eaque minima exercitationem ad magnam dicta non delectus velit. Fugit enim excepturi expedita enim debitis eum aut. Autem amet temporibus ullam deleniti. Consequuntur eos qui eos officia aut.</p><p>Occaecati est sint quibusdam cum. Nostrum velit et iure velit eligendi. Quibusdam recusandae deserunt corrupti ad ipsum laborum. Consequuntur explicabo ad aut voluptas nihil alias corrupti cupiditate.</p><p>Harum quod officiis quia sit. Veritatis odit rerum rerum iste in. Rerum odio doloribus quaerat molestiae omnis. Aut dicta ut qui magni natus consequatur eius expedita. Inventore similique sequi quo quod beatae rerum corporis in.</p><p>Eius occaecati aut voluptate ut officia cupiditate modi. Iusto dolorem enim non ipsa facilis officiis. Asperiores in est molestiae natus necessitatibus nihil animi. Nobis et accusantium et ut quibusdam repellat.</p><p>Nihil dolorem ab dolores ea voluptatum hic itaque nostrum. Autem dolorem eos rem ab et neque. Consequatur aliquam occaecati suscipit ex doloremque dolor.</p><p>Tempora dolorem id et. Sunt assumenda omnis ratione enim. Vel qui id explicabo perferendis reiciendis est sunt. Unde nihil reprehenderit velit odio et. Voluptatum maiores in explicabo soluta ducimus praesentium.</p><p>Placeat commodi autem dolores nisi. Voluptas corrupti similique ea sint est dolores ut. Quas libero eos quia reprehenderit est enim et aspernatur.</p><p>Aut est vero voluptatibus iure vero deserunt itaque. Dolore est omnis et sint ut et hic sit. Qui itaque repudiandae maiores magnam nesciunt.</p><p>Quo sit beatae qui rerum. Voluptas rerum ex sed repudiandae eum omnis sunt. Aut esse quis magnam rem.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(14, 1, 3, 'Totam voluptates iure perferendis quia sit.', 'omnis-saepe-tenetur-officia-quibusdam-et-maxime', NULL, 'Soluta qui omnis aspernatur modi et sint. Quia deleniti sed quaerat mollitia aut aut.', '<p>Sit ut velit et quibusdam omnis et. Et voluptas deserunt sunt quo perspiciatis et dolorem doloribus. Neque quia laudantium reiciendis possimus. Laborum et nobis eum est.</p><p>Quos cumque quasi necessitatibus aliquid temporibus. Quia officia incidunt occaecati tenetur qui qui ipsam. Amet nisi consequuntur necessitatibus fugiat unde mollitia nihil. Tempore omnis minus saepe ex placeat optio sit vero.</p><p>Culpa rerum enim natus sit assumenda sed. Qui animi magni eligendi a velit. Voluptatum expedita porro vel reiciendis nostrum incidunt. Deserunt facilis temporibus totam impedit et itaque laboriosam vero.</p><p>Quasi quod quis eum rerum eum quibusdam eos. Neque expedita illum et totam minus. Labore inventore temporibus unde quae. Dolor aut ex occaecati dignissimos voluptatem.</p><p>Tenetur accusantium perferendis non omnis eum molestiae. Omnis nihil similique ratione nobis fuga vero necessitatibus. Voluptatem quas fugiat ex corporis quidem fugit. Omnis beatae et nihil ipsum. Ipsa corporis rem tempore quia.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(15, 3, 3, 'Et corporis in totam facilis consectetur ut ea eius eum.', 'architecto-aperiam-modi-asperiores-laboriosam', NULL, 'Reprehenderit ratione sunt sed molestiae. Odio consectetur numquam quaerat ut. Laborum aut itaque accusantium dolorem doloribus dolorem quia. Aut impedit culpa sit rem iure.', '<p>Non possimus nulla corrupti quasi. Nihil sunt qui aut eligendi eum accusantium quidem debitis. Architecto aspernatur numquam velit consequatur.</p><p>Iure corporis earum eveniet repellat fugit placeat libero est. Numquam consequatur fugit inventore dolor molestias. Quis cupiditate velit qui vero modi recusandae. Maiores et qui dolorum laborum rerum repudiandae illo.</p><p>Saepe error tempora ut nulla eligendi. Quo molestiae qui in illo est aut explicabo. Nulla incidunt iusto doloremque doloremque. Velit dignissimos quaerat totam esse.</p><p>Enim aliquam illo est dolor aut necessitatibus accusantium quos. Dicta distinctio et consequuntur sint culpa quos. Et voluptate iusto tempore deleniti consequatur eos cum.</p><p>Minus eaque odio dolorem nobis voluptates eligendi iure expedita. Facilis consequuntur quaerat omnis architecto cum.</p><p>Assumenda officia odio similique fuga in ab. Sed et distinctio ut maiores. Eum rerum magni odit dolore dolor error.</p><p>Sit quaerat qui eligendi eum ipsam aspernatur velit. Odit sed nihil est qui illo voluptatum. Cupiditate fugiat perferendis quae ut soluta possimus est. Quae debitis dicta voluptate et illum quis.</p><p>Sunt harum et officiis nam consequatur praesentium laborum. Quis aut eveniet fugiat et.</p><p>Nulla impedit ratione debitis enim voluptatem tenetur eum. Asperiores occaecati in voluptate vitae consequatur quidem provident. Corporis temporibus excepturi reiciendis laborum molestiae doloremque.</p><p>Et repudiandae ipsam explicabo ea dolor similique eos asperiores. Quae delectus consequatur rem exercitationem ullam ut aut. Eum totam possimus laboriosam.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(16, 1, 1, 'Harum nihil quisquam aliquam sint sit possimus.', 'voluptas-similique-animi-vitae-non', NULL, 'Eveniet placeat exercitationem sunt odit. Voluptatum soluta harum a at necessitatibus labore inventore. Enim vero sit optio tenetur totam maiores quo dignissimos.', '<p>Veniam explicabo quod culpa autem. Aperiam tenetur dolorum id laboriosam quas. Placeat quidem voluptas et veniam quisquam.</p><p>Illum quia suscipit vel recusandae ipsum. Minima aut iure eligendi ut tempora libero ratione. Aperiam ipsam dolores et provident.</p><p>Rerum harum ipsum molestias fugiat. Aut ad qui debitis. Officia voluptatem nihil non blanditiis odit repellat occaecati.</p><p>Aut ut porro vel placeat quo soluta. Repudiandae sunt eius architecto mollitia velit veritatis veritatis tempore. Dolores quae eum blanditiis et aspernatur quia.</p><p>Sed et beatae aut quas voluptatibus iure. Natus incidunt ab eveniet. Qui aut omnis amet dolorem. Inventore harum soluta voluptas unde voluptas nostrum. Vitae est cupiditate quisquam suscipit adipisci expedita.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(17, 2, 3, 'Quod saepe sit voluptas dolores nemo atque accusamus.', 'voluptas-tempore-dignissimos-eum', NULL, 'Vero harum numquam ut amet. Et sunt odio consequatur. Voluptatum facere in voluptatem est.', '<p>Libero rerum itaque explicabo sint excepturi cum laboriosam saepe. Officiis aliquam non voluptatum repellendus vitae. Numquam iste qui et nam amet.</p><p>Sapiente qui facere libero aut harum sed. Unde fuga veniam qui eos cumque omnis officiis. Eos et esse repudiandae aut suscipit doloremque et. Qui beatae et ea temporibus quas possimus commodi.</p><p>Asperiores natus qui sed libero. Eos ad laborum fugit consequatur odit quia. Voluptates optio ut ipsa ullam enim aut. Laborum at aut molestiae animi repellendus minima eveniet nobis.</p><p>Voluptas asperiores harum accusantium illum esse. Totam aut at qui vero. Quia odio qui quis aut ea dolorum quo officia.</p><p>Et distinctio et dolorem et rerum repudiandae. Maxime laboriosam eaque possimus mollitia officia impedit. Voluptate dolores totam voluptatem neque qui ut accusamus. Sunt quam laborum dolor hic voluptas enim totam.</p><p>Veniam quidem est aut tenetur aut. Reiciendis rerum est magni quis. Quasi aliquam fugit assumenda qui.</p><p>Ullam magnam voluptatem itaque iure itaque officiis autem. Vero et aut fugiat veniam. Reiciendis aspernatur maiores nobis accusamus magni. Et qui rerum est voluptatem nostrum. Quam beatae quisquam qui tempora eligendi facere autem nulla.</p><p>Magni est natus ad optio et reprehenderit. Assumenda sunt vel labore illum corrupti. Dolor quidem autem accusantium aut aut hic. Sed eos a accusantium illo eum incidunt.</p><p>Architecto consequatur autem voluptas. Nam reprehenderit voluptates placeat voluptas sint eum. Veniam ratione inventore voluptatem inventore.</p><p>Sit quasi laboriosam eius non illo. Perferendis aut quia placeat suscipit et. Vitae repellat fugiat et quo.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(19, 3, 1, 'Aut voluptate ab.', 'et-ab-sit-sunt', NULL, 'Earum fuga pariatur dolores illum ut. Illo rerum voluptas occaecati eveniet quae quaerat. Eos itaque iusto praesentium. Consequatur ut qui odio autem aperiam. Ut iusto asperiores eum minus nesciunt cumque.', '<p>Commodi quis explicabo mollitia sit voluptates. Est voluptatem in dolorum dolor qui earum aspernatur.</p><p>Velit consequatur accusantium optio earum quia est ut. Laborum nostrum quaerat necessitatibus assumenda. Inventore quia expedita delectus similique ullam voluptates.</p><p>Illo error veritatis placeat dolore. Quam dolor deserunt doloremque vel quia cupiditate quod consequatur. Dolores et quaerat dolorem beatae ducimus ut voluptatum. Libero quas non cumque dolores.</p><p>Voluptatum tempora omnis et ea aut. Voluptatem repellendus voluptatum voluptatem et velit perspiciatis. Doloribus voluptas quia magni harum ducimus accusantium dolore neque. Commodi quasi sit est est quo. Mollitia sequi quos unde aut maxime architecto.</p><p>Dolores quae odit ea id qui qui. Repellendus sunt saepe possimus ratione magnam dolores. Sapiente velit error quibusdam sed ipsa ut non. Quidem omnis quasi aut odit sed.</p><p>Omnis cumque quidem enim. Culpa veniam et vel aut qui nemo deleniti. Maiores voluptatem molestiae deleniti ad aliquid voluptates commodi.</p><p>Incidunt laborum animi eius porro quo. Neque sint corrupti est est sit earum. Eos quis doloremque iure dolorem eligendi autem. Ut accusamus ad aut maxime nam voluptatem.</p><p>Qui pariatur consequatur id enim illo sint in. Consequuntur modi ex dolorem qui odit et et. Eos ad voluptatem incidunt et. Sint ut quaerat est quasi voluptas soluta eos.</p><p>Aspernatur omnis aspernatur ut dolore sint et quidem. Commodi quis explicabo aut sint dolor. Et sunt dolor aperiam consequatur aspernatur minima.</p><p>Ipsam quisquam sit voluptas velit dolore reiciendis. Enim illum neque aut dicta dolor exercitationem quia assumenda. Laudantium qui recusandae dolorem ea. Est quia aut inventore saepe exercitationem. Magnam quia voluptatem quia quis blanditiis.</p>', NULL, '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(22, 1, 1, 'fdghvjb', 'fdghvjb', NULL, 'dxfcghvjbn', '<div>dxfcghvjbn</div>', NULL, '2023-02-02 11:40:39', '2023-02-02 11:40:39'),
(23, 3, 5, 'WLEOW3LO T3MPIK', 'wleow3lo-t3mpik', 'post-image/pBnoeO5DyVfevY9oLQ7GxMwKncUkQgIlah6dvoI3.jpg', 'Takjil paling enak adalah takjilati tempikmu', '<div>Takjil paling enak adalah takjilati tempikmu</div>', NULL, '2023-02-23 08:02:34', '2023-02-23 08:02:34'),
(24, 3, 5, 'wleo wleo t3empik', 'wleo-wleo-t3empik', NULL, 'takjil paling enak adlah takjilati tempikmu', '<div>takjil paling enak adlah takjilati tempikmu</div>', NULL, '2023-02-23 08:04:20', '2023-02-23 08:04:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Deva Rohman Prassetia', 'devarohmanp', 'devarohman@gmail.com', NULL, '$2y$10$R0Oie0b5RfYNc9NjauXVPO0NeKrYtXgty96uFOg2GeskdRnfJ0vBu', NULL, '2023-02-02 10:05:54', '2023-02-02 10:05:54'),
(2, 'Wulan Jelita Purwanti', 'jaiman66', 'cawisadi.habibi@example.org', '2023-02-02 10:05:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RSQSnGMRKp', '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(3, 'Carla Lailasari', 'hafshah.hassanah', 'hidayanto.laswi@example.org', '2023-02-02 10:05:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WXEGaTIf4P', '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(4, 'Pangeran Suryono', 'rharyanti', 'bancar.sihombing@example.net', '2023-02-02 10:05:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q3tkIkDDXw', '2023-02-02 10:05:57', '2023-02-02 10:05:57'),
(5, 'Hernan Diaz ATW', 'hernandiaz', 'hernandiaz@gmail.com', NULL, '$2y$10$.5BfKg/8.cbNgxTJXQwH9eE.exmkpgztAbpxubzX5/Um3HA9LRDda', NULL, '2023-02-23 07:58:01', '2023-02-23 07:58:01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
