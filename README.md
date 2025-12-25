# Instruksi Instalasi Website Musik BeatBay

## Persiapan Database

1. Buka phpMyAdmin atau MySQL client Anda
2. Import file `database.sql` yang ada di root folder project
3. Atau jalankan query yang ada di file `database.sql` secara manual

## Konfigurasi

File konfigurasi sudah diatur dengan setting default untuk WAMP:

- Database: `musikk`
- Username: `root`
- Password: (kosong)
- Host: `localhost`

Jika konfigurasi database Anda berbeda, edit file:
`application/config/database.php`

## Menambahkan Gambar

Letakkan gambar-gambar berikut di folder yang sesuai:

### Folder: `assets/images/artists/`

- ed-sheeran.jpg
- james-arthur.jpg
- taylor-swift.jpg
- the-weeknd.jpg

### Folder: `assets/images/albums/`

- divide.jpg
- multiply.jpg
- no6.jpg
- equals.jpg
- peru.jpg
- x.jpg

### Folder: `assets/images/`

- user-avatar.jpg

### Folder: `assets/images/radio/` (Opsional)

- top-hits-radio.jpg
- chill-vibes.jpg
- workout-beats.jpg
- indie-mix.jpg
- classic-rock.jpg
- jazz-cafe.jpg

### Folder: `assets/images/podcasts/` (Opsional)

- music-industry.jpg
- behind-beat.jpg
- indie-spotlight.jpg
- album-reviews.jpg
- music-tech.jpg
- live-sessions.jpg

**Note:** Gambar akan tetap berfungsi dengan placeholder jika Anda tidak memiliki gambar asli.
Website akan otomatis generate avatar menggunakan UI Avatars.

## Menjalankan Website

1. Pastikan WAMP/XAMPP sudah running
2. Buka browser dan akses: `http://localhost/musikk`
3. Website musik Anda siap digunakan!

## Struktur URL

- **Home**: `http://localhost/musikk`
- **Discover**: `http://localhost/musikk/discover` - Jelajahi musik baru berdasarkan genre
- **Radio**: `http://localhost/musikk/radio` - Radio streaming berdasarkan artist dan genre
- **Albums**: `http://localhost/musikk/albums` - Koleksi lengkap album musik
- **Podcast**: `http://localhost/musikk/podcast` - Podcast musik dan wawancara
- **Artist**: `http://localhost/musikk/artist/1` (angka adalah ID artist)
- **Play Song**: `http://localhost/musikk/play/1` (angka adalah ID song)
- **Search**: `http://localhost/musikk/search?q=keyword`

## Fitur yang Tersedia

### Halaman Home

✅ Profil artist dengan verified badge
✅ Daftar album populer
✅ Daftar lagu populer dengan statistik play count
✅ Recent played songs
✅ Fans also like (similar artists)
✅ Music player di bagian bawah

### Halaman Discover

✅ Browse musik berdasarkan genre (Pop, Rock, Hip-Hop, dll)
✅ New releases section
✅ Featured albums
✅ Trending songs dengan ranking
✅ Popular artists grid

### Halaman Radio

✅ Featured radio stations dengan live indicator
✅ Genre-based radio stations
✅ Artist radio (radio berdasarkan artist favorit)
✅ Recently played stations
✅ Live listener count

### Halaman Albums

✅ New releases dengan badge
✅ Popular albums dengan trending indicator
✅ Albums by year (2024, 2023)
✅ Filter albums (All, Albums, Singles, EPs)
✅ Complete albums collection

### Halaman Podcast

✅ Featured podcasts
✅ Browse by category (Music News, Interviews, Production Tips, dll)
✅ Popular episodes
✅ Subscriptions management
✅ Recommended podcasts

### Fitur Umum

✅ Responsive design untuk semua ukuran layar
✅ Search bar global
✅ User profile dengan premium status
✅ Notifications
✅ Interactive music player
✅ Smooth animations dan transitions

## Customize

Untuk mengubah tampilan, edit file:

- CSS: `assets/css/main.css`
- JavaScript: `assets/js/main.js`
- View: `application/views/home.php`

## Data Sample

Database sudah termasuk data sample untuk:

- 4 Artists (Ed Sheeran, James Arthur, Taylor Swift, The Weeknd)
- 6 Albums dari Ed Sheeran
- 4 Popular songs
- Recent plays history

## Troubleshooting

Jika muncul error 404:

1. Pastikan mod_rewrite Apache sudah aktif
2. Atau akses dengan: `http://localhost/musikk/index.php/home`

Jika database tidak terkoneksi:

1. Cek username/password di `application/config/database.php`
2. Pastikan MySQL service sudah running
3. Pastikan database 'musikk' sudah dibuat

## Pengembangan Selanjutnya

Anda dapat menambahkan fitur:

- Upload audio files
- Actual music player dengan HTML5 Audio
- User authentication & playlists
- Admin panel untuk manage content
- Download songs
- Share functionality
- Comments & ratings

Selamat menggunakan BeatBay Music Website! 🎵
