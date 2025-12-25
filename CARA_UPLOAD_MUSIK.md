# Cara Upload dan Memutar Musik

## Masalah yang Ditemukan:

1. Fungsi `playSong()` tidak terdefinisi sebagai fungsi global
2. File audio belum diupload ke folder `uploads/audio/`
3. Path audio tidak terbaca dengan benar

## Solusi yang Diterapkan:

### 1. Fungsi Player Diperbaiki

- `window.playSong()` sekarang menjadi fungsi global yang bisa dipanggil dari halaman manapun
- Menambahkan console.log untuk debugging
- Validasi data song sebelum memutar
- Menampilkan error message yang lebih jelas

### 2. Path Audio Diperbaiki

- Membersihkan leading slash pada path
- Menambahkan validasi untuk URL eksternal vs lokal
- Menampilkan full path di error message untuk debugging

### 3. Cara Upload Musik:

#### Option 1: Upload File MP3 Lokal

1. Buka halaman admin: `http://localhost/musikk/admin_music/upload`
2. Login sebagai admin
3. Isi form:
   - Title: Nama lagu
   - Artist: Nama artis
   - Album: (opsional)
   - Genre: (opsional)
   - Audio File: Pilih file MP3 dari komputer Anda
   - Cover Image: (opsional) Upload cover album
4. Klik "Upload Music"

#### Option 2: Gunakan URL Audio Eksternal

1. Buka halaman admin: `http://localhost/musikk/admin_music/upload`
2. Isi form sama seperti di atas, tapi:
   - Kosongkan "Audio File"
   - Isi "Audio URL" dengan link MP3 online
   - Contoh URL: `https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3`

### 4. Cara Memutar Musik:

1. Buka halaman: `http://localhost/musikk/music` atau `http://localhost/musikk/music/browse`
2. Klik pada lagu yang ingin diputar
3. Player akan muncul di bagian bawah
4. Klik tombol Play untuk memutar musik

### 5. Testing dengan Console Browser:

Buka Developer Tools (F12) dan ketik:

```javascript
// Test apakah fungsi playSong tersedia
console.log(typeof window.playSong); // harus "function"

// Test memutar lagu secara manual
window.playSong({
	id: 1,
	title: "Test Song",
	artist: "Test Artist",
	file_path: "assets/audio/demo.mp3",
	duration: 180,
});
```

### 6. Debugging:

Jika musik tidak berputar, periksa:

1. **Console Browser (F12 > Console):**

   - Lihat error message yang muncul
   - Periksa apakah `playSong called with:` muncul
   - Periksa apakah `Final audio URL:` menunjukkan path yang benar

2. **Network Tab (F12 > Network):**

   - Klik lagu untuk memutar
   - Periksa apakah ada request ke file audio (.mp3)
   - Periksa status code (harus 200, bukan 404)

3. **Periksa Database:**

   ```sql
   SELECT id, title, artist, file_path FROM music;
   ```

   - Pastikan `file_path` tidak kosong
   - Pastikan path benar (misal: `uploads/audio/xxx.mp3` atau URL lengkap)

4. **Periksa File Fisik:**
   - Jika menggunakan upload lokal, pastikan file ada di `c:\wamp64\www\musikk\uploads\audio\`
   - Periksa permission folder (harus writable)

### 7. Contoh URL Audio Online untuk Testing:

Jika belum punya file MP3, gunakan URL berikut untuk testing:

```
https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3
https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3
https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3
```

Upload dengan Audio URL, lalu coba putar.

## Perubahan Code yang Dibuat:

### 1. player.php

- `window.playSong()` dibuat global
- Tambah console.log untuk debugging
- Validasi data song
- Path cleaning untuk menghindari double slash

### 2. browse.php

- Perbaiki fungsi `playMusic()` dan `playTrack()`
- Tambah properti `artist_name` dan `file_path`
- Gunakan `window.playSong()` bukan `playSong()` lokal
- Hapus fungsi `playSong()` yang redundant

## Status: ✅ Selesai Diperbaiki

Silakan test dengan:

1. Upload musik dengan URL online
2. Buka halaman browse
3. Klik lagu untuk memutar
4. Periksa console untuk melihat log

Jika masih ada masalah, buka console browser dan screenshot error yang muncul.
