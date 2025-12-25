# Panduan Upload Musik - Admin Panel

## Akses Fitur Upload Musik

Setelah login sebagai admin, Anda akan menemukan menu **"Upload Musik"** di sidebar admin panel dengan ikon upload.

### Langkah-langkah:

1. **Login sebagai Admin**

   - Buka: `http://localhost/musikk/auth/login`
   - Login dengan akun admin Anda

2. **Akses Menu Upload Musik**

   - Di sidebar admin, klik menu **"Upload Musik"** (icon: fa-upload)
   - Atau akses langsung: `http://localhost/musikk/admin_music`

3. **Mengisi Formulir Upload**

   **Informasi Musik:**

   - **Judul Lagu** (wajib): Masukkan judul lagu
   - **Artis** (wajib): Nama artis/penyanyi
   - **Album** (opsional): Nama album
   - **Genre** (wajib): Pilih genre musik dari dropdown
   - **Cover Album** (opsional): Upload gambar cover (JPG/PNG/WEBP, max 5MB)

   **Sumber Audio (pilih salah satu):**

   a. **Upload File Audio**

   - Pilih file audio dari komputer Anda
   - Format: MP3, WAV, OGG, M4A
   - Ukuran maksimal: 50MB

   b. **URL Eksternal**

   - Masukkan URL langsung ke file audio
   - Contoh: `https://example.com/song.mp3`
   - Berguna untuk file audio yang sudah di-hosting di tempat lain

   c. **Gunakan Audio Demo**

   - Sistem akan menggunakan audio demo default
   - Cocok untuk testing

4. **Submit**
   - Klik tombol **"Upload Musik"**
   - Tunggu proses upload selesai
   - Anda akan melihat notifikasi sukses/error

## Setup Database

Pastikan tabel `music` sudah ada dengan menjalankan:

```sql
-- Jalankan file: setup_music_table.sql
```

Script ini akan:

- Membuat tabel `music` jika belum ada
- Menambahkan kolom yang diperlukan
- Menambahkan data demo jika tabel kosong

## Direktori Upload

Sistem secara otomatis membuat direktori berikut:

```
musikk/
├── uploads/
│   └── audio/          # File audio yang diupload
└── assets/
    └── images/
        └── albums/     # Cover album yang diupload
```

## Troubleshooting

### Menu Upload Musik Tidak Muncul

**Penyebab:**

- Belum login sebagai admin
- Role user bukan admin

**Solusi:**

1. Pastikan login dengan akun admin (role_id = 1)
2. Periksa session: `var_dump($this->session->userdata());`

### Error saat Upload

**"Failed to upload music"**

- Periksa permission folder `uploads/audio` dan `assets/images/albums`
- Folder harus writable (chmod 755 atau 777)

**"The filetype you are attempting to upload is not allowed"**

- File format tidak didukung
- Gunakan: MP3, WAV, OGG, M4A untuk audio
- Gunakan: JPG, PNG, WEBP untuk cover

**"The file you are attempting to upload is larger than the permitted size"**

- Audio file > 50MB
- Cover image > 5MB
- Compress file atau gunakan URL eksternal

### File Upload Tapi Tidak Muncul di Player

1. Periksa database apakah data tersimpan:

   ```sql
   SELECT * FROM music ORDER BY created_at DESC LIMIT 5;
   ```

2. Periksa apakah file benar-benar terupload:

   - Cek folder: `uploads/audio/`
   - Cek `file_path` di database

3. Periksa permission file (harus readable)

## Integrasi dengan Music Player

Musik yang diupload akan otomatis muncul di:

- Home page (jika status = 'approved')
- Music player queue
- Admin panel > Musik

Status musik:

- **approved**: Langsung tampil di website
- **pending**: Menunggu persetujuan
- **rejected**: Tidak ditampilkan

## Fitur Tambahan

### Menggunakan URL Eksternal

Jika file audio Anda sudah di-hosting di tempat lain (SoundCloud, Dropbox, dll):

1. Pilih opsi "URL Eksternal"
2. Paste URL direct link ke file audio
3. Pastikan URL bisa diakses publik
4. Contoh URL yang valid:
   - `https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3`
   - `https://example.com/path/to/song.mp3`

### Format Cover Album yang Direkomendasikan

- Resolusi minimal: 500x500px
- Resolusi optimal: 1000x1000px atau 3000x3000px
- Format: JPG atau PNG
- Ukuran file: < 2MB (untuk performa optimal)

## Keamanan

- Hanya user dengan role admin yang bisa upload musik
- File yang diupload di-encrypt namanya untuk keamanan
- Direktori upload dilindungi dengan index.html
- Validasi tipe file dan ukuran dilakukan server-side

## Catatan Penting

1. **Permissions Folder:**

   ```powershell
   # Windows (PowerShell)
   icacls "c:\wamp64\www\musikk\uploads" /grant Users:F /T
   icacls "c:\wamp64\www\musikk\assets\images\albums" /grant Users:F /T
   ```

2. **PHP Upload Settings:**
   Periksa `php.ini`:

   ```ini
   upload_max_filesize = 50M
   post_max_size = 50M
   max_execution_time = 300
   ```

3. **Testing:**
   - Test dengan file kecil dulu (< 5MB)
   - Test ketiga metode (upload, URL, demo)
   - Periksa apakah musik muncul di player

## Contact

Jika masih ada masalah, periksa:

- Log CodeIgniter: `application/logs/`
- Browser console untuk JavaScript errors
- Network tab untuk upload errors
