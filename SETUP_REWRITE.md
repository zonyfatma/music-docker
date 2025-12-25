# Panduan Mengaktifkan mod_rewrite di WAMP

## Langkah 1: Aktifkan mod_rewrite

1. Klik icon WAMP di system tray (taskbar)
2. Pilih **Apache** → **Apache Modules**
3. Cari dan centang **rewrite_module**
4. Apache akan restart otomatis

## Langkah 2: Verifikasi .htaccess

File `.htaccess` sudah dibuat di root folder (`c:\wamp64\www\musikk\.htaccess`)

Isi file:
```
RewriteEngine On
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^(.*)$ index.php/$1 [L]
```

## Langkah 3: Pastikan AllowOverride

1. Buka file: `c:\wamp64\bin\apache\apache2.x.x\conf\httpd.conf`
2. Cari baris yang mengandung `AllowOverride None`
3. Ganti menjadi `AllowOverride All`
4. Save dan restart Apache

## Langkah 4: Test URL

Setelah mod_rewrite aktif, Anda bisa akses:

✅ **Tanpa index.php:**
- http://localhost/musikk
- http://localhost/musikk/discover
- http://localhost/musikk/radio
- http://localhost/musikk/albums
- http://localhost/musikk/podcast

❌ **JANGAN pakai index.php lagi:**
- ~~http://localhost/musikk/index.php/discover~~ (old way)

## Troubleshooting

### Jika masih 404:

1. **Restart WAMP** sepenuhnya (Stop All Services → Start All Services)

2. **Cek di browser:**
   ```
   http://localhost/musikk
   ```
   Jika berhasil, lanjut ke:
   ```
   http://localhost/musikk/discover
   ```

3. **Jika tetap tidak bisa**, gunakan URL dengan index.php:
   ```
   http://localhost/musikk/index.php/discover
   http://localhost/musikk/index.php/radio
   http://localhost/musikk/index.php/albums
   http://localhost/musikk/index.php/podcast
   ```

### Error 500 - Internal Server Error

Ini biasanya karena masalah .htaccess atau mod_rewrite belum aktif.

1. Cek Apache Error Log:
   - Klik WAMP icon → Apache → Apache error.log
   
2. Pastikan mod_rewrite sudah dicentang

3. Restart Apache

## Testing Navigation

Setelah setup selesai, test dengan klik menu di sidebar:

1. **Home** → http://localhost/musikk
2. **Discover** → http://localhost/musikk/discover
3. **Radio** → http://localhost/musikk/radio
4. **Albums** → http://localhost/musikk/albums
5. **Podcast** → http://localhost/musikk/podcast

Semua link harus berfungsi dengan baik!

## Alternatif: Jika mod_rewrite Tidak Bisa Diaktifkan

Edit semua link di `application/views/partials/sidebar.php`:

Dari:
```php
<a href="<?= base_url('discover') ?>" class="nav-item">
```

Menjadi:
```php
<a href="<?= base_url('index.php/discover') ?>" class="nav-item">
```

Tapi cara ini TIDAK DIREKOMENDASIKAN. Lebih baik aktifkan mod_rewrite.
