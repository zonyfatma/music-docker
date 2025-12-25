# Panduan Upload dan Memutar Musik

## Fitur yang Sudah Ditambahkan

### 1. Upload Audio dari Admin Panel

- Akses: `http://localhost/musikk/index.php/admin_music/upload`
- Fitur:
  - Upload file audio lokal (MP3, WAV, OGG, M4A)
  - Maksimal ukuran file: 50MB
  - Upload cover image (opsional)
  - Set metadata: Title, Artist, Album, Genre

### 2. Menggunakan URL Eksternal

- Bisa menggunakan URL dari cloud storage (Google Drive, Dropbox, dll)
- Atau dari layanan hosting audio
- Contoh URL demo: https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

### 3. Demo/Sample Audio untuk Testing

- Otomatis menggunakan file demo jika tidak upload atau tidak isi URL
- Path: `assets/audio/demo.mp3`

## Cara Penggunaan

### Langkah 1: Tambahkan Audio ke Database

Jalankan file SQL untuk menambahkan sample audio:

```sql
-- File: update_audio_files.sql
-- Jalankan di phpMyAdmin atau MySQL client
```

### Langkah 2: Upload Audio Baru (Opsional)

1. Login sebagai Admin
2. Akses `/admin_music/upload`
3. Isi form:
   - Title: Nama lagu
   - Artist: Nama artis
   - Album: Nama album (opsional)
   - Genre: Pilih genre
   - Cover Image: Upload cover (opsional)
   - Pilih salah satu opsi audio:
     - Upload File: Pilih file MP3/WAV dari komputer
     - External URL: Paste URL audio
     - Demo Audio: Gunakan file demo

### Langkah 3: Memutar Musik

1. Buka halaman utama website
2. Klik pada lagu yang ingin diputar
3. Player akan muncul di bagian bawah halaman
4. Musik akan otomatis diputar

## Struktur Folder

```
musikk/
├── assets/
│   └── audio/          # Untuk sample/demo audio files
├── uploads/
│   └── audio/          # Untuk user-uploaded audio files
└── application/
    ├── controllers/
    │   └── Admin_music.php  # Controller untuk manage audio
    └── views/
        └── admin/
            └── upload_music.php  # Halaman upload
```

## Fitur Player

- ✅ Play/Pause
- ✅ Next/Previous track
- ✅ Shuffle
- ✅ Repeat (Off, All, One)
- ✅ Volume control
- ✅ Progress bar dengan seek
- ✅ Queue management
- ✅ Track history (after 30 seconds)
- ✅ Favorite/Like

## Testing dengan Sample Audio

Gunakan URL gratis ini untuk testing:

1. https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3
2. https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3
3. https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3
4. https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3
5. https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3

## Troubleshooting

### Musik tidak bisa diputar

1. Cek apakah kolom `audio_file` atau `file_path` di database sudah terisi
2. Cek apakah file audio benar-benar ada di folder
3. Cek console browser untuk error (F12)
4. Pastikan format audio didukung oleh browser

### File upload gagal

1. Cek ukuran file (max 50MB)
2. Cek format file (harus MP3, WAV, OGG, atau M4A)
3. Cek permission folder `uploads/audio/` (harus writable)

### External URL tidak bisa diputar

1. Pastikan URL adalah direct link ke file audio
2. Pastikan server audio mendukung CORS
3. Test URL di browser terlebih dahulu

## Pengembangan Selanjutnya

- [ ] Integrasi getID3 library untuk deteksi durasi otomatis
- [ ] Batch upload multiple files
- [ ] Audio waveform visualization
- [ ] Lyrics sync
- [ ] Download feature
- [ ] Share to social media
