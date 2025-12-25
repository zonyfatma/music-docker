-- Create database
CREATE DATABASE IF NOT EXISTS musikk;
USE musikk;

-- Table for artists
CREATE TABLE IF NOT EXISTS artists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image VARCHAR(255),
    is_verified BOOLEAN DEFAULT 0,
    monthly_listeners BIGINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for albums
CREATE TABLE IF NOT EXISTS albums (
    id INT AUTO_INCREMENT PRIMARY KEY,
    artist_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    cover_image VARCHAR(255),
    release_year INT,
    album_type VARCHAR(50) DEFAULT 'Album',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE
);

-- Table for songs
CREATE TABLE IF NOT EXISTS songs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    artist_id INT NOT NULL,
    album_id INT,
    title VARCHAR(255) NOT NULL,
    duration TIME,
    plays BIGINT DEFAULT 0,
    audio_file VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE,
    FOREIGN KEY (album_id) REFERENCES albums(id) ON DELETE SET NULL
);

-- Table for recent plays
CREATE TABLE IF NOT EXISTS recent_plays (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT DEFAULT 1,
    song_id INT NOT NULL,
    played_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (song_id) REFERENCES songs(id) ON DELETE CASCADE
);

-- Insert sample data for Ed Sheeran
INSERT INTO artists (name, image, is_verified, monthly_listeners) VALUES
('Ed Sheeran', 'ed-sheeran.jpg', 1, 82735050),
('James Arthur', 'james-arthur.jpg', 1, 28000000),
('Taylor Swift', 'taylor-swift.jpg', 1, 95000000),
('The Weeknd', 'the-weeknd.jpg', 1, 110000000);

-- Insert Ed Sheeran albums
INSERT INTO albums (artist_id, title, cover_image, release_year, album_type) VALUES
(1, 'Divide', 'divide.jpg', 2017, 'Album'),
(1, 'Multiply', 'multiply.jpg', 2014, 'Album'),
(1, 'No 6', 'no6.jpg', 2019, 'Album'),
(1, 'Equals', 'equals.jpg', 2021, 'Album'),
(1, 'Peru', 'peru.jpg', 2021, 'Single'),
(1, 'X', 'x.jpg', 2014, 'Album');

-- Insert songs
INSERT INTO songs (artist_id, album_id, title, duration, plays) VALUES
(1, 4, 'Shivers', '00:03:27', 1952015881),
(1, 1, 'Shape of You', '00:04:07', 3024067930),
(1, 1, 'Perfect', '00:04:23', 2800000000),
(1, 3, 'Bad Habits', '00:03:51', 2500000000);

-- Insert recent plays
INSERT INTO recent_plays (song_id, played_at) VALUES
(2, DATE_SUB(NOW(), INTERVAL 2 MINUTE)),
(1, DATE_SUB(NOW(), INTERVAL 14 HOUR)),
(3, DATE_SUB(NOW(), INTERVAL 2 HOUR)),
(4, DATE_SUB(NOW(), INTERVAL 6 HOUR));
