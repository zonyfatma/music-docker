-- Update data untuk halaman Discover, Radio, Albums, dan Podcast

-- Tambah lebih banyak album untuk variety
INSERT INTO albums (artist_id, title, cover_image, release_year, album_type) VALUES
(2, 'Back from the Edge', 'james-arthur-album.jpg', 2016, 'Album'),
(3, '1989', 'taylor-1989.jpg', 2014, 'Album'),
(3, 'Lover', 'taylor-lover.jpg', 2019, 'Album'),
(4, 'After Hours', 'weeknd-after-hours.jpg', 2020, 'Album'),
(4, 'Starboy', 'weeknd-starboy.jpg', 2016, 'Album');

-- Tambah lebih banyak lagu
INSERT INTO songs (artist_id, album_id, title, duration, plays) VALUES
(2, 7, 'Say You Wont Let Go', '00:03:32', 1800000000),
(2, 7, 'Impossible', '00:03:44', 950000000),
(3, 8, 'Shake It Off', '00:03:39', 2600000000),
(3, 8, 'Blank Space', '00:03:51', 2400000000),
(3, 9, 'Lover', '00:03:41', 1200000000),
(4, 10, 'Blinding Lights', '00:03:20', 3500000000),
(4, 10, 'Save Your Tears', '00:03:35', 2100000000),
(4, 11, 'Starboy', '00:03:50', 2800000000);

-- Update recent plays dengan lagu-lagu baru
INSERT INTO recent_plays (song_id, played_at) VALUES
(5, DATE_SUB(NOW(), INTERVAL 30 MINUTE)),
(6, DATE_SUB(NOW(), INTERVAL 1 HOUR)),
(7, DATE_SUB(NOW(), INTERVAL 3 HOUR)),
(8, DATE_SUB(NOW(), INTERVAL 5 HOUR)),
(9, DATE_SUB(NOW(), INTERVAL 8 HOUR));
