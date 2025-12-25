## 🔍 Troubleshooting 404 Error - Admin Dashboard

### Problem: 404 Page Not Found saat akses `/admin`

---

## ✅ Solusi Cepat

### 1️⃣ **Cek mod_rewrite Apache**

Pastikan mod_rewrite sudah aktif di Apache:

1. Buka file: `C:\wamp64\bin\apache\apache2.x.x\conf\httpd.conf`
2. Cari baris: `#LoadModule rewrite_module modules/mod_rewrite.so`
3. Hapus tanda `#` di depannya menjadi:
   ```apache
   LoadModule rewrite_module modules/mod_rewrite.so
   ```
4. **Restart Apache** (klik icon WAMP → Apache → Restart Services)

### 2️⃣ **Cek AllowOverride**

Di file yang sama (`httpd.conf`), cari:

```apache
<Directory "c:/wamp64/www/">
    Options Indexes FollowSymLinks
    AllowOverride None
    Require all granted
</Directory>
```

Ubah `AllowOverride None` menjadi `AllowOverride All`:

```apache
<Directory "c:/wamp64/www/">
    Options Indexes FollowSymLinks
    AllowOverride All
    Require all granted
</Directory>
```

**Restart Apache lagi!**

### 3️⃣ **Test dengan index.php**

Jika masih error, coba akses dengan menambahkan `index.php`:

```
http://localhost/musikk/index.php/admin
```

Jika ini berhasil, berarti masalah ada di mod_rewrite.

### 4️⃣ **Verifikasi File Exists**

Jalankan test file untuk memastikan semua file ada:

```
http://localhost/musikk/test_admin.php
```

File ini akan menampilkan:

- ✅ Apakah controller Admin.php exists
- ✅ Status session
- ✅ Test link berbagai URL
- ✅ Status mod_rewrite

---

## 🛠️ Alternatif Solusi

### Opsi A: Aktifkan mod_rewrite via WAMP Menu

1. Klik icon **WAMP** di system tray
2. Pilih **Apache** → **Apache Modules**
3. Centang **rewrite_module**
4. WAMP akan restart otomatis

### Opsi B: Gunakan index.php di URL

Jika mod_rewrite tidak bisa diaktifkan, edit `config.php`:

**File:** `application/config/config.php`

Ubah:

```php
$config['index_page'] = '';
```

Menjadi:

```php
$config['index_page'] = 'index.php';
```

Maka URL akan menjadi:

```
http://localhost/musikk/index.php/admin
```

### Opsi C: Update .htaccess

Ganti isi file `.htaccess` di root dengan:

```apache
<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteBase /musikk/

    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteRule ^(.*)$ index.php?/$1 [L,QSA]
</IfModule>
```

---

## 🔄 Checklist Debugging

- [ ] Apache mod_rewrite enabled
- [ ] AllowOverride All di httpd.conf
- [ ] Apache sudah di-restart
- [ ] File `.htaccess` ada di root folder
- [ ] File `Admin.php` ada di `application/controllers/`
- [ ] Session sudah login sebagai admin (role_id = 1)
- [ ] Base URL di `config.php` sudah benar: `http://localhost/musikk/`

---

## 📝 Test URLs

Coba akses satu per satu:

1. ✅ **http://localhost/musikk/** (Homepage - harus jalan)
2. ✅ **http://localhost/musikk/test_admin.php** (Test file)
3. ✅ **http://localhost/musikk/index.php/admin** (Dengan index.php)
4. ✅ **http://localhost/musikk/admin** (Tanpa index.php)

Jika #3 jalan tapi #4 tidak = Masalah di mod_rewrite
Jika #3 juga tidak jalan = Masalah di controller atau session

---

## 🆘 Still Not Working?

### Cek Error Log

1. Buka: `C:\wamp64\logs\apache_error.log`
2. Lihat error terbaru
3. Atau cek: `application/logs/` (jika ada)

### Enable Error Display

Edit `index.php` di root folder, ubah:

```php
define('ENVIRONMENT', isset($_SERVER['CI_ENV']) ? $_SERVER['CI_ENV'] : 'production');
```

Menjadi:

```php
define('ENVIRONMENT', 'development');
```

Ini akan menampilkan error detail.

---

## ✅ Quick Fix Commands

Buka PowerShell sebagai Administrator dan jalankan:

```powershell
# Stop Apache
net stop wampapache64

# Edit httpd.conf (buka dengan notepad)
notepad C:\wamp64\bin\apache\apache2.4.54\conf\httpd.conf

# Setelah edit, start Apache
net start wampapache64
```

_Note: Ganti `apache2.4.54` dengan versi Apache Anda_

---

**Setelah menerapkan salah satu solusi di atas, coba login lagi dan akses `/admin`**
