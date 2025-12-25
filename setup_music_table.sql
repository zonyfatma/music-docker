-- Verifikasi dan update struktur tabel music
-- Jalankan script ini untuk memastikan tabel music memiliki semua kolom yang diperlukan

-- Cek apakah tabel music ada, jika tidak buat
CREATE TABLE IF NOT EXISTS `music` (
  `music_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `album` varchar(255) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `duration` int(11) DEFAULT 0,
  `file_path` text NOT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `upload_by` int(11) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'approved',
  `play_count` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`music_id`),
  KEY `upload_by` (`upload_by`),
  KEY `status` (`status`),
  KEY `genre` (`genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Jika tabel sudah ada, pastikan kolom-kolom penting ada
-- Uncomment baris di bawah jika ada kolom yang kurang

-- ALTER TABLE `music` ADD COLUMN IF NOT EXISTS `duration` int(11) DEFAULT 0 AFTER `genre`;
-- ALTER TABLE `music` ADD COLUMN IF NOT EXISTS `cover_image` varchar(255) DEFAULT NULL AFTER `file_path`;
-- ALTER TABLE `music` ADD COLUMN IF NOT EXISTS `upload_by` int(11) DEFAULT NULL AFTER `cover_image`;
-- ALTER TABLE `music` ADD COLUMN IF NOT EXISTS `status` enum('pending','approved','rejected') DEFAULT 'approved' AFTER `upload_by`;
-- ALTER TABLE `music` ADD COLUMN IF NOT EXISTS `play_count` int(11) DEFAULT 0 AFTER `status`;
-- ALTER TABLE `music` ADD COLUMN IF NOT EXISTS `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `play_count`;
-- ALTER TABLE `music` ADD COLUMN IF NOT EXISTS `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP AFTER `created_at`;

-- Tambahkan beberapa data demo jika tabel kosong
INSERT INTO `music` (`title`, `artist`, `album`, `genre`, `duration`, `file_path`, `cover_image`, `upload_by`, `status`)
SELECT * FROM (
    SELECT 'Sample Song 1' as title, 'Demo Artist' as artist, 'Demo Album' as album, 'Pop' as genre, 180 as duration, 
           'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3' as file_path, 
           NULL as cover_image, 1 as upload_by, 'approved' as status
    UNION ALL
    SELECT 'Sample Song 2', 'Demo Artist', 'Demo Album', 'Rock', 200, 
           'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3', 
           NULL, 1, 'approved'
    UNION ALL
    SELECT 'Sample Song 3', 'Demo Artist', 'Demo Album', 'Electronic', 220, 
           'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3', 
           NULL, 1, 'approved'
) as tmp
WHERE NOT EXISTS (SELECT 1 FROM `music` LIMIT 1);
