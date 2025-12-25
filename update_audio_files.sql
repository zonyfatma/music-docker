-- Update existing songs with demo/sample audio files
-- Anda bisa menggunakan URL eksternal atau path lokal

-- Opsi 1: Menggunakan sample audio dari Free Music Archive (URL eksternal)
UPDATE songs SET audio_file = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3' WHERE id = 1;
UPDATE songs SET audio_file = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3' WHERE id = 2;
UPDATE songs SET audio_file = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3' WHERE id = 3;
UPDATE songs SET audio_file = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3' WHERE id = 4;
UPDATE songs SET audio_file = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3' WHERE id = 5;

-- Opsi 2: Jika Anda sudah upload file audio ke folder assets/audio/
-- UPDATE songs SET audio_file = 'assets/audio/song1.mp3' WHERE id = 1;
-- UPDATE songs SET audio_file = 'assets/audio/song2.mp3' WHERE id = 2;

-- Update tabel music juga
UPDATE music SET file_path = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3' WHERE music_id = 1;
UPDATE music SET file_path = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3' WHERE music_id = 2;
UPDATE music SET file_path = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3' WHERE music_id = 3;
