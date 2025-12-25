# 🎵 BeatBay Music Website - Solusi Masalah URL & Navigasi

## ⚡ LANGKAH CEPAT - MULAI DI SINI!

### 1. Akses Halaman Diagnostic
Buka browser dan akses:
```
http://localhost/musikk/test/info
```
atau jika tidak bisa:
```
http://localhost/musikk/index.php/test/info
```

Halaman ini akan menunjukkan:
- ✅ Status database
- ✅ Status mod_rewrite
- ✅ Base URL
- ✅ Test links semua halaman

---

### 2. Akses Halaman Test Navigation
```
http://localhost/musikk/test
```
atau
```
http://localhost/musikk/index.php/test
```

Halaman ini berisi tombol-tombol untuk test navigasi ke semua halaman.

---

## 🔧 FIX: Masalah URL Tidak Bisa Diakses

### Problem 1: URL /discover tidak bisa diakses (404 Error)

**PENYEBAB:** mod_rewrite Apache belum aktif

**SOLUSI A: Aktifkan mod_rewrite (RECOMMENDED)**

**Untuk WAMP:**
1. Klik icon WAMP di system tray (pojok kanan bawah)
2. Pilih **Apache** → **Apache Modules**
3. Centang **rewrite_module** (scroll untuk mencari)
4. Apache akan restart otomatis
5. Test lagi: http://localhost/musikk/discover

**Untuk XAMPP:**
1. Buka `xampp/apache/conf/httpd.conf`
2. Cari baris: `#LoadModule rewrite_module modules/mod_rewrite.so`
3. Hapus tanda `#` di depannya
4. Save dan restart Apache
5. Test lagi

**SOLUSI B: Gunakan URL dengan index.php (TEMPORARY)**

Jika mod_rewrite tidak bisa diaktifkan, gunakan URL:
```
http://localhost/musikk/index.php/discover
http://localhost/musikk/index.php/radio
http://localhost/musikk/index.php/albums
http://localhost/musikk/index.php/podcast
```

---

### Problem 2: Tombol di Sidebar Tidak Berfungsi

**STATUS:** ✅ SUDAH DIPERBAIKI

File `application/views/partials/sidebar.php` sudah diupdate dengan link yang benar:
- Home → `<?= base_url() ?>`
- Discover → `<?= base_url('discover') ?>`
- Radio → `<?= base_url('radio') ?>`
- Albums → `<?= base_url('albums') ?>`
- Podcast → `<?= base_url('podcast') ?>`

---

### Problem 3: Halaman Home Tidak Load

**SOLUSI:**
1. Pastikan database sudah diimport
2. Import file `database.sql` di phpMyAdmin
3. Restart Apache
4. Akses: http://localhost/musikk

---

## 📋 CHECKLIST SETUP

### ✅ Checklist Sebelum Testing:

- [ ] **WAMP/XAMPP sudah running**
  - Ikon hijau di taskbar
  - Apache dan MySQL aktif

- [ ] **Database sudah diimport**
  - Buka phpMyAdmin: http://localhost/phpmyadmin
  - Import file `database.sql`
  - Database `musikk` harus ada

- [ ] **mod_rewrite sudah aktif**
  - Test dengan akses http://localhost/musikk/test/info
  - Lihat status mod_rewrite

- [ ] **File .htaccess ada**
  - Lokasi: `c:\wamp64\www\musikk\.htaccess`
  - Jika tidak ada, sudah dibuat otomatis

---

## 🧪 TESTING STEP BY STEP

### Step 1: Test System Info
```
http://localhost/musikk/test/info
```
Periksa:
- Database Connected? ✅
- mod_rewrite enabled? ✅

### Step 2: Test Navigation Page
```
http://localhost/musikk/test
```
Klik semua tombol untuk test

### Step 3: Test Halaman Langsung

**Tanpa index.php (Jika mod_rewrite aktif):**
```
http://localhost/musikk
http://localhost/musikk/discover
http://localhost/musikk/radio
http://localhost/musikk/albums
http://localhost/musikk/podcast
```

**Dengan index.php (Jika mod_rewrite tidak aktif):**
```
http://localhost/musikk/index.php
http://localhost/musikk/index.php/discover
http://localhost/musikk/index.php/radio
http://localhost/musikk/index.php/albums
http://localhost/musikk/index.php/podcast
```

### Step 4: Test Navigation dari Sidebar

1. Buka halaman Home
2. Klik menu **Discover** di sidebar
3. Harus masuk ke halaman Discover
4. Test semua menu lainnya

---

## 🎯 URL REFERENCE TABLE

| Halaman | URL (Clean) | URL (Fallback) | Status |
|---------|-------------|----------------|--------|
| Test Info | /test/info | /index.php/test/info | ✅ Ready |
| Test Nav | /test | /index.php/test | ✅ Ready |
| Home | / | /index.php/ | ✅ Ready |
| Discover | /discover | /index.php/discover | ✅ Ready |
| Radio | /radio | /index.php/radio | ✅ Ready |
| Albums | /albums | /index.php/albums | ✅ Ready |
| Podcast | /podcast | /index.php/podcast | ✅ Ready |

---

## 🚨 TROUBLESHOOTING

### Error: 404 Page Not Found

**Diagnosa:**
1. Akses: http://localhost/musikk/test/info
2. Lihat status mod_rewrite

**Jika mod_rewrite OFF:**
- Aktifkan mod_rewrite (lihat instruksi di atas)
- Atau gunakan URL dengan `/index.php/`

**Jika mod_rewrite ON tapi tetap 404:**
- Restart Apache sepenuhnya
- Clear browser cache (Ctrl + Shift + Delete)
- Cek file .htaccess ada di root folder

### Error: 500 Internal Server Error

**Penyebab:** Biasanya masalah .htaccess

**Solusi:**
1. Rename .htaccess menjadi .htaccess.bak
2. Reload page
3. Jika berfungsi, berarti Apache tidak support .htaccess
4. Gunakan URL dengan index.php

### Error: Database Connection Failed

**Solusi:**
1. Cek MySQL sudah running
2. Import database.sql ke phpMyAdmin
3. Edit `application/config/database.php`:
   ```php
   'username' => 'root',
   'password' => '', // password MySQL Anda
   'database' => 'musikk',
   ```

### Menu Sidebar Tidak Klik

**Solusi:**
1. File sudah diperbaiki di `application/views/partials/sidebar.php`
2. Clear browser cache
3. Reload page (Ctrl + F5)

---

## 📞 BANTUAN CEPAT

### Tidak bisa akses halaman sama sekali?

**Test ini:**
```
http://localhost/musikk
```
Jika bisa → Database issue
Jika tidak bisa → Apache/WAMP issue

### Discover/Radio/Albums/Podcast 404?

**Pilih salah satu:**

**Opsi 1: Fix mod_rewrite (BEST)**
1. Aktifkan rewrite_module di Apache
2. Restart
3. Test: http://localhost/musikk/discover

**Opsi 2: Gunakan index.php (QUICK)**
1. Akses: http://localhost/musikk/index.php/discover
2. Works? Berarti mod_rewrite perlu diaktifkan

---

## ✅ VERIFIKASI BERHASIL

Semua halaman berhasil jika:

1. ✅ http://localhost/musikk/test/info → Tampil halaman info
2. ✅ http://localhost/musikk/test → Tampil halaman test
3. ✅ http://localhost/musikk → Tampil home page Ed Sheeran
4. ✅ http://localhost/musikk/discover → Tampil discover page
5. ✅ http://localhost/musikk/radio → Tampil radio page
6. ✅ http://localhost/musikk/albums → Tampil albums page
7. ✅ http://localhost/musikk/podcast → Tampil podcast page
8. ✅ Klik menu sidebar → Pindah halaman dengan benar

---

## 📝 NOTES PENTING

1. **Selalu mulai dari halaman test** untuk diagnostic
2. **mod_rewrite sangat direkomendasikan** untuk clean URL
3. **Gunakan index.php sebagai fallback** jika mod_rewrite tidak bisa
4. **Clear cache** jika ada masalah CSS/JS tidak load
5. **Restart Apache** setelah perubahan konfigurasi

---

## 🎊 SELESAI!

Jika semua step di atas sudah dilakukan:
- ✅ mod_rewrite aktif
- ✅ Database terkoneksi
- ✅ Semua halaman bisa diakses
- ✅ Menu sidebar berfungsi

**Website BeatBay Anda siap digunakan! 🎵**

Baca file `GUIDE.md` untuk panduan fitur lengkap.
