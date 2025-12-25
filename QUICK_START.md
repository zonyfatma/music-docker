# 🚀 QUICK START - BeatBay Music Website

## 📍 Langkah Cepat Testing

### 1️⃣ Test Halaman Navigation (MULAI DARI SINI!)

Akses halaman test terlebih dahulu:
```
http://localhost/musikk/test
```
atau
```
http://localhost/musikk/index.php/test
```

Halaman ini akan menampilkan semua link yang bisa diklik untuk test navigasi.

---

### 2️⃣ Aktifkan mod_rewrite (PENTING!)

**Untuk WAMP:**
1. Klik icon WAMP di taskbar
2. Apache → Apache Modules → centang **rewrite_module**
3. Restart Apache

**Untuk XAMPP:**
1. Sudah aktif secara default
2. Jika belum, edit httpd.conf dan uncomment `LoadModule rewrite_module`

---

### 3️⃣ Test URL Langsung

Setelah mod_rewrite aktif, test URL berikut:

✅ **Home:**
```
http://localhost/musikk
```

✅ **Discover:**
```
http://localhost/musikk/discover
```

✅ **Radio:**
```
http://localhost/musikk/radio
```

✅ **Albums:**
```
http://localhost/musikk/albums
```

✅ **Podcast:**
```
http://localhost/musikk/podcast
```

---

## 🔧 Troubleshooting

### Jika Muncul 404 Not Found:

**Solusi 1: Gunakan index.php (Temporary)**
```
http://localhost/musikk/index.php/discover
http://localhost/musikk/index.php/radio
http://localhost/musikk/index.php/albums
http://localhost/musikk/index.php/podcast
```

**Solusi 2: Cek mod_rewrite**
1. Buka http://localhost/musikk/test
2. Klik link untuk test
3. Jika 404, mod_rewrite belum aktif

**Solusi 3: Restart WAMP**
1. Klik WAMP icon
2. Stop All Services
3. Start All Services
4. Test lagi

**Solusi 4: Cek .htaccess**
Pastikan file `.htaccess` ada di folder `c:\wamp64\www\musikk\`

Isi file:
```
RewriteEngine On
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^(.*)$ index.php/$1 [L]
```

---

## ✅ Checklist Testing

Setelah setup, test semua fitur:

### Navigasi Sidebar
- [ ] Klik **Home** - harus ke homepage
- [ ] Klik **Discover** - harus ke /discover
- [ ] Klik **Radio** - harus ke /radio
- [ ] Klik **Albums** - harus ke /albums
- [ ] Klik **Podcast** - harus ke /podcast

### Home Page
- [ ] Lihat artist Ed Sheeran
- [ ] Scroll albums
- [ ] Lihat popular songs
- [ ] Check sidebar kanan

### Discover Page
- [ ] Lihat 8 genre categories (colorful)
- [ ] New releases section
- [ ] Featured albums
- [ ] Trending songs dengan ranking

### Radio Page
- [ ] Featured stations dengan live badge
- [ ] Genre radio cards
- [ ] Artist radio
- [ ] Check listener count

### Albums Page
- [ ] New releases dengan "NEW" badge
- [ ] Popular albums
- [ ] Filter buttons
- [ ] Check trending badge

### Podcast Page
- [ ] Featured podcasts
- [ ] Categories
- [ ] Popular episodes
- [ ] Subscriptions

---

## 📞 Bantuan Cepat

### URL Tidak Bekerja?
1. Akses: http://localhost/musikk/test
2. Test dari sana

### Menu Sidebar Tidak Klik?
- Pastikan di `partials/sidebar.php` semua link sudah benar
- Link harus: `href="<?= base_url('discover') ?>"`

### Error Database?
1. Import file `database.sql` ke phpMyAdmin
2. Atau import `database_update.sql` untuk data tambahan

### Error 500?
- Cek Apache error log
- Pastikan semua file PHP tidak ada syntax error

---

## 🎯 URL Reference

| Halaman | URL Tanpa mod_rewrite | URL Dengan mod_rewrite |
|---------|----------------------|------------------------|
| Test    | /index.php/test      | /test                 |
| Home    | /index.php/          | /                     |
| Discover| /index.php/discover  | /discover             |
| Radio   | /index.php/radio     | /radio                |
| Albums  | /index.php/albums    | /albums               |
| Podcast | /index.php/podcast   | /podcast              |

---

## ✨ Tips

1. **Selalu mulai dari halaman test** untuk memastikan semua berfungsi
2. **Gunakan browser developer tools** (F12) untuk check console errors
3. **Clear browser cache** jika CSS tidak muncul
4. **Restart Apache** setiap kali edit .htaccess

**Good luck! 🎵**
