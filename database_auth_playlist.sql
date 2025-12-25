-- ============================================
-- Database Update: User Authentication & Playlist Features
-- ============================================

-- 1. Tabel Users untuk autentikasi
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_premium` tinyint(1) DEFAULT 0,
  `google_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. Tabel Playlists
CREATE TABLE IF NOT EXISTS `playlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Tabel Playlist Songs (many-to-many) - Tanpa foreign key dulu
CREATE TABLE IF NOT EXISTS `playlist_songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playlist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `position` int(11) DEFAULT 0,
  `added_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `playlist_id` (`playlist_id`),
  KEY `song_id` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. Tabel Favorites - Tanpa foreign key dulu
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `type` enum('song','album','artist') NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `song_id` (`song_id`),
  KEY `album_id` (`album_id`),
  KEY `artist_id` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 5. Tabel Play History - Tanpa foreign key dulu
DROP TABLE IF EXISTS `recent_plays`;

CREATE TABLE IF NOT EXISTS `play_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `song_id` int(11) NOT NULL,
  `played_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `duration_played` int(11) DEFAULT 0,
  `device` varchar(50) DEFAULT 'web',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `song_id` (`song_id`),
  KEY `played_at` (`played_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 6. Insert sample users (IGNORE jika sudah ada)
INSERT IGNORE INTO `users` (`id`, `username`, `email`, `password`, `full_name`, `avatar`, `is_premium`) VALUES
(1, 'admin', 'admin@beatbay.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Admin BeatBay', NULL, 1),
(2, 'johndoe', 'john@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'John Doe', NULL, 0),
(3, 'janedoe', 'jane@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jane Doe', NULL, 1);

-- 7. Insert sample playlists (IGNORE jika sudah ada)
INSERT IGNORE INTO `playlists` (`id`, `user_id`, `name`, `description`, `is_public`) VALUES
(1, 2, 'My Favorite Songs', 'All my favorite tracks in one place', 1),
(2, 2, 'Workout Mix', 'High energy songs for gym sessions', 1),
(3, 3, 'Chill Vibes', 'Relaxing music for peaceful moments', 1),
(4, 3, 'Road Trip 2024', 'Perfect songs for long drives', 1);

-- 8. Insert sample playlist songs (IGNORE jika sudah ada)
INSERT IGNORE INTO `playlist_songs` (`playlist_id`, `song_id`, `position`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 4, 3),
(2, 3, 1),
(2, 6, 2),
(3, 7, 1),
(3, 8, 2),
(3, 9, 3),
(4, 1, 1),
(4, 5, 2),
(4, 10, 3);

-- 9. Insert sample favorites (IGNORE jika sudah ada)
INSERT IGNORE INTO `favorites` (`user_id`, `song_id`, `type`) VALUES
(2, 1, 'song'),
(2, 2, 'song'),
(2, 4, 'song'),
(3, 7, 'song'),
(3, 8, 'song');

INSERT IGNORE INTO `favorites` (`user_id`, `album_id`, `type`) VALUES
(2, 1, 'album'),
(3, 2, 'album');

INSERT IGNORE INTO `favorites` (`user_id`, `artist_id`, `type`) VALUES
(2, 1, 'artist'),
(3, 2, 'artist');

-- 10. Insert sample play history (IGNORE jika sudah ada)
INSERT IGNORE INTO `play_history` (`user_id`, `song_id`, `played_at`, `duration_played`) VALUES
(2, 1, NOW() - INTERVAL 1 HOUR, 210),
(2, 2, NOW() - INTERVAL 2 HOUR, 189),
(2, 4, NOW() - INTERVAL 3 HOUR, 234),
(3, 7, NOW() - INTERVAL 30 MINUTE, 198),
(3, 8, NOW() - INTERVAL 1 DAY, 245),
(3, 9, NOW() - INTERVAL 2 DAY, 223),
(NULL, 1, NOW() - INTERVAL 5 HOUR, 210),
(NULL, 3, NOW() - INTERVAL 6 HOUR, 178);

-- ============================================
-- SELESAI! Import file ini ke phpMyAdmin
-- Database siap digunakan untuk fitur authentication & playlist!
-- ============================================
