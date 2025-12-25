# Cara Menampilkan Musik yang Sudah Diupload di Website

## 🎵 Akses Musik yang Diupload

Setelah Anda mengupload musik melalui admin panel, musik akan otomatis muncul di halaman website. Ada beberapa cara untuk mengaksesnya:

### 1. **Halaman Browse Music** (Rekomendasi)

Menu baru yang menampilkan semua musik yang diupload:

**Cara Akses:**
- Klik menu **"Browse Music"** di sidebar (ikon musik)
- Atau buka URL: `http://localhost/musikk/music`

**Yang Ditampilkan:**
- ✅ Semua musik yang baru diupload (Recently Uploaded)
- ✅ Kombinasi musik dari database lama dan baru (Popular Tracks)
- ✅ Trending songs
- ✅ Informasi lengkap: judul, artis, album, genre, play count
- ✅ Cover album (jika diupload)

**Fitur:**
- 🎵 Klik pada musik untuk memutar langsung
- ❤️ Tambahkan ke favorit
- 📊 Lihat jumlah pemutaran
- ⏱️ Durasi lagu

### 2. **Halaman Home**

Musik juga akan muncul di halaman home jika sudah diintegrasikan dengan player.

### 3. **Player di Bagian Bawah**

Semua musik yang diupload bisa diputar melalui player yang ada di bagian bawah website.

---

## 📋 Alur Lengkap Upload sampai Tampil

```
1. Login Admin
   ↓
2. Klik "Upload Musik" di Admin Panel
   ↓
3. Isi Formulir & Upload
   ↓
4. Klik "Upload Musik" (Submit)
   ↓
5. ✅ Musik tersimpan di database (tabel: music)
   ↓
6. Musik OTOMATIS muncul di halaman "Browse Music"
   ↓
7. User bisa langsung memutar musik
```

---

## 🔍 Struktur Data Musik

Musik yang diupload disimpan di tabel `music` dengan kolom:

```sql
- music_id       : ID unik musik
- title          : Judul lagu
- artist         : Nama artis
- album          : Nama album (opsional)
- genre          : Genre musik
- duration       : Durasi dalam detik
- file_path      : Path/URL file audio
- cover_image    : Nama file cover (jika ada)
- upload_by      : ID admin yang upload
- status         : approved/pending/rejected
- play_count     : Jumlah pemutaran
- created_at     : Waktu upload
```

**Status:**
- `approved` = Langsung tampil di website ✅
- `pending` = Menunggu persetujuan 🕐
- `rejected` = Tidak ditampilkan ❌

---

## 🎯 Lokasi File Upload

Setelah upload, file tersimpan di:

```
musikk/
├── uploads/
│   └── audio/
│       └── [nama_file_acak].mp3    ← File audio di sini
│
└── assets/
    └── images/
        └── albums/
            └── [nama_file_acak].jpg ← Cover album di sini
```

---

## 🔧 Testing & Verifikasi

### 1. Cek Database
```sql
-- Lihat musik yang baru diupload
SELECT * FROM music ORDER BY created_at DESC LIMIT 5;
```

### 2. Cek File Terupload
```powershell
# Lihat file audio
ls c:\wamp64\www\musikk\uploads\audio

# Lihat cover album
ls c:\wamp64\www\musikk\assets\images\albums
```

### 3. Test di Browser
```
1. Buka: http://localhost/musikk/music
2. Cek apakah musik muncul di "Recently Uploaded"
3. Klik musik untuk test playback
4. Cek apakah audio berjalan dengan baik
```

---

## 🎨 Tampilan Musik di Website

### Section "Recently Uploaded"
- Menampilkan 20 musik terbaru yang diupload
- Diurutkan berdasarkan tanggal upload (terbaru di atas)
- Status harus "approved"

### Section "Popular Tracks"
- Menampilkan kombinasi musik dari tabel `songs` dan `music`
- Diurutkan berdasarkan jumlah play
- Maksimal 50 tracks

### Section "Trending Now"
- Menampilkan musik dari tabel songs yang paling banyak diputar
- Grid view dengan cover album

---

## 🛠️ Troubleshooting

### ❌ Musik Tidak Muncul di Website

**Penyebab 1: Status bukan "approved"**
```sql
-- Ubah status menjadi approved
UPDATE music SET status = 'approved' WHERE music_id = [ID_MUSIK];
```

**Penyebab 2: Database tidak terkoneksi**
- Cek `application/config/database.php`
- Pastikan WAMP/MySQL sudah running

**Penyebab 3: Folder view tidak ada**
```powershell
# Buat folder jika belum ada
New-Item -ItemType Directory -Path "c:\wamp64\www\musikk\application\views\music" -Force
```

### ❌ Audio Tidak Bisa Diputar

**Penyebab 1: File path salah**
```sql
-- Cek file_path di database
SELECT music_id, title, file_path FROM music WHERE music_id = [ID];
```

**Penyebab 2: File tidak ada**
- Cek apakah file benar-benar ada di folder `uploads/audio/`
- Pastikan permission folder bisa dibaca

**Penyebab 3: URL eksternal tidak valid**
- Test URL di browser apakah bisa diakses
- Pastikan URL direct link, bukan halaman download

### ❌ Cover Tidak Muncul

**Penyebab 1: Cover tidak diupload**
- Cover bersifat opsional
- Sistem akan otomatis generate avatar jika tidak ada cover

**Penyebab 2: Path salah**
```sql
-- Cek cover_image di database
SELECT music_id, title, cover_image FROM music WHERE music_id = [ID];
```

---

## 📊 Menampilkan Statistik

Setiap kali musik diputar:
1. Field `play_count` akan otomatis bertambah
2. Data tersimpan di database
3. Bisa dilihat di halaman Browse Music

---

## 🚀 Tips Optimasi

### 1. **Gunakan Cover Berkualitas**
- Minimal 500x500px
- Format: JPG atau PNG
- Ukuran < 2MB

### 2. **Compress Audio**
- Gunakan bitrate 192-320 kbps untuk MP3
- Atau gunakan URL eksternal untuk file besar

### 3. **Isi Data Lengkap**
- Judul, artis, album, genre
- Memudahkan pencarian dan filter

### 4. **Test Playback**
- Setelah upload, test langsung di halaman Browse Music
- Pastikan audio berjalan smooth

---

## 📱 Responsive Design

Halaman Browse Music sudah responsive dan bisa diakses dari:
- 💻 Desktop
- 📱 Mobile
- 📲 Tablet

---

## 🔗 Link Penting

- **Upload Musik:** `http://localhost/musikk/admin_music`
- **Browse Music:** `http://localhost/musikk/music`
- **Home:** `http://localhost/musikk`
- **Admin Dashboard:** `http://localhost/musikk/admin`

---

## 📞 Support

Jika ada masalah:
1. Cek log CodeIgniter: `application/logs/`
2. Cek browser console untuk JavaScript errors
3. Cek Network tab untuk API errors
4. Periksa database untuk data consistency

---

## ✅ Checklist Setelah Upload

- [ ] Musik muncul di halaman Browse Music
- [ ] Audio bisa diputar dengan baik
- [ ] Cover album tampil (jika diupload)
- [ ] Informasi musik lengkap (judul, artis, album, genre)
- [ ] Play count bertambah saat diputar
- [ ] Tombol favorite berfungsi (untuk user yang login)

---

**Selamat! Musik Anda sudah bisa dinikmati di website! 🎉🎵**
