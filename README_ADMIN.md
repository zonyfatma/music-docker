# 🎵 MUSIKK - Admin Quick Start Guide

## 📦 Langkah Cepat Setup Admin

### 1️⃣ Import Database (Urutan PENTING!)

Buka **phpMyAdmin** dan jalankan file SQL ini **sesuai urutan**:

```
1. database_auth_playlist.sql      (Database utama)
2. database_admin_features.sql      (Fitur admin)
3. create_admin_account.sql         (Akun admin)
```

### 2️⃣ Login Admin

**URL Login:**

```
http://localhost/musikk/auth/login
```

**Kredensial:**

- Username: `admin`
- Password: `admin123`

### 3️⃣ Akses Dashboard

Setelah login, otomatis redirect ke:

```
http://localhost/musikk/admin
```

---

## 🔐 Ganti Password Admin

### Cara 1: Menggunakan Tool Generator

Buka di browser:

```
http://localhost/musikk/generate_password.php
```

1. Masukkan username: `admin`
2. Masukkan password baru
3. Klik "Generate Hash"
4. Copy SQL query yang muncul
5. Jalankan di phpMyAdmin

**⚠️ HAPUS file `generate_password.php` setelah selesai!**

### Cara 2: Manual via SQL

```sql
-- Ganti PASSWORD_HASH dengan hasil dari generate_password.php
UPDATE users
SET password = 'PASSWORD_HASH'
WHERE username = 'admin';
```

---

## 👥 Struktur Role

| Role ID | Role Name | Akses                     |
| ------- | --------- | ------------------------- |
| 1       | Admin     | Full akses dashboard      |
| 2       | Moderator | Manage content saja       |
| 3       | User      | User biasa (no dashboard) |

---

## 📋 Fitur Dashboard Admin

✅ **Dashboard** - Statistik lengkap  
✅ **Users** - Kelola semua user  
✅ **Music** - Approve/reject musik  
✅ **Podcasts** - Kelola podcast  
✅ **Playlists** - Kelola playlist  
✅ **Activity Logs** - Log aktivitas  
✅ **Notifications** - Notifikasi sistem  
✅ **Reports** - Laporan detail  
✅ **Settings** - Pengaturan sistem

---

## 🚨 Troubleshooting

### Error: "Access Denied"

```sql
-- Pastikan user adalah admin
UPDATE users SET role_id = 1 WHERE username = 'admin';
```

### Error: "Unknown column 'users.user_id'"

Sudah diperbaiki! Tapi jika masih error:

```sql
-- Cek struktur tabel
DESCRIBE users;
-- Primary key harus 'id', bukan 'user_id'
```

### Error: Password tidak bisa login

```sql
-- Reset password ke admin123
UPDATE users
SET password = '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'
WHERE username = 'admin';
```

---

## 📁 File Penting

| File                                 | Fungsi              |
| ------------------------------------ | ------------------- |
| `create_admin_account.sql`           | Buat akun admin     |
| `generate_password.php`              | Tool ganti password |
| `PANDUAN_ADMIN.md`                   | Dokumentasi lengkap |
| `application/controllers/Admin.php`  | Controller admin    |
| `application/models/Admin_model.php` | Model admin         |

---

## ⚠️ Keamanan

- [ ] Ganti password default `admin123`
- [ ] Hapus file `generate_password.php` setelah digunakan
- [ ] Gunakan password minimal 12 karakter
- [ ] Jangan share kredensial admin

---

## 📞 Need Help?

Baca dokumentasi lengkap: `PANDUAN_ADMIN.md`

---

**Last Updated:** 15 November 2025
