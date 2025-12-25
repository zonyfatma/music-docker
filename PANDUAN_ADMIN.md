# 📋 Panduan Admin Dashboard - Musikk

## 🚀 Cara Membuat Akun Admin

### Langkah 1: Import Database (Urutan Penting!)

```sql
-- 1. Import database utama terlebih dahulu
-- File: database_auth_playlist.sql (atau database utama Anda)

-- 2. Import fitur admin
-- File: database_admin_features.sql

-- 3. Buat akun admin
-- File: create_admin_account.sql
```

### Langkah 2: Jalankan Script di phpMyAdmin

1. Buka **phpMyAdmin** di browser: `http://localhost/phpmyadmin`
2. Pilih database **musikk** (atau nama database Anda)
3. Klik tab **SQL**
4. Copy isi file `create_admin_account.sql` dan paste ke SQL editor
5. Klik **Go/Jalankan**

### Langkah 3: Login sebagai Admin

**URL Login:**

```
http://localhost/musikk/auth/login
```

**Kredensial Default:**

- **Username:** `admin`
- **Password:** `admin123`
- **Email:** `admin@musikk.com`

### Langkah 4: Akses Dashboard Admin

Setelah login, Anda akan otomatis diarahkan ke:

```
http://localhost/musikk/admin
```

Atau bisa akses langsung (setelah login):

```
http://localhost/musikk/admin/dashboard
```

---

## 🔐 Keamanan - PENTING!

### ⚠️ Ganti Password Default

**Segera ganti password setelah login pertama!**

Cara ganti password melalui database:

```php
<?php
// Buat file: change_admin_password.php di root folder musikk

// Masukkan password baru Anda
$new_password = 'PasswordBaruAnda123!';

// Generate hash
$hashed = password_hash($new_password, PASSWORD_DEFAULT);

echo "Hash password baru:\n";
echo $hashed;
echo "\n\nJalankan query SQL ini di phpMyAdmin:\n";
echo "UPDATE users SET password = '$hashed' WHERE username = 'admin';";
?>
```

Atau jalankan SQL langsung (ganti HASH_PASSWORD dengan hasil dari script PHP di atas):

```sql
UPDATE users
SET password = 'HASH_PASSWORD_BARU'
WHERE username = 'admin';
```

---

## 👥 Cara Membuat Admin Tambahan

### Opsi 1: Melalui Database

```sql
-- Ganti nilai sesuai kebutuhan
INSERT INTO `users` (`username`, `email`, `password`, `full_name`, `role_id`, `status`)
VALUES (
  'admin2',
  'admin2@musikk.com',
  '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',
  'Admin Kedua',
  1,
  'active'
);
```

### Opsi 2: Melalui Dashboard Admin

1. Login sebagai admin
2. Buka menu **Users** → **All Users**
3. Cari user yang ingin dijadikan admin
4. Klik **Edit**
5. Ubah **Role** menjadi **Admin**
6. Simpan

### Opsi 3: Registrasi Normal, Upgrade Manual

1. User registrasi normal melalui `/auth/register`
2. Admin login ke dashboard
3. Buka **Users** → cari user tersebut
4. Ubah role menjadi **Admin (role_id = 1)**

---

## 🎯 Fitur Dashboard Admin

### Menu Utama:

1. **Dashboard** - Statistik dan overview
2. **Users Management** - Kelola pengguna

   - Lihat semua user
   - Edit profile user
   - Blokir/Aktifkan user
   - Hapus user
   - Lihat aktivitas user

3. **Content Management**

   - **Music** - Kelola musik (approve/reject/delete)
   - **Podcasts** - Kelola podcast
   - **Playlists** - Kelola playlist

4. **Activity Logs** - Log semua aktivitas
5. **Notifications** - Notifikasi sistem
6. **Reports** - Laporan lengkap
7. **Settings** - Pengaturan sistem

### Role & Permissions:

| Role ID | Role Name | Akses                      |
| ------- | --------- | -------------------------- |
| 1       | Admin     | Full access ke semua fitur |
| 2       | Moderator | Manage content saja        |
| 3       | User      | Akses user biasa           |

---

## 🛡️ Perlindungan Admin Area

Semua halaman admin dilindungi dengan middleware yang mengecek:

1. ✅ User sudah login
2. ✅ User memiliki role_id = 1 (Admin)
3. ✅ Status user = 'active'

Jika tidak memenuhi, otomatis redirect ke login page.

---

## 📝 Troubleshooting

### Problem: "Access Denied" saat masuk /admin

**Solusi:**

```sql
-- Cek role user
SELECT u.username, u.role_id, ur.role_name
FROM users u
LEFT JOIN user_roles ur ON u.role_id = ur.role_id
WHERE u.username = 'admin';

-- Pastikan role_id = 1
UPDATE users SET role_id = 1 WHERE username = 'admin';
```

### Problem: Password salah terus

**Solusi:**
Reset password dengan hash baru:

```sql
-- Password: admin123
UPDATE users
SET password = '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'
WHERE username = 'admin';
```

### Problem: Redirect loop atau error 404

**Cek .htaccess dan routing:**

```php
// File: application/config/routes.php
$route['admin'] = 'admin/dashboard';
$route['admin/(:any)'] = 'admin/$1';
```

### Problem: Halaman admin tidak bisa diakses

**Cek file controller:**

```
File harus ada: application/controllers/Admin.php
```

---

## 🔄 Alur Login Admin

```
1. User buka: /auth/login
   ↓
2. Masukkan username/email + password
   ↓
3. System cek kredensial (User_model)
   ↓
4. System cek role_id (Admin_model)
   ↓
5. Jika role_id = 1 → Redirect ke /admin (Dashboard Admin)
   Jika role_id ≠ 1 → Redirect ke / (Home User Biasa)
```

---

## 📞 Support

Jika ada masalah, cek:

1. Log error PHP: `application/logs/`
2. Browser console (F12)
3. Database connection settings: `application/config/database.php`

---

**Dibuat pada:** 15 November 2025  
**Versi:** 1.0
